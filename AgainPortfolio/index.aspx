<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AgainPortfolio.index" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
 <meta http-equiv="X-UA-Compatible" content="IE=edge" />
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 <!--=============== Remixicons ===============-->
 <link
   href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
   rel="stylesheet"
 />

 <!--=============== Swiper Css ===============-->
 <link
   rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"
 />

 <!--=============== Css ===============-->
 <link rel="stylesheet" href="assets/css/style.css" />
 <link rel="stylesheet" href="assets/css/skins/color-1.css" />
    <title>naboni</title>
</head>
<body>
    <form id="form1" runat="server">
        
             

        <!--=============== Header ===============-->
    <header class="header" id="header">
      <nav class="nav container">
        <div class="nav__menu" id="nav-menu">
          <ul class="nav__list">
            <li>
              <a href="#home" class="nav__link active-link">Hello</a>
            </li>
            <li>
              <a href="#resume" class="nav__link">Resume</a>
            </li>
            <li>
              <a href="#skills" class="nav__link">Skills</a>
            </li>
            <li>
              <a href="#portfolio" class="nav__link">Projects</a>
            </li>
            <li>
              <a href="#services" class="nav__link">Leisure pursuit</a>
            </li>
            <li>
              <a href="#contact" class="nav__link">Contact</a>
            </li>
            <li>
              <asp:Button class="nav__link" ID="loginB" runat="server" Text="Login" OnClick="loginB_Click" />
             </li>
             
          </ul>
          <div class="nav__close" id="nav-close">
            <i class="ri-close-fill"></i>
          </div>
        </div>
        <div class="nav__toggle" id="nav-toggle">
          <i class="ri-menu-fill"></i>
        </div>
      </nav>

    </header>

        <!--=============== Main ===============-->

        <main>

        <!--=============== Home ===============-->

            <asp:Repeater ID="HomeListRepeater" runat="server">
           <ItemTemplate>
           <section class="home" id="home">
          <div class="home__container container grid">
          <img src="assets/img/cottageFairy.jpg" alt="" class="home__img" />

          <div class="home__data">
          <h1 class="home__name"><%# Eval("Name") %></h1>
          <p class="home__work"><%# Eval("Work") %></p>
          <dl class="home__list">
            <dt>AGE:</dt>
            <dd><%# Eval("Age") %></dd>
            <dt>PHONE</dt>
            <dd><%# Eval("Phone") %></dd>
            <dt>EMAIL:</dt>
            <dd><%# Eval("Email") %></dd>
            <dt>ADDRESS</dt>
            <dd><%# Eval("Address") %></dd>
          </dl>
          <div class="home__socials">
            <a href="<%# Eval("Github") %>" target="_blank" class="home__social-link">
              <i class="ri-github-fill"></i>
            </a>
            <a href="<%# Eval("LinkedIn") %>" target="_blank" class="home__social-link">
              <i class="ri-linkedin-box-fill"></i>
            </a>
            <a href="<%# Eval("Facebook") %>" target="_blank" class="home__social-link">
              <i class="ri-facebook-fill"></i>
            </a>
          </div>
        </div>

      </div>
    </section>
  </ItemTemplate>
