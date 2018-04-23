<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.ASPxRichEdit.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRichEdit" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function onRichEditCustomCommandExecuted(s, e) {
            if(e.commandName = "AddSignature") {
                RichEdit.selection.goToDocumentEnd();
                RichEdit.commands.insertParagraph.execute();
                RichEdit.commands.insertParagraph.execute();
                RichEdit.commands.insertText.execute(TextBox.GetText());
                RichEdit.commands.insertParagraph.execute();
                RichEdit.commands.createDateField.execute()
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxTextBox ID="TextBox" runat="server" Caption="Name" ClientInstanceName="TextBox" Text="John Smith"></dx:ASPxTextBox>
        <br />
        <dx:ASPxRichEdit ID="RichEdit" runat="server" ClientInstanceName="RichEdit">
            <ClientSideEvents CustomCommandExecuted="onRichEditCustomCommandExecuted" />
            <RibbonTabs>
                <dx:RERHomeTab>
                    <Groups>
                        <dx:RibbonGroup Text="Signature">
                            <Items>
                                <dx:RibbonButtonItem Name="AddSignature" Text="Add Signature" Size="Large" LargeImage-IconID="edit_edit_32x32"></dx:RibbonButtonItem>
                            </Items>
                        </dx:RibbonGroup>
                        <dx:RibbonGroup Text="Printing">
                            <Items>
                                <dx:RERPrintCommand Size="Large"></dx:RERPrintCommand>
                            </Items>
                        </dx:RibbonGroup>
                    </Groups>
                </dx:RERHomeTab>
            </RibbonTabs>
        </dx:ASPxRichEdit>
    </div>
    </form>
</body>
</html>