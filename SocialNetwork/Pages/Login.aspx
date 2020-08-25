<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SocialNetwork.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>Authorization</title>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
        <link rel="stylesheet" type="text/css" href="../Content/StylesX.css"/>
        
        
</head>
<body>
    <form id="form1" runat="server">
    
     <div class="logo">
            <h1 id="title">LOGO</h1>
        </div>
        <div class="fields">
            <form id="fields_form">
                <p>Login</p>
                <input runat="server" id="log"  type="text" name="Login" value="" />
                
                <p>Password</p>
                <input runat="server" id="pass" type="password" name="Password" value=""/>
                
                <p runat="server" id="errors" style="color:red" ></p>
                <br/><br/><br/><br/><br/>

                <button type="submit" name="submit1" value="1"  class="sub_btn" >Sign in</button> 
   
               
          
                <asp:Button PostBackUrl="register" runat="server" name="submit3" class="sub_btn" Text="Sign Up" />
            </form>
        </div>
         
    </form>
</body>
</html>
