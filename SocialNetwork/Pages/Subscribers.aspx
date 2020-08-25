<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subscribers.aspx.cs" Inherits="SocialNetwork.Pages.Subscribers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
 <link href="../Content/styles.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <form id="form1" runat="server">
            <header>
                <ul class="menu-main">
                    <li><a href="main" >Profile</a></li>
          <li><a href="dialogs">Dialogs</a></li>
          <li><a href="subs">subscriptions</a></li>
          <li><a href="subers" class="current" >subscribers</a></li>
                </ul>
                <img src="fon/fon7.png" id="bg">
                <!-- <div class="title">
          <span class="title_text">Dialogs</span>
        </div> -->
            </header>
            <div id="progressbar"></div>
            <div id="scrollPath"></div>
            <section>
                <div class="block_subscribers">
                    <div class="content_subscribers">
                        <div class="subscribers">
                            <div class="subscribers_block">
                                <div class="img_profile">
                                    <img src="photo/sender.jpg" style="widows:
                                        60px;; height:60px; border-radius:
                                        50px;">
                                </div>
                            </div>
                            <h1 class="login_subscribers">Name acc</h1>
                            <div class="position_subscribers_button">
                                <div class="subscribers_button"></div>
                            </div>
                        </div>
                    </div>
                    <div class="block_subscribers">
                        <div class="content_subscribers">
                            <div class="subscribers">
                                <div class="subscribers_block">
                                    <div class="img_profile">
                                        <img src="photo/sender.jpg" style="widows:
                                            60px;; height:60px; border-radius:
                                            50px;">
                                    </div>
                                </div>
                                <h1 class="login_subscribers">Name acc</h1>
                                <div class="position_subscribers_button">
                                    <div class="subscribers_button"></div>
                                </div>
                            </div>
                        </div>
                        <div class="block_subscribers">
                            <div class="content_subscribers">
                                <div class="subscribers">
                                    <div class="subscribers_block">
                                        <div class="img_profile">
                                            <img src="photo/sender.jpg" style="widows:
                                                60px;; height:60px; border-radius:
                                                50px;">
                                        </div>
                                    </div>
                                    <h1 class="login_subscribers">Name acc</h1>
                                    <div class="position_subscribers_button">
                                        <div class="subscribers_button"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="block_subscribers">
                                <div class="content_subscribers">
                                    <div class="subscribers">
                                        <div class="subscribers_block">
                                            <div class="img_profile">
                                                <img src="photo/sender.jpg" style="widows:
                                                    60px;; height:60px; border-radius:
                                                    50px;">
                                            </div>
                                        </div>
                                        <h1 class="login_subscribers">Name acc</h1>
                                        <div class="position_subscribers_button">
                                            <div class="subscribers_button"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="block_subscribers">
                                    <div class="content_subscribers">
                                        <div class="subscribers">
                                            <div class="subscribers_block">
                                                <div class="img_profile">
                                                    <img src="photo/sender.jpg" style="widows:
                                                        60px;; height:60px; border-radius:
                                                        50px;">
                                                </div>
                                            </div>
                                            <h1 class="login_subscribers">Name acc</h1>
                                            <div class="position_subscribers_button">
                                                <div class="subscribers_button"></div>
                                            </div>
                                        </div>
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