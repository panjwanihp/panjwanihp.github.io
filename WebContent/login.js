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

function gotData(data){
					var codes = data.val();
					var keys =	Object.keys(codes);
					for(var i=0;i<keys.length;i++){
						var k=keys[i];
						if(codes[k].teamid==$("#tid").val() && codes[k].password==$("#pswrd").val()){
							$.get("debug",function(){
								window.location.assign("Rules.jsp");
							});
							
						}
						else{
							$("#message").text("Invalid Team ID or Phone_no");
						}
					}
				}
				function errData(err){
					$("#message").text("*Some Internal problem call cordinators");
				
				}
function log(){

var ref=database.ref('codes');
ref.once('value', gotData, errData);
console.log(" this");
}