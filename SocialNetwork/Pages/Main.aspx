<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="SocialNetwork.Pages.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/styles.css" rel="stylesheet" type="text/css">
</head>
<body>
    <header>
        <ul class="menu-main">
          <li><a href="main" class="current">Profile</a></li>
          <li><a href="dialogs">Dialogs</a></li>
          <li><a href="subs">subscriptions</a></li>
          <li><a href="subers">subscribers</a></li>
        </ul>
        <img src="../Content/Image/fon7.png" id="bg">
        <!-- <div class="title">
          <span class="title_text">Profile</span>
        </div> -->
      </header>
      <div id="progressbar"></div>
      <div id="scrollPath"></div>
      <section>

        <div class="profile_name">
          <p runat="server" id="name" >Uchiha Itachi </p>
        </div>
        <div class="position_button">
          <a href="subers" runat="server" id="testbutton1"></a>
        </div>
        <div class="position_button2">
          <a href="subs" runat="server" id="testbutton2"></a>
        </div>
        <div class="profile_photo">
          <img src="~/Content/Image/empty-profile.png" runat="server" id="propic">
        </div>
        <div class="content_box">
         <h1 id="cont">CONTENT</h1>
        </div>
      </section>

    </form>
  </body>
  <script>
        let progress = document.getElementById('progressbar');
        let totalHeight = document.body.scrollHeight - window.innerHeight;
        window.onscroll = function(){
//  Знчение настраивать в зависимости от высоты сайта
let progressHeight = (window.pageYOffset / totalHeight) * 100;
 progress.style.height = progressHeight + "%"; }
    </script>
</html>