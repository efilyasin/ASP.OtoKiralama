<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Otokiralama.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; margin-top: 20px;">
        <tr>
            <td colspan="2">
                <h2>Admin Kayıt Sayfası</h2>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label1" runat="server" Text="İsim Soyisim :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label2" runat="server" Text="Mail Adresi :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label3" runat="server" Text="Kullanıcı Adı :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" ForeColor="#666666" Text="  ( Silmek İstediğiniz Kullanıcı Adını Buraya Yazınız )"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label4" runat="server" Text="Şifre :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>&nbsp</td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button7" runat="server" CssClass="btn-success" OnClick="Button7_Click" Text="Kaydet" />
                <asp:Button ID="Button8" runat="server" CssClass="btn-danger" OnClick="Button8_Click" Text="Sil" />
            </td>
        </tr>
        <tr>
            <td></td>
            <td>&nbsp</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="75%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="isim" HeaderText="İsim Soyisim" SortExpression="isim" />
                        <asp:BoundField DataField="mail" HeaderText="Mail Adresi" SortExpression="mail" />
                        <asp:BoundField DataField="kullanici" HeaderText="Kullanıcı Adı" SortExpression="kullanici" />
                        <asp:BoundField DataField="sifre" HeaderText="Şifre" SortExpression="sifre" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:otokiralamaConnectionString %>" SelectCommand="SELECT [isim], [mail], [kullanici], [sifre] FROM [admin] ORDER BY [adminId] DESC"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
    </table>
</asp:Content>
