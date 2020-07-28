<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Musteri.aspx.cs" Inherits="Otokiralama.Musteri" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td colspan="2" style="width: 150px;">
                <h2>Müşteri Kayıt</h2>
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label1" runat="server" Text="Kimlik Numarası :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Label ID="Label6" runat="server" ForeColor="#666666" Text="  ( Silmek veya Güncellenmek İstenen Müşterinin Kimlik Numarasını Giriniz )"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label2" runat="server" Text="Adı :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label3" runat="server" Text="Soyadı :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label4" runat="server" Text="Telefon Numarası :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label5" runat="server" Text="Adres :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">&nbsp</td>
            <td>&nbsp</td>
        </tr>
        <tr>
            <td style="width: 150px;"></td>
            <td>
                <asp:Button ID="Button7" runat="server" CssClass="btn-success" OnClick="Button7_Click" Text="Kaydet" />
                <asp:Button ID="Button8" runat="server" CssClass="btn-warning" OnClick="Button8_Click" Text="Güncelle" />
                <asp:Button ID="Button9" runat="server" CssClass="btn-danger" OnClick="Button9_Click" Text="Sil" />
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">&nbsp</td>
            <td>&nbsp</td>
        </tr>
        <tr>
            <td style="width: 150px;"></td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="75%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="kimlik" HeaderText="Kimlik No" SortExpression="kimlik" />
                        <asp:BoundField DataField="adi" HeaderText="Adı" SortExpression="adi" />
                        <asp:BoundField DataField="soyadi" HeaderText="Soyadı" SortExpression="soyadi" />
                        <asp:BoundField DataField="telefon" HeaderText="Telefon No" SortExpression="telefon" />
                        <asp:BoundField DataField="adres" HeaderText="Adres" SortExpression="adres" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:otokiralamaConnectionString2 %>" SelectCommand="SELECT [kimlik], [adi], [soyadi], [telefon], [adres] FROM [musteri] ORDER BY [musteriId] DESC"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;"></td>
            <td></td>
        </tr>

    </table>
</asp:Content>
