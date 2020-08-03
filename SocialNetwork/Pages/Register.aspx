<%@ Page Language="C#"  EnableEventValidation="false"  AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SocialNetwork.Views.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
        <link rel="stylesheet" type="text/css" href="../Content/Styles.css"/>   
</head>
<body>
    <form id="form1" runat="server">
     <form id="fields_form">
                <p>Login</p>
                <input  type="text" name="Login" value="" runat="server" id="log" />
                <div class="hiden">
                <p>Mail</p>
                <input  type="text" name="Mail" value="" runat="server" id="mail"/>
                </div>
                <p>Password</p>
                <input  type="password" name="Password" value="" runat="server" id="pass"/>
                <div class=" wtf hiden">
                <p>Password Confirm</p>
                <input  type="password" name="Password" value="" runat="server" id="passcnf"/>
                <p runat="server" id="code_lab">Сode confirmation </p>
                <input  type="text" name="code" value="" runat="server" id="code"/>
                <asp:Button OnClick="send_btn_Click" type ="submit" id="send_btn" name="send_btn" runat="server" value="2" Text="Send" ></asp:Button>
                </div>
             
                 <button type="submit" runat="server" id="cnf" name="cnf" value="1"  class="sub_btn hiden">Confirm</button>
                <p runat="server" id="errors" style="color:red" ></p>
       
            </form>
    </form>
</body>
</html>
