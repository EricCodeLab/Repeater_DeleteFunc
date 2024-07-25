<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterWithClassData.aspx.cs" Inherits="WebForm_Repeater.RepeaterWithClassData.RepeaterWithClassData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        table,th,td{
            border:1px,solid;
        }
        table{
            margin-left:auto;
            margin-right:auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound"
                OnItemCommand="Repeater1_ItemCommand">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("Id") %></td>
                        <td><%#Eval("Name") %></td>
                        <td>
                            <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" />
                        </td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
