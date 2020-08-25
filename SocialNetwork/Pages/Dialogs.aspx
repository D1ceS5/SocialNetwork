<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dialogs.aspx.cs" Inherits="SocialNetwork.Pages.Dialogs" %>

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
          <li><a href="dialogs"  class="current" >Dialogs</a></li>
          <li><a href="subs"  >subscriptions</a></li>
          <li><a href="subers" >subscribers</a></li>
        </ul>
        <img src="../Content/Image/fon7.png" id="bg">
        <!-- <div class="title">
          <span class="title_text">Dialogs</span>
        </div> -->
      </header>
      <div id="progressbar"></div>
      <div id="scrollPath"></div>
      <section>

        <div class="block">
          <div class="content">
            <div class="sender">
              <div class="img_sender">
                <img src="photo/sender.jpg" style="widows: 60px;; height:60px; border-radius: 50px;">
              </div>
              <p class="text_sender">riuogheougheirheiugheiohgonrinrwpiognwpogjnptwognptoijgptongpnptwognprwotingprwongtprjngpirwngtprjowngpotrnjgporjnpojpgojwnpgnoprwognnnnntjorwpognjpwrojgnptnjrwpognpntwpjonggoierhgoer</p>
            </div>
            <div class="recipient">
              <div class="img_recipient">
                <img src="photo/sender.jpg" style="width:60px; height:60px; border-radius: 50px;">
              </div>
              <p class="text_recipient">riuogheougheirheiugheiohgonrinrwpiognwpogjnptwognptoijgptongpnptwognprwotingprwongtprjngpirwngtprjowngpotrnjgporjnpojpgojwnpgnoprwognnnnntjorwpognjpwrojgnptnjrwpognpntwpjonggoierhgoer</p>
            </div>
            <div class="sender">
              <div class="img_sender">
                <img src="photo/sender.jpg" style="widows: 60px;; height:60px; border-radius: 50px;">
              </div>
              <p class="text_sender">riuogheougheirheiugheiohgonrinrwpiognwpogjnptwognptoijgptongpnptwognprwotingprwongtprjngpirwngtprjowngpotrnjgporjnpojpgojwnpgnoprwognnnnntjorwpognjpwrojgnptnjrwpognpntwpjonggoierhgoer</p>
            </div>
            <div class="recipient">
              <div class="img_recipient">
                <img src="photo/sender.jpg" style="width:60px; height:60px; border-radius: 50px;">
              </div>
              <p class="text_recipient">riuogheougheirheiugheiohgonrinrwpiognwpogjnptwognptoijgptongpnptwognprwotingprwongtprjngpirwngtprjowngpotrnjgporjnpojpgojwnpgnoprwognnnnntjorwpognjpwrojgnptnjrwpognpntwpjonggoierhgoer</p>
            </div>
            <div class='conteiner'>
              <h2>Enter you massage</h2>
              <form method='post' id='chat-form'>
                <textarea name="comment" cols="40" rows="3" id="massage"></textarea></p>
                  <input type='submit' class='chat-form__submit'id="enter_massage" value='Отправить'>
              </form>
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
