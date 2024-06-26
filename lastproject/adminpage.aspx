<%@ Page Title="" Language="C#" MasterPageFile="~/master.master" AutoEventWireup="true" CodeFile="adminpage.aspx.cs" Inherits="adminpage" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
        .dropdown {
            width: 200px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #fff;
            font-size: 16px;
            color: #333;
            margin-bottom: 10px;
            margin-left:100px;
           
        }

        .dropdown option {
            background-color: #fff;
            color: #333;
        }

        .dropdown option:checked {
            background-color: #f0f0f0;
        }

        .dropdown:hover {
            border-color: #999;
        }

        .dropdown:focus {
            outline: none;
            border-color: #666;
            box-shadow: 0 0 5px #ddd;
        }

        .dropdown-arrow {
            position: relative;
        }

        .dropdown-arrow::after {
            content: '\25BC';
            font-size: 12px;
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
        }

        .submitt {
    background-color: #4CAF50; /* Green */
    border: none;
    color: black;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 5px;
    margin-left:50px;
}

.submitt:hover {
    background-color: #45a049; /* Darker Green */
}

.grid{
    margin-left:100px;
}

    </style>

    <form id="form1" >
        <div>
            <asp:DropDownList ID="ddlEventCollege" runat="server" CssClass="dropdown" AutoPostBack="true" OnSelectedIndexChanged="ddlEventCollege_SelectedIndexChanged">
                <asp:ListItem Text="--Select Event College--" Value=""></asp:ListItem>
                <asp:ListItem  Value="Tolani College"> Tolani College</asp:ListItem>
                <asp:ListItem  Value="Thakur College">Thakur College</asp:ListItem>
                <asp:ListItem  Value="Valia College">Valia College</asp:ListItem>
                 <asp:ListItem Value="Dhahukar College">Dhahukar College</asp:ListItem>
                 <asp:ListItem Value="Sathaye College">Sathaye College</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="ddlGame" runat="server" CssClass="dropdown" AutoPostBack="true" OnSelectedIndexChanged="ddlGame_SelectedIndexChanged">
                <asp:ListItem Text="--Select Game--" Value=""></asp:ListItem>
                <asp:ListItem  Value="Carrom"> Carrom</asp:ListItem>
                <asp:ListItem  Value="Chess">Chess</asp:ListItem>
                <asp:ListItem Value="reel">reel</asp:ListItem>
                <asp:ListItem Value="openmic">openmic</asp:ListItem>
                <asp:ListItem  Value="dance">Dance</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnSubmit"  cssclass="submitt" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <br /><br />
            <asp:GridView ID="GridView1"  cssclass="grid" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="College_name" HeaderText="College Name" />
                    <asp:BoundField DataField="class" HeaderText="Class" />
                    <asp:BoundField DataField="class_year" HeaderText="Year" />
                    <asp:BoundField DataField="Id_number" HeaderText="ID Number" />
                    <asp:BoundField DataField="EventDate" HeaderText="Event Date" DataFormatString="{0:yyyy-MM-dd}" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>

            <asp:Label ID="lblMessage" cssclass="grid" runat="server" Text=""></asp:Label><br />
            <br />
        </div>
    </form>
</asp:Content>

