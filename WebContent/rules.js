var config = {
   				  	apiKey: "AIzaSyBai99CDIoddznwDkpC36__aH7D9KnF-X8",
   				   	authDomain: "codegenerator-54012.firebaseapp.com",
   				   	databaseURL: "https://codegenerator-54012.firebaseio.com",
   				   	projectId: "codegenerator-54012",
   				   	storageBucket: "codegenerator-54012.appspot.com",
   				  	messagingSenderId: "406750613853"
   				};

   				firebase.initializeApp(config);

   				var database=firebase.database();
function setteamid(){

	var url=window.location.href;
 	var queryStart = url.indexOf("=") + 1;
 	var	queryand=url.indexOf("&")+1;
    var queryEnd   = url.length + 1;
    var teamid = url.slice(queryStart, queryand - 1);
    var querysec = url.slice(queryand, queryEnd - 1);
   	var keystart = querysec.indexOf("=")+1;
    var keyEnd= querysec.length+1;
    var key=querysec.slice(keystart,keyEnd-1);
    try{
	firebase.database().ref('/D-BUGGING/'+key).once("value").then(function(snapshot){
   										if(snapshot.child("attendence").val()==false){
   											$("#teamid").val(key);
   				  						firebase.database().ref('/D-BUGGING/'+key).update({attendence : true});
   										}
   										else{
   											console.log("from here");
   											window.location.assign("Register.jsp");
   										}
   		});
   }
   catch(error){
   		console.log(error);
   }
 }
