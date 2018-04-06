$(document).ready(function () {

    $(".ans1").css('visibility', 'visible');
    //timer
    var boost = 1;
    var time = setInterval(increase, 1000),
        count = 0;
   
    $("#timer").css('color', '#f07c22');

    function increase() {
        count = count + 1;
        if (count >= 3601) {
            alert("Times up");
        }
		$("#timein").val(count);
        min = Math.floor(count / 60);
        sec = count % 60;
        if (min < 10) {
            document.getElementById("timer").innerHTML = "0" + min + ":" + sec;
        } else if (min < 10 && sec < 10) {
            document.getElementById("timer").innerHTML = "0" + min + ":0" + sec;
        } else if (sec < 10) {
            document.getElementById("timer").innerHTML = min + ":0" + sec;
        } else {
            document.getElementById("timer").innerHTML = min + ":" + sec;
        }
        return;

    }
});
