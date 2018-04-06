  var conf = {
    apiKey: "AIzaSyAEkEY4NdUEDpV7bzl1XbpIU7mODGWkECU",
    authDomain: "codereg-3ae08.firebaseapp.com",
    databaseURL: "https://codereg-3ae08.firebaseio.com",
    projectId: "codereg-3ae08",
    storageBucket: "codereg-3ae08.appspot.com",
    messagingSenderId: "960670048303"
  };

		firebase.initializeApp(conf);
 	
var final=0;
function lout(){
		var url=window.location.href;
 	var queryStart = url.indexOf("=") + 1;
    var queryEnd   = url.length + 1;
    var key = url.slice(queryStart, queryEnd - 1);
    var tme=$("#timein").val();
    var noq= $("#don").val();
    var posData={	
   			noofques: $("#don").val(),
   			time: $("#timein").val()
    };
    alert("CALL THE COORDINATORS AND MAKE SURE TO TAKE THE SCORES \nNO of Ques solved:"+noq+"\nTime:"+tme);	
   	firebase.database().ref('/D-BUGGING/' + key).update(posData);	
   		alert("done going");
	$.get('Logout',function(){
		window.location.assign("Register.jsp");
	});
	}
	function final(){
		$.get('FinalAnswer.txt', function(data) {
			var last=$("#Final").val().toLowerCase();
				if(last==data){
					alert("Congrats!Its completed.");
					lout();
				}
				else{
					final=final+1;
					if(final==3){
						lout();
					}
					else{
						alert("Answer is wrong... for hint call coordinators!");
					}
				}
		});
	}