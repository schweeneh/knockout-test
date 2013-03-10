// Testing knockout 

// Test ViewModel   
myViewModel = function () {
    this.listbox = ko.observableArray();
    this.dropdown = ko.observable();
    this.textbox = ko.observable();
    this.checkbox = ko.observable();
    this.radioButton = ko.observable();
}


$(function () {
    ko.applyBindings(new myViewModel);
});