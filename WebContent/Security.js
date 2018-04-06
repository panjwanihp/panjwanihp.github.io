var disqualify=1;
$(document).keydown(function(e){
	if(e.which === 123 || e.which === 122 || e.which === 17  || e.which === 18 || e.which === 116 || e.which === 117 || e.which === 16 ){
    	if(disqualify<3){
    		alert("YOU WIL BE DISQUALIFY \n CHANCES LEFT:"+(3-disqualify));
    	}
    	else{
    	$.get("Logout",function(){
    		window.location.assign("Register.jsp");
    	});
    	}
    }
});

document.addEventListener('contextmenu', event => event.preventDefault());

