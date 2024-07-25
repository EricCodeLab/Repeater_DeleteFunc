<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepeaterXML.aspx.cs" Inherits="WebForm_Repeater.RepeaterXML" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        table, th, td {
            border: 1px solid;
        }

        table {
            width: 100%;
        }

        td {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="cdcatalog" runat="server">
                <HeaderTemplate>
                    <table>
                        <tr>
                            <th>Title</th>
                            <th>Artist</th>
                            <th>Country</th>
                            <th>Company</th>
                            <th>Price</th>
                            <th>Year</th>
                        </tr>
                </HeaderTemplate>

                <ItemTemplate>
                    <tr>
                        <td><%#Eval("title") %></td>
                        <td><%#Eval("artist") %></td>
                        <td><%#Eval("country") %></td>
                        <td><%#Eval("company") %></td>
                        <td><%#Eval("price") %></td>
                        <td><%#Eval("year") %></td>
                    </tr>
                </ItemTemplate>

                <AlternatingItemTemplate>
                    <tr bgcolor="#e8e8e8">
                        <td><%#Eval("title") %></td>
                        <td><%#Eval("artist") %></td>
                        <td><%#Eval("country") %></td>
                        <td><%#Eval("company") %></td>
                        <td><%#Eval("price") %></td>
                        <td><%#Eval("year") %></td>
                    </tr>
                </AlternatingItemTemplate>
                <%--                <SeparatorTemplate>
                    <tr>
                        <td colspan="6"><hr/></td>
                    </tr>
                </SeparatorTemplate>--%>

                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
