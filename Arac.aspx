<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Arac.aspx.cs" Inherits="Otokiralama.Arac" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 150px;
            height: 35px;
        }
        .auto-style3 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td colspan="2" style="width: 150px;">
                <h2>Araç Kayıt</h2>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label1" runat="server" Text="Araç Plakası :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label2" runat="server" Text="Marka :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label3" runat="server" Text="Model :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label4" runat="server" Text="Kasa Tipi :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                    <asp:ListItem>Sedan</asp:ListItem>
                    <asp:ListItem>Hatchback</asp:ListItem>
                    <asp:ListItem>Station Wagon</asp:ListItem>
                    <asp:ListItem>Cabrio</asp:ListItem>
                    <asp:ListItem>Coupe</asp:ListItem>
                    <asp:ListItem>SUV</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label5" runat="server" Text="Kilometre :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label6" runat="server" Text="Durum :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="180px">
                    <asp:ListItem>Boşta</asp:ListItem>
                    <asp:ListItem>Kiralanmış</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">&nbsp</td>
            <td>&nbsp</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3">
                <asp:Button ID="Button7" runat="server" CssClass="btn-success" OnClick="Button7_Click" Text="Kaydet" PostBackUrl="~/Arac.aspx" />
                <asp:Button ID="Button8" runat="server" CssClass="btn-warning" OnClick="Button8_Click" Text="Güncelle" />
                <asp:Button ID="Button9" runat="server" CssClass="btn-danger" OnClick="Button9_Click" Text="Sil" />
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">&nbsp</td>
            <td>&nbsp</td>
        </tr>
         <tr>
            <td colspan="2" style="width: 150px;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="75%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="plaka" HeaderText="Araç Plaka" SortExpression="plaka" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="marka" HeaderText="Marka" SortExpression="marka" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="kasatipi" HeaderText="Kasa Tipi" SortExpression="kasatipi" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="km" HeaderText="Kilometre" SortExpression="km" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="durum" HeaderText="Durum" SortExpression="durum" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:otokiralamaConnectionString3 %>" SelectCommand="SELECT [plaka], [marka], [model], [kasatipi], [km], [durum] FROM [arac] ORDER BY [aracId] DESC"></asp:SqlDataSource>
             </td>
        </tr>

    </table>
</asp:Content>
