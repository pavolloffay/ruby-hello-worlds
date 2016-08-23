
App.notifications = App.cable.subscriptions.create('NotifyChannel', {
    received: function(data) {
        console.log("received")
        $('#notifications').append("<p>" + data['message'] + "</p>")
    }})
