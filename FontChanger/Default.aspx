<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FontChanger.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1 data-bind="text: bindThis">bindThis</h1>
        <input type="text" data-bind="value: bindThis, valueUpdate: 'afterkeydown'"/>
        <script src="Scripts/knockout-3.4.2.js"></script>
        <script>
            var vm = {
                bindThis:ko.observable()
            };
            vm.bindThis("Sample Text...");
            ko.applyBindings(vm);
        </script>
        <div>
            <br />
            <asp:CheckBox ID="arialCheckBox" runat="server" AutoPostBack="True" Font-Names="Arial"  Text="Change to Arial" />
            <br />
            <asp:CheckBox ID="georgiaCheckBox" runat="server" AutoPostBack="True" Font-Names="Georgia"  Text="Change to Georgia" />
            <br />
            <asp:CheckBox ID="cooperCheckBox" runat="server" AutoPostBack="True" Font-Names="Cooper Black"  Text="Change to Cooper" />
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server" Text="Click above to Change the Font"></asp:Label>
        </div>
    </form>
</body>
</html>
