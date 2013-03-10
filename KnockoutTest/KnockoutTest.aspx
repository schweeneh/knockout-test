<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KnockoutTest.aspx.cs" MasterPageFile="~/Site.Master" Inherits="KnockoutTest.KnockoutTest" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <script type="text/javascript" src="Scripts/knockouttest.js"></script>

    <!--Testing multi select list.-->
    <select multiple="multiple"  id="lbListbox" data-bind="selectedOptions: listbox, valueUpdate: 'mouseout'">
        <option value="1" label="One"></option>
        <option value="2" label="Two"></option>
        <option value="3" label="Three"></option>
    </select>

    <!--Testing single select list.-->
    <select id="dropDown" data-bind="value: dropdown">
        <option value="1" label="One"></option>
        <option value="2" label="Two"></option>
        <option value="3" label="Three"></option>
    </select>

    <!--Testing text box.-->
    <input type="text" data-bind="value: textbox" value="cone" />

    <!--Testing checkbox-->
    <input type="checkbox" data-bind="checked: checkbox" />

    <!--Testing radiobutton-->
    <input type="radio" name="rone" data-bind="checked: radioButton" value="one" />
    <input type="radio" name="rtwo" data-bind="checked: radioButton" value="two" />
    <p>
    This is the json:
    <pre data-bind="text: ko.toJSON($root)"></pre>
    <button data-bind="click: function () {alert(ko.toJSON($root)); }">Click</button>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
</asp:Content>
