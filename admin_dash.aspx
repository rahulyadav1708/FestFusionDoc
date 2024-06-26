<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_dash.aspx.cs" Inherits="admin_dash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <style>
        * {
            cursor: url("img/cursor.svg"), auto;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .all {
            max-width: 950px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #027b9a;
            text-align: center;
        }

        h2 {
            color: #229c95;
        }

        .gridview {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

            .gridview th,
            .gridview td {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            .gridview th {
                background-color: #f2f2f2;
            }

            .gridview tr:hover {
                background-color: #f9f9f9;
            }

            .gridview .gridview-edit-row,
            .gridview .gridview-selected-row {
                background-color: #dff0d8 !important;
            }

            .gridview .gridview-delete-row {
                background-color: #f2dede !important;
            }

            .gridview a {
                text-decoration: none;
                color: #6666da;
            }
    </style>
</head>
<body>
     <form id="form1" runat="server">
        <div class="all">
            <h1>Welcome to Admin Dashboard</h1>
            <h2>Order Details:</h2>
            <asp:GridView ID="GridViewOrders" runat="server" CssClass="gridview" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" DataKeyNames="order_Id">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM Orders WHERE [order_Id] = @order_Id" InsertCommand="INSERT INTO Orders ([Pro_name], [qty], [date], [time], [address], [postcode], [phone]) VALUES (@Pro_name, @qty, @date, @time, @address, @postcode, @phone)" SelectCommand="SELECT * FROM Orders" UpdateCommand="UPDATE Orders SET [Pro_name] = @Pro_name, [qty] = @qty, [date] = @date, [time] = @time, [address] = @address, [postcode] = @postcode, [phone] = @phone WHERE [order_Id] = @order_Id">
                <DeleteParameters>
                    <asp:Parameter Name="order_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Pro_name" Type="String" />
                    <asp:Parameter Name="qty" Type="Int64" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter DbType="Time" Name="time" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="postcode" Type="Int64" />
                    <asp:Parameter Name="phone" Type="Int64" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Pro_name" Type="String" />
                    <asp:Parameter Name="qty" Type="Int64" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter DbType="Time" Name="time" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="postcode" Type="Int64" />
                    <asp:Parameter Name="phone" Type="Int64" />
                    <asp:Parameter Name="order_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <h2>Payment Details:</h2>

            <asp:GridView ID="GridViewPayments" runat="server" CssClass="gridview" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [payment]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