</asp:Repeater>

        <!--=============== Hello ===============-->
      <section class="hello section container">
        <h2 class="section__title">Hi_</h2>

        <p>I am Undergraduate student at KUET CSE,BANGLADESH.
   </p>
         <br />
          <div>
              <p class="hello__details text-lg">
                  Each moment contains a hundred messages from God.To every cry of "Oh God!" He answers a hundred
                  times:"I am here."
                  <br />
                  ~Rumi
                  <br />
              </p>
          </div>
        <a href="assets/img/background.jpg" class="button button--flex
        text-sm">
      <i class="ri-download-line"></i>DOWNLOAD CV</a>
      </section>

        <!--=============== Resume ===============-->
       <section class="section container" id="resume">
       <h2 class="section__title">Resume_</h2>
       <div class="resume__container grid">
       <div class="resume__data">
       <h3 class="resume__title text-sm">EDUCATION</h3>

      <asp:Repeater ID="EducationRepeater" runat="server">
      <ItemTemplate>
      <div class="resume__item">
      <h3 class="resume__subtitle text-sm"><%# Eval("Subtitle") %></h3>
      <p class="resume__data text-sm"><%# Eval("Data") %></p>
      <p class="resume__description text-lg"><%# Eval("Description") %></p>
     </div>
     </ItemTemplate>
     </asp:Repeater>
     </div>

     <div class="resume__data">
       <h3 class="resume__title text-sm">BEYOND THE CLASSROOM</h3>
        
         <asp:Repeater ID="BeyondClassroomRepeater" runat="server">
         <ItemTemplate>
         <div class="resume__item">
         <h3 class="resume__subtitle text-sm"><%# Eval("Subtitle") %></h3>
         <p class="resume__data text-sm"><%# Eval("Data") %></p>
         <p class="resume__description text-lg"><%# Eval("Description") %></p>
        </div>
        </ItemTemplate>
        </asp:Repeater>
       
     </div>
   </div>
 </section>

        <!--=============== Skills ===============-->
      <section class="section container" id="skills">
      <h2 class="section__title">Skills_</h2>
      <div class="skills__container grid">
        <div class="skills__content">
          <h3 class="skills__title text-sm">FRONTEND</h3>
          <div class="skills__list grid">
            <asp:Repeater ID="SkillsRepeater" runat="server">
              <ItemTemplate>
                <div class="skills__data">
                  <div class="skills__title">
                    <p class="skills__name text-sm"><%# Eval("SkillName") %></p>
                    <span class="skills__number text-sm"><%# Eval("SkillPercentage") %> %</span>
                  </div>
                  <div class="skills__bar">
                    <span class="skills__percentage" style="width: <%# Eval("SkillPercentage") %>%;"></span>
                  </div>
                </div>
              </ItemTemplate>
            </asp:Repeater>
          </div>
        </div>

          <div class="skills__content">
    <h3 class="skills__title text-sm">PROGRAMMING LANGUAGE</h3>
    <div class="skills__list grid">
        <asp:Repeater ID="ProgrammingLanguageRepeater" runat="server">
            <ItemTemplate>
                <div class="skills__data">
                    <div class="skills__title">
                        <p class="skills__name text-sm"><%# Eval("LanguageName") %></p>
                        <span class="skills__number text-sm"><%# Eval("LanguagePercentage") %> %</span>
                    </div>
                    <div class="skills__bar">
                        <span class="skills__percentage" style="width: <%# Eval("LanguagePercentage") %>%;"></span>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>

      </div>
    </section>


              <!--=============== Projects ===============-->
             <section class="work section container" id="portfolio">
   <h2 class="section__title">Project_</h2>
   <div class="project__categories">
     <button class="category__btn text-xs active-work" data-filter="all">ALL</button>
     <button class="category__btn text-xs" data-filter=".app">MOBILE APPS</button>
     <button class="category__btn text-xs " data-filter=".web">OOP PROJECT</button>
   </div>

   <div class="project__container grid">
          <asp:Repeater ID="ProjectRepeater" runat="server">
           <ItemTemplate>
            <div class="project__item grid mix <%# Eval("Category") %>">
              <img src="<%# Eval("Image") %>" alt="" class="project__img" />
               <div class="project__data">
               <h3 class="project__title text-lg"><%# Eval("Title") %></h3>
               <p class="project__description"><%# Eval("Description") %></p>
               <h4 class="project__stack text-xs">USED STACK:</h4>
               <ul class="tags text-sm">
                  <li> <%# Eval("Stack") %>  </li>
               </ul>
                     <a href="<%# Eval("Link") %>" class="project__link text sm">Go to the link here</a>
                  </div>
               </div>
             </ItemTemplate>
             </asp:Repeater>
        </div>
    </section>

        <!--=============== Services/Hobby ===============-->
         <section class="services section container" id="services">
      <h2 class="section__title">Leisure pursuit_</h2> 
      <div class="services__container grid">

       <asp:Repeater ID="ServicesSectionRepeater" runat="server">
       <ItemTemplate>
       <div class="services__item">
       <div class="icon__box">
       <img src='<%# "assets/img/" + Eval("ImageName") %>' alt="" class="services__icon"/>
       <div class="services__dot">
       <span class="dot"></span>
       </div>
       </div>

        <h3 class="services__title text-lg"><%# Eval("Title") %></h3>
       <p class="services detail"><%# Eval("Detail") %></p>
     </div>
   </ItemTemplate>
 </asp:Repeater>


      </div>  
   </section>


          <!--=============== Contact ===============-->
    <section class="contact section" id="contact">
       <div class="contact__content container">
          <h2 class="section__title">Get in touch_</h2>
            <div class="contact__container grid">
                <div class="contact__info">
                   <dl class="contact__list">
                  <dt>Email:</dt>
                  <dd>sabekunnaharnaboni@gmail.com</dd>
                  <dt>Skype:</dt>
                 <dd>Sabekunnahar naboni</dd>
                 </dl>
                <ul class="contact__socials">
                <li>
            <a href="https://www.facebook.com/" class="contact__social-link">Facebook</a>
          </li>
          <li>
            <a href="https://www.linkedin.com/" class="contact__social-link">Linkedin</a>
          </li>
          <li>
            <a href="https://www.github.com/" class="contact__social-link">Github</a>
          </li>
        </ul>
      </div>
      <div class="contact__form">
        <p class="contact__form-title">Or just write me a letter here_</p>
        <form action="" id="contact-form">
          <div class="contact__input-div">
            <input
            type="text"
            name="name"
            placeholder="Your name"
            class="contact__input"
            id="name" />
          </div>
          <div class="contact__input-div">
            <input
            type="email"
            name="email"
            placeholder="Your e-mail"
            class="contact__input"
            id="email" />
          </div>
          <div class="contact__input-div">
            <textarea 
              name="message"
            placeholder="Type the message here"
            class="contact__input textarea" id="message" cols="30" rows="10" ></textarea>
          </div>

          <p class="contact__message text-sm" id="contact-message">
          </p>
          <button type="submit" class="button contact__button" onclick="sendMail()">
            SEND
          </button>
        </form>
        <p class="footer__copy">
          &copy;2024 sabekunnaharnaboni.All Rights Reserved
        </p>
      </div>

    </div>
  </div>
</section>


     </main>

         <!--=============== Mixitup ===============-->
         <script src="assets/js/mixitup.min.js"></script>

        <!--=============== Swiper Js ===============-->
        <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

        <!--=============== Email Js ===============-->
        <script
        type="text/javascript"
         src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"
          ></script>

    <!--=============== Js ===============-->
    <script src="assets/js/main.js"></script>

    <!--=============== Common ===============-->
    <script src="assets/js/common.js"></script>

  

    </form>
</body>
</html>
