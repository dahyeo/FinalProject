var stompClient = null;

function setConnected(connected) {
    $("#connect").prop("disabled", connected);
    $("#disconnect").prop("disabled", !connected);
    $("#send").prop("disabled", !connected);
    if (connected) {
        $("#conversation").show();
    }
    else {
        $("#conversation").hide();
    }
    $("#msg").html("");
}

function connect() {
    var socket = new SockJS('/ws');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
        setConnected(true);
        console.log('Connected: ' + frame);
        stompClient.subscribe('/topic/public', function (message) {
            //showMessage(message.body); //서버에 메시지 전달 후 리턴받는 메시지_받은 메세지
            showMessage("💸인스타 후기 작성 시 영업일 기준 5일 이내에 지급되며, 🏅 후기왕 포인트는 매주 월요일날 일괄 지급됩니다🙏🏻");
        });
    });
}

function disconnect() {
    if (stompClient !== null) {
        stompClient.disconnect();
    }
    setConnected(false);
    console.log("Disconnected");
}

function sendMessage() {
    let message = $("#msg").val()
    showMessage("💰" + message); //보낸 메세지

    stompClient.send("/app/sendMessage", {}, JSON.stringify(message)); //서버에 보낼 메시지
}

function showMessage(message) {
    $("#communicate").append("<tr><td><img src='/image/dog.jpeg' style='width:80px; height:80px; border-radius:100px;'>" + message + "</td></tr>");
}

$(function () {
    $("form").on('submit', function (e) {
        e.preventDefault();
    });
    $( "#connect" ).click(function() { connect(); });
    $( "#disconnect" ).click(function() { disconnect(); });
    $( "#send" ).click(function() { sendMessage(); });
});