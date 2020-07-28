<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="Otokiralama.Giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <style>
        @import url(//fonts.googleapis.com/css?family=Lato:100,300,300i,400);

        body {
            box-sizing: border-box;
            font-family: Lato, Arial;
            text-align: center;
            color: #eee;
            background-color: #3366cc;
        }

        h2 {
            margin-top: 1em;
            margin-bottom: 1em;
            color: #eee;
            font-weight: 400;
            text-align: center;
            font-size: 200%;
            letter-spacing: 4px;
        }

        h4 {
            margin-top: 1em;
            color: #eee;
            font-size: 150%;
            font-weight: 300;
            text-align: center;
        }

        button {
            display: inline;
            background: #01A4E0;
            color: #2184AC;
            border: 0;
            padding: 4px;
        }

        input {
            display: block;
            height: 30px;
            margin-top: 1.0em;
            padding: 4px;
        }

        small {
            display: inline-block;
            margin-top: 5px;
            color: white;
            font-size: 100%;
            color: #fff;
        }

        .login-box {
            padding: 1em 1em 1em 1em;
            margin: auto;
            text-align: center;
            display: block;
            background-color: #6f92dc;
            /*border: 1px dashed white;*/
            width: 60%;
            height: 308px;
        }

        .outer-box {
            display: block;
            margin: auto;
            background: #6f92dc;
            border-radius: 5px;
            width: 50%;
            height: 20em;
            height: auto;
        }

        #btn-login {
            display: block;
            width: 100%;
            height: 40px;
            margin-top: 2.0em;
            border-radius: 4px;
            background-color: #3366cc;
            color: #fff;
        }

        #btn-forgot {
            display: block;
            width: 100%;
            margin-top: 1.0em;
            border-radius: 2px;
            color: #fff;
            background-color: #000D36;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>ALPHA Oto Kiralama Sistemi</h2>
            <div class="outer-box">
                <div class="login-box" style="height: auto;">
                    <h4 class="login-text">Giris</h4>
                    <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı :"></asp:Label>
                    <br />

                    <asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Şifre :"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Width="100%" TextMode="Password"></asp:TextBox>

                    <asp:Button ID="Button1" runat="server" CssClass="btn-success" Height="46px" Text="Giriş Yap" Width="100%" OnClick="Button1_Click" />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
                    <br />

                </div>
            </div>
            <small>Copyright 2020</small>

        </div>
    </form>
</body>
</html>
