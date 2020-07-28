<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Kirala.aspx.cs" Inherits="Otokiralama.Kirala" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 150px;
            height: 407px;
        }
        .auto-style4 {
            height: 407px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="margin-top: 20px;">
        <h2>Araç Kirala</h2>
        <br />
    </div>

    <table style="width: 100%; float: left;">
        <tr>
            <td class="auto-style3">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="500px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True">
                        <ItemStyle Font-Bold="True" ForeColor="Blue" />
                        </asp:CommandField>
                        <asp:BoundField DataField="kimlik" HeaderText="Kimlik" SortExpression="kimlik" />
                        <asp:BoundField DataField="adi" HeaderText="Adı" SortExpression="adi" />
                        <asp:BoundField DataField="soyadi" HeaderText="Soyadı" SortExpression="soyadi" />
                        <asp:BoundField DataField="telefon" HeaderText="Telefon" SortExpression="telefon" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:otokiralamaConnectionString7 %>" SelectCommand="SELECT [plaka], [marka], [model], [kasatipi], [km] FROM [arac] WHERE ([durum] = @durum) ORDER BY [aracId] DESC">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Boşta" Name="durum" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="margin-left:100px;" class="auto-style4">
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" Width="500px" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" >
                        <ItemStyle Font-Bold="True" ForeColor="Blue" />
                        </asp:CommandField>
                        <asp:BoundField DataField="plaka" HeaderText="Plaka" SortExpression="plaka" />
                        <asp:BoundField DataField="marka" HeaderText="Marka" SortExpression="marka" />
                        <asp:BoundField DataField="model" HeaderText="Model" SortExpression="model" />
                        <asp:BoundField DataField="km" HeaderText="KM" SortExpression="km" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:müsterigetir %>" SelectCommand="SELECT [kimlik], [adi], [soyadi], [telefon] FROM [musteri] ORDER BY [musteriId] DESC"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td style="width: 150px;">
                <asp:Label ID="Label1" runat="server" Text="Kiralama Tarihi :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; ">
                <asp:Label ID="Label2" runat="server" Text="Teslim Tarihi :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; ">
                <asp:Label ID="Label3" runat="server" Text="Plaka :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px; ">
                <asp:Label ID="Label4" runat="server" Text="Müşteri :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;"></td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 150px;"></td>
            <td>
                <asp:Button ID="Button7" runat="server" CssClass="btn-success" Text="Kaydet" OnClick="Button7_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">&nbsp</td>
            <td>&nbsp</td>
        </tr>
        <tr>
            <td style="width: 150px;"></td>
            <td>
                <asp:Label ID="Label5" runat="server" ForeColor="#D72828" Text="Silmek İçin ID Girin :"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Width="75px" Height="27px"></asp:TextBox>
                <asp:Button ID="Button8" runat="server" CssClass="btn-danger" OnClick="Button8_Click" Text="Sil" />
            </td>
        </tr>
        <tr>
            <td style="width: 150px;">&nbsp</td>
            <td>&nbsp</td>
        </tr>
        <tr>
            
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="kiralaId" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" Width="75%" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="kiralaId" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="kiralaId" />
                        <asp:BoundField DataField="vtarih" HeaderText="Kiralama Tarihi" SortExpression="vtarih" />
                        <asp:BoundField DataField="ttarih" HeaderText="Teslim Tarihi" SortExpression="ttarih" />
                        <asp:BoundField DataField="plaka" HeaderText="Araç Plakası" SortExpression="plaka" />
                        <asp:BoundField DataField="kimlik" HeaderText="Müşteri Kimlik No" SortExpression="kimlik" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:otokiralamaConnectionString6 %>" SelectCommand="SELECT [kiralaId], [vtarih], [ttarih], [plaka], [kimlik] FROM [kirala] ORDER BY [kiralaId] DESC"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 150px;"></td>
            <td></td>
        </tr>

    </table>

</asp:Content>
