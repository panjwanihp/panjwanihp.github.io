  var config = {
    apiKey: "AIzaSyAEkEY4NdUEDpV7bzl1XbpIU7mODGWkECU",
    authDomain: "codereg-3ae08.firebaseapp.com",
    databaseURL: "https://codereg-3ae08.firebaseio.com",
    projectId: "codereg-3ae08",
    storageBucket: "codereg-3ae08.appspot.com",
    messagingSenderId: "960670048303"
  };

   				firebase.initializeApp(config);

   				var database=firebase.database();
   

   				function gotData(data){
   					var codes = data.val();
   					var flag=0;
   							var keys =	Object.keys(codes);
   							for(var i=0;i<keys.length;i++){
   								var k=keys[i];
  								
 								if(((codes[k].teamid).toLowerCase())==(($("#tid").val()).toLowerCase()) && ((codes[k].number).toLowerCase())==(($("#phone").val()).toLowerCase()) ){
   									firebase.database().ref('/D-BUGGING/' + k).once("value").then(function(snapshot){
   										if(snapshot.hasChild("attendence") && snapshot.child("attendence").val()==true){
   											$("#message").text("Already Registered!");
   											flag=0;
   										} 
   										else{
   										var postData={	
   					   						player_name: $("#p1name").val(),	
   					   						player2_Name: $("#p2name").val(),
   					   						attendence : true					   						
   										}	
   				  						firebase.database().ref('/D-BUGGING/' + k).update(postData);
   					   					$("#message").text("Registered Successfully!");	
   					   				
   					   					$.get("debug",{key:k},function(){//$.get("debug",{name:'te'},function(callbackData)) // in servlet : request.getParameter("name") ------Note requst object must be inside doGet method
   					   						var url="Rules.jsp?teamid="+codes[k].teamid+"&key="+k;
											window.location.assign(url);
										});	  			  					  			
   									}});
   									break;
   								}
   								if(i+1==keys.length){
   									flag=1;
   								}
   								
   							}
   							if(flag==1){
   									$("#message").text("Invalid Team ID or Phone_no");
   								}
   				}
   				function errData(){}
   				
   				 
   				
   				function submitdata(){
   				var ref=database.ref('D-BUGGING');
   					ref.once('value',gotData,errData);
 				}
 				