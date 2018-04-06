       	var boost=1 ;
        var done=[];
        var don=0;
        var final=0;
        var disqualify=1;
       
     $(function(){
        	$("body").css("background-image", "url(img/" + boost + ".jpg)");
        	 $(".jumbotron").load("Questions/"+boost+".txt");	
             $("#quesno").val(boost);
             $(".ans" + boost).css('visibility', 'visible');
        });
     function change(event) {
           var x = event.which || event.keyCode;
           if (x == 38) {
            	$(".ans" + boost).css('visibility', 'hidden');
                boost = boost + 1;
                if (boost == 11) {
                    boost = 1;
                }
                $("body").css("background-image", "url(img/" + boost + ".jpg)");
                $(".ans" + boost).css('visibility', 'visible');
            }
            if (x == 40) {
            	$(".ans" + boost).css('visibility', 'hidden');
                boost = boost - 1;
                if (boost == 0) {
                    boost = 10;
                }
                $("body").css("background-image", "url(img/" + boost + ".jpg)");
                $(".ans" + boost).css('visibility', 'visible');
            }
            $(".jumbotron").load("Questions/"+boost+".txt");	
            $("#quesno").val(boost);
        }
        
        function showme(){
        	$.get("EncryptedAnswer/"+boost+".txt", function(data, status){
                alert("Data:" + data + "\nStatus: " + status);
            });
    	}

		var aTags = document.querySelectorAll('span[data-href]');

        for (var i = 0; i < aTags.length; i++) {
            var aTag = aTags[i];
            aTag.addEventListener('click', function(e) {
                var ele = e.target;
                window.location.replace(ele.getAttribute('data-href'));
            });
        }
        
    
        $(document).keydown(function(e){
        if(e.which === 123 || e.which === 122 || e.which === 17  || e.which === 18 || e.which === 116 || e.which === 117 || e.which === 16){
     		if(disqualify==3){
     			alert("Disqualifed");
     			$.get('Logout',function(){
					window.location.assign("Register.jsp");
				});
     		}
     		else{
     			alert("You will Disqualify \n you are left with "+(3-disqualify)+"Chances");
     			disqualify=disqualify+1;
     		}
     		return false;     
        }     
    	});
    
    	document.addEventListener('contextmenu', event => event.preventDefault());
    
    
    	$("#getAnswer").click(function(){
   		var qsno=$("#quesno").val();
   		if(done.indexOf(qsno) == -1){
			$.get('EncryptedAnswer/'+qsno+'.txt', function(data) { 
    			var encde=$("#encode").val();
    				var de_cod="";
			 		if(encde==data) {
            			var len,a;
            			var ch="";
            			encde=encde.toLowerCase();
            			len=encde.length;
            			for(a=0;a<len;a++){
            				if(encde.charAt(a)!=' '){
            		            ch=ch.concat(encde.charAt(a)+"");
                        	}
                        	else{	
                        		var en=parseInt(ch);
        						var de_msg;
        							if(en!=0) {
    									de_msg=String.fromCharCode(((Math.floor(en/10)-1)*5+(en%10))+96);
        							}
        							else {
        								de_msg='z';
        							}
                                	de_cod=de_cod.concat(de_msg+"");
                                	ch="";
                        	}
            			}
            			$(".mques").html(function(i, origText){
        					return de_cod+" "+origText;
    					});
              			alert("Question updated");
			  			done.push(qsno);
			  			don++;
			  			$("#don").val(don);
    				}
    				else{
    					alert("not appropriate answer for this question pls check again");
    				}
        	});
		}else{
			alert("already solved");
		}
	}); 