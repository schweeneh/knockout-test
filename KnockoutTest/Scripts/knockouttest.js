$(function () {

// Testing knockout 

// Test ViewModel   

myViewModel = function () {
    this.listbox = ko.observableArray();
    this.dropdown = ko.observable();
    this.textbox = ko.observable();
    this.checkbox = ko.observable();
    this.radioButton = ko.observable();

    this.sendToServer = function () {
        var dataToSend = ko.toJSON(this);

        $.ajax({
            type: "POST",
            url: "KnockoutTest.aspx/SendData",
            dataType: "json",
            contentType: 'application/json',
            data: '{ data: ' + dataToSend + '}'
        }).done(function (fromserver) {
            alert(fromserver.d);
        });
    }
}



    ko.applyBindings(new myViewModel);
});