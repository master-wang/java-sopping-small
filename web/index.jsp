
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>商城</title>

    <link rel="shortcut icon" href="/imgs/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/bootstrap.js"></script>
    <style type="text/css">
      *{margin: 0;padding: 0}
      body{
        background-image: url(/imgs/气泡花.jpg);
        background-size: cover;
        background-attachment: fixed;
        background-size: 100%;
      }
      a{text-decoration: none;}
      #body{
        height: 1000px;
        position: fixed;
        right: 0;
        width: 1px;
        border-right: 6px solid rgb(124,110,110);
      }
      #ol-liebiao ul{
        display: block;
        right: 0;
        position: fixed;
        width: 130px;
        height:500px;
        bottom: 50px;
        text-align: center;
        vertical-align: center;

      }
      #ol-liebiao ul li{
        display: block;
        line-height: 45px;
        border-radius: 4px;
        margin-top: 1px;
        width: 130px;
        height: 45px;
        background-color: rgb(8,11,56);
        animation: colors 6s infinite;
      }
      #ol-liebiao ul .ul-juli{margin-top: 150px;}
      #ol-liebiao ul li a:hover{
        color: red;

      }
      @keyframes  colors{
        0%{
          background-color: rgb(246,242,181);
        }
        25%{
          background-color: rgb(0,151,206);
        }
        40%{
          background-color: rgb(174,214,212);
        }
        60%{
          background-color: rgb(163,172,206);
        }
        75%{
          background-color: rgb(238,136,74);
        }
        85%{
          background-color: rgb(176,217,129);
        }
        100%{
          background-color: rgb(254,184,182);
        }
      }



      #cha span{
        position: absolute;
        height: 30px;
        width: 30px;
        opacity: 0.1;
        right: 160px;
        top: 0;
        background-color: blue;
      }
      #cha:hover  #ding{
        display: none;

      }
      #menu{
        width: 100%;
        height: 30px;
        background-color: rgb(227,228,229);
      }
      #menu .menu-map{
        width: 50px;
        height: 100%;
        margin-left: 370px;
        background-color: rgb(227,228,229);
        background-size: 100%;
        float: left;
        text-align: center;
        /*overflow: hidden;*/
      }
      #menu .menu-map span{
        line-height: 100%;
        text-align: center;
        font-size: 12px;
      }
      #menu .menu-map:hover{
        background-color: white;
        background-size: 100%;
      }
      .menu-map:hover #ditu{
        display: block;
      }

      #ditu{
        position: absolute;
        display: none;
        width: 310px;
        height: 210px;
        top: 30px;
        background-color: white;
      }
      #ditu a{
        display: block;
        width: 50px;
        height: 20px;
        color: rgb(153,153,153);
        float: left;
        margin-left: 5px;
        margin-top: 7px;
        text-align: center;
        font-size: 10px;
        padding-top: 3px;
      }
      #ditu a:hover{
        background-color: rgb(227,228,229);
        color: red;
      }
      #ditu a:first-child{
        background-color: red;
      }
      #main-body{
        width: 1188px;
        height: 628px;

        margin: auto;

      }
      #guopingri{
        width: 165.5px;
        height: 480px;
        position: fixed;
        top: 160px;
        left: 0;
        background-color: rgb(155,144,142);
        background-size: 100%;
        color: white;
        opacity: 0.5;



      }
      #guopingri div{
        height: 50px;
        border-bottom: 1px solid white;
        color: white;

      }
      #guopingri div a{
        color: white;
      }
      #guopingri div a:hover{
        color: red;

      }

      .shouye-fenlei{
        background-color: rgb(155,144,142);
      }
      .shouye-fenlei img{
        vertical-align: center;

      }
      #guopingri div.fenlei1{
        background-color: red;
        height: 40px;
        font-size: 30px;
        text-align: center;
        line-height: 30px;
      }



      #menu #menu-you{
        margin-top: -30px;
        float: left;
        margin-left: 650px;
        width: 800px;
        height: 100%;
        line-height: 30px;
        font-size: 12px;
        color: rgb(153,153,153);
      }
      #menu-you a{
        color: rgb(165,165,165);
      }
      #menu-you a:hover{color: red;}
      #menu #menu-you .mianfeizhuce{color: red;}
      #menu #menu-you span{
        display: block;
        float: left;
        text-align: center;
        width: 72px;
        height: 30px;



      }
      #wodejingdong{
        width: 77px;
        height: 100%;

        float: left;

      }
      #wodejingdong:hover{
        background-color: white;
      }
      #wodejingdong:hover #wode{
        display: block;
      }
      #wode{
        height: 200px;
        width: 250px;
        background-color: white;
        position: absolute;
        top: 30px;
        display: none;

      }
      #menu #menu-you #wodejingdong #wode a{
        display: block;
        width: 40%;
        float: left;
        height: 20%;
        padding-left: 10px;
      }





      #qiyecaigou{
        width: 77px;
        height: 100%;

        float: left;

      }
      #qiyecaigou:hover{
        background-color: white;
      }
      #qiyecaigou:hover #fuwu{
        display: block;
      }
      #fuwu{
        position: absolute;
        width: 170px;
        height: 270px;
        background-color: white;
        top: 30px;
        right: 355px;
        display: none;
      }
      #fuwu hr{
        color: rgb(102,102,102);
      }
      #menu #menu-you #qiyecaigou #fuwu span{
        width: 100%;
        text-align: left;
        padding-left: 10px;
        font-size: 13px;
        color: black;

      }
      #menu #menu-you #qiyecaigou #fuwu a{
        display: block;
        width: 40%;
        float: left;
        padding-left: 10px;
      }








      #sosuokuang{
        width: 100%;
        height: 130px;
      }
      .sousuo-zuo{
        float: left;
      }
      .sousuo-you{
        float: left;
      }
      .sousuo-you input{
        width: 400px;
        height: 40px;

        display: block;
        margin-left: 50px;
        margin-top: 50px;
        color: rgb(147,148,148);
        border: 1px solid blue;
        border-radius: 20px;
      }
      .sousuo-you span{
        display: block;
        float: left;
        padding-left: 50px;
        color: black;
      }
      .sousuo-zhong img{
        display: block;
        float: right;
        margin-top: 45px;
      }
      #shouye{
        background-color: rgb(8,8,9);
        width: 100%;
        height: 40px;
        color: white;
      }
      #shouye ul{
        list-style: none;
        font-size: 25px;
      }
      #shouye ul li{
        display: block;
        width: 12%;
        height: 100%;
        float: left;
        text-align: center;
        line-height: 40px;
      }
      #shouye ul li a{
        color: white;
      }
      #shouye ul li a:hover{
        color: blue;
      }
      #shouye ul li.shouye-1{
        background-color: red;
      }

      #beijingtu{
        width: 100%;
        height: 450px;
        position: relative;
        background-color: red;
        background-size: 100% 100%;
        background-repeat: no-repeat;
        animation: beijing 20s  infinite ;
        overflow: hidden;


      }
      #beijingtu img{
        display: none;
      }
      #beijingtu a{
        position: absolute;
        width: 50px;
        height: 30px;
        text-align: center;
        line-height: 30px;
        font-size: 12px;
        cursor: pointer;

        top: 50%;
        width: auto;
        margin-top: -22px;
        padding: 16px;
        color: white;
        font-weight: bold;
        font-size: 18px;
        transition: 0.6s ease;
        border-radius: 0 3px 3px 0;
      }
      #beijingtu a.next{
        right:0px;
      }
      .pre:hover {
        background-color: rgba(0,0,0,0.8);
      }
      .next:hover {
        background-color: rgba(0,0,0,0.8);
      }
      .dot{
        display: inline-block;
        position: absolute;
        cursor:pointer;
        width: 15px;
        height: 15px;
        border-radius: 50%;
        background-color: white;
        bottom: 10px;
        margin: 0 2px;

      }
      .active, .dot:hover {
        background-color: #717171;
      }
      #beijingtu .dot1{
        left: 540px;
      }
      #beijingtu .dot2{
        left: 560px;
      }
      #beijingtu .dot3{
        left: 580px;
      }
      #beijingtu .dot4{
        left: 600px;
      }


    </style>
    <style type="text/css">
      #main-body2{

        width: 1188px;
        height: 1000px;

        margin: auto;
        perspective: 1200px;

      }
      #main-body2 div.tu{
        width: 380px;
        height: 585px;
        margin-top: 20px;
        margin-left: 10px;
        box-shadow: 5px 5px 10px rgb(210,210,210);
        border: 1px solid black;
        float: left;
      }
      #main-body2 div.tu:hover{
        border: 2px solid red;
      }
      .picture{
        width: 100%;
        height: 400px;
        perspective: 1200px;

      }
      .picture img{
        width: 378px;
        height: 400px;
      }

    .zi{
        width: 100%;
        height: 100px;
      border-bottom: 1px solid red;
    }
      .zi a{
        display: block;
        margin-top: 10px;

        color: red;
        font-size: 20px;
      }
      .mai a {
        display: block;
        float: left;
        font-size: 30px;
        color: red;
        margin-left: 10px;
        margin-top: 20px;
      }

      .mai div.count{
        display: block;
        width: 130px;height: 40px;
        float: right;
        margin-top: 20px;
        color: black;
        /*background-color: red;*/
        text-align: center;
        line-height: 40px;
        /*text-shadow: 9px 5px 2px black;*/
        cursor: hand;
      }
      .mai div.count button{
        width: 40px;
        height: 20px;
      }

      #count-all{
        width: 1188px;
        margin-top: 10px;
        margin: auto;
        line-height: 45px;
        border: 1px solid red;
        line-height: 40px;
        font-size: 25px;
        text-align: center;
        color: red;
      }
      #count-all a{
        display: block;
        width: 80px;height: 40px;
        float: right;
        margin-right: 10px;
        color: white;
        background-color: red;
        text-align: center;
        line-height: 40px;
        text-shadow: 9px 5px 2px black;
        cursor: pointer;
      }

    </style>
  </head>
  <body>
  <!-- 导航栏 -->
  <nav class="navbar navbar-default navbar-inverse">
    <div class="container-fluid">

      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#" style="font-size: 30px">跨境电商平台</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#"  data-toggle="modal" data-target="#tousuBox">投诉</a></li>

        </ul>
        <form class="navbar-form navbar-left ">
          <div class="form-group">
            <input id="mohumsg" type="text" class="form-control" placeholder="查询商品" style="height: 50px;width: 300px;margin-left: 200px">
          </div>
          <button type="button" class="btn btn-default" onclick="getCommoditiesListByMoHu()">查询</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
          <li id="loginNav"><a href="#" data-toggle="modal" data-target="#loginAndregister">登录/注册</a></li>
          <li id="loginOkNav" class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
              <img id="userHeadIng" src="" style="width: 50px;height: 50px" alt=""><span id="userUsername">我的信息</span> <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#"  data-toggle="modal" data-target="#updateuserInfoBox" onclick="getUserInfoByLocal()">修改个人信息</a></li>
              <li><a href="#"  data-toggle="modal" data-target="#mygobuyCat" onclick="getAllMyGoBuyCar()">我的购物车</a></li>
              <li><a href="#"  data-toggle="modal" data-target="#mygobuyHistory" onclick="getAllMyGoBuyHistory()">我的历史订单</a></li>
              <li><a href="/shopping_small_war_exploded/admin/admin.jsp">后台管理系统</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="#" onclick="loginOut()">退出登录</a></li>
            </ul>
          </li>
        </ul>
      </div><!-- /.navbar-collapse -->
    </div>
  </nav>

  <!-- 主体-->
  <div id="main-body">
    <div id="sosuokuang">
      <div class="sousuo-zuo">
        <a href=""><img src="/imgs/allbuy.jpg" width="243px;"></a>
      </div>
    </div>


    <div id="shouye">
      <ul>
        <li class="shouye-1"><a href="#" onclick="getCommoditiesList()">首页</a></li>
        <li><a href="#" onclick="getCommoditiesListByType('电脑')">电脑</a></li>
        <li><a href="#" onclick="getCommoditiesListByType('手机')">手机</a></li>
        <li><a href="#" onclick="getCommoditiesListByType('笔记本')">笔记本</a></li>
        <li><a href="#" onclick="getCommoditiesListByType('ipad')">ipad</a></li>>
        <li><a href="#" onclick="getCommoditiesListByType('相机')">相机</a></li>

      </ul>

    </div>


    <div id="beijingtu">
      <img src="/imgs/背景手表.jpg" style="width:100%" class="iii">
      <img src="/imgs/背景车.jpg" style="width:100%" class="iii">
      <img src="/imgs/背景衣服.jpg" style="width:100%" class="iii">
      <img src="/imgs/背景手机.jpg" style="width:100%" class="iii">

      <a class="pre" onclick="plusSlides(-1)"> < </a>
      <a class="next" onclick="plusSlides(1)"> > </a>

      <div id="dotlist">
        <span class="dot dot1" onclick="currentSlide(1)"></span>
        <span class="dot dot2" onclick="currentSlide(2)"></span>
        <span class="dot dot3" onclick="currentSlide(3)"></span>
        <span class="dot dot4" onclick="currentSlide(4)"></span>

      </div>

    </div>
  </div>


  <div id="main-body2">


  </div>

  <!-- 登录　注册 -->
  <div class="modal fade" id="loginAndregister" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" >
            <!-- Indicates a successful or positive action -->
            <button type="button" class="btn btn-success" onclick="showUserLoginModal()">登录</button>

            <!-- Contextual button for informational alert messages -->
            <button type="button" class="btn btn-info"  onclick="showUserRegisterModal()">注册</button>
          </h4>
        </div>
        <div id="userLoginModal">
          <div class="modal-body">
            <h1>登录</h1>
            <div class="form-group">
              <label for="loginUsername">用户名</label>
              <input id="loginUsername" type="text" class="form-control" placeholder="用户名">
            </div>
            <div class="form-group">
              <label for="loginPassword">密码</label>
              <input id="loginPassword" type="password" class="form-control"  placeholder="密码">
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" onclick="userLogin()">登录</button>
          </div>
        </div>
        <div id="userRegisterModal" style="display: none">
          <div class="modal-body" >
            <h1>注册</h1>
            <div class="form-group">
              <label for="registerUsername">用户名</label>
              <input id="registerUsername" type="email" class="form-control"  placeholder="用户名">
              <div id="tip"></div>
            </div>
            <div class="form-group">
              <label for="registerPassword">密码</label>
              <input id="registerPassword" type="password" class="form-control"  placeholder="密码">
            </div>
            <div class="form-group">
              <label for="reregisterPassword">重复密码</label>
              <input id="reregisterPassword" type="password" class="form-control"  placeholder="重复密码">
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary" onclick="userRegister()">注册</button>
          </div>
        </div>
        <div id="userLoginOkModal" style="display: none">
          <div class="modal-body" >
            登录成功！
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
          </div>
        </div>

      </div>
    </div>
  </div>
  <!-- 更新个人信息 -->
  <div class="modal fade" id="updateuserInfoBox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabelupdateBox">Modal title</h4>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <label for="edit_username">用户名</label>
            <input id="edit_username" type="email" class="form-control"  placeholder="用户名" readonly>
          </div>
          <div class="form-group">
            <label for="edit_password">密码</label>
            <input id="edit_password" type="password" class="form-control"  placeholder="密码">
          </div>
          <div class="form-group">
            <label for="edit_sex">性别</label>
            <select id="edit_sex" name="" id="">
              <option value="男">男</option>
              <option value="女">女</option>
            </select>
          </div>
          <div class="form-group">
            <label for="edit_name">名字</label>
            <input id="edit_name" type="text" class="form-control"  placeholder="名字">
          </div>
          <div class="form-group">
            <label for="edit_phone">电话</label>
            <input id="edit_phone" type="text" class="form-control"  placeholder="电话">
          </div>
          <div class="form-group">
            <label for="edit_age">年龄</label>
            <input id="edit_age" type="text" class="form-control"  placeholder="年龄">
          </div>
          <div class="form-group">
            <label for="edit_desc">简介</label>
            <input type="text" id="edit_desc" class="form-control" placeholder="简介" aria-describedby="basic-addon1">
          </div>
          <div class="form-group">
            <label for="userupdateImg">头像</label>
            <input type="file" id="userupdateImg">
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">确认更新个人信息</button>
        </div>
      </div>
    </div>
  </div>
  <!-- 我的购物车 -->
  <div class="modal fade" id="mygobuyCat" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabelmygobuyCat">我的购物车</h4>
        </div>
        <div class="modal-body" id="gobuyCarListBox">
          <ul class="list-group">
            <li class="list-group-item">Cras justo odio</li>
            <li class="list-group-item">Dapibus ac facilisis in</li>
            <li class="list-group-item">Morbi leo risus</li>
            <li class="list-group-item">Porta ac consectetur ac</li>
            <li class="list-group-item">Vestibulum at eros</li>
          </ul>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!-- 我的订单历史 -->
  <div class="modal fade" id="mygobuyHistory" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabelmygobuyHistory">我的订单历史</h4>
        </div>
        <div class="modal-body" id="gobuyHistoryListBox">
          <ul class="list-group">
            <li class="list-group-item">Cras justo odio</li>
            <li class="list-group-item">Dapibus ac facilisis in</li>
            <li class="list-group-item">Morbi leo risus</li>
            <li class="list-group-item">Porta ac consectetur ac</li>
            <li class="list-group-item">Vestibulum at eros</li>
          </ul>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>

  <!-- 投诉 -->
  <div class="modal fade" id="tousuBox" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabeltousuBox">投诉</h4>
        </div>
        <div class="modal-body">
          <textarea name="tousuMsg" id="tousuMsg" cols="30" rows="10"></textarea>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="sendTousuMag()">投诉</button>
        </div>
      </div>
    </div>
  </div>




  <script type="text/javascript">

    var info = JSON.parse(window.localStorage.getItem("userInfo"))
    var userInfo
    if(info){
      userInfo=info;
      console.log(userInfo)
      $("#loginNav").hide();
      if(userInfo.headImg){
        $("#userHeadIng").attr({"src":userInfo.headImg})
      }else {
        $("#userHeadIng").attr({"src":"/imgs/dog1.jpeg"})
      }
      $("#userUsername").html("用户："+userInfo.username)
    }else{
      $("#loginOkNav").hide();
    }
    //轮播图
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
      showSlides(slideIndex += n);
    }

    function currentSlide(n) {
      showSlides(slideIndex = n);
    }

    function showSlides(n) {
      var i;
      var slides = document.getElementsByClassName("iii");
      var dots = document.getElementById("dotlist").getElementsByTagName("span");
      if (n > slides.length) {slideIndex = 1}
      if (n < 1) {slideIndex = slides.length}
      for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
      }
      for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
      }

      slides[slideIndex-1].style.display = "block";
      dots[slideIndex-1].className += " active";
    }

    //登录注册
    function showUserRegisterModal() {
      $("#userRegisterModal").show()
      $("#userLoginModal").hide()
      $("#userLoginOkModal").hide()
    }
    function showUserLoginModal() {
      $("#userLoginModal").show()
      $("#userRegisterModal").hide()
      $("#userLoginOkModal").hide()
    }
    $("#registerUsername").blur(function () {
      var username = $(this).val();
      $.get("${pageContext.request.contextPath}/findUserAjaxServlet",{username :username},function (data) {
        console.log(data);

        if (data.userExit){
          $("#tip").html(data.msg);
          $("#tip").css("color","red");
          $("#re_username").val("")
        } else{
          $("#tip").html(data.msg);
          $("#tip").css("color","green");
        }
      },"json")
    })
    function userRegister() {
      var username = $("#registerUsername").val();
      var password = $("#registerPassword").val();
      var repassword = $("#reregisterPassword").val();
      console.log(password)
      console.log(repassword)
      if(username==""||password==""||repassword==""){
        alert("注册信息不能为空！")
        return
      }
      if(password!=repassword){
        alert("两次密码不一样！")
        return
      }
      var data = {
        username:username,
        password:password,
      }
      console.log(data);
      $.ajax({
        url:'${pageContext.request.contextPath}/userregister/add',
        type:'post',
        data:data,
        success:function(data){
          console.log(data);
          alert("注册成功！即将返回登录")
          return showUserLoginModal();
        },
        error:function(data){
          console.log("zou err");
          console.log(data)
        }
      });
    }

    function userLogin() {
      var username = $("#loginUsername").val();
      var password = $("#loginPassword").val();
      if(username==""||password==""){
        alert("登录信息不能为空！")
        return
      }

      var data = {
        username:username,
        password:password,
      }
      //data = JSON.stringify(data);
      console.log(data);
      $.ajax({
        url:'${pageContext.request.contextPath}/userregister/login',
        type:'post',
        data:data,
        success:function(data){
          console.log(data);
          $("#loginOkNav").show();$("#loginNav").hide();
          $("#userRegisterModal").hide()
          $("#userLoginModal").hide()
          $("#userLoginOkModal").show()
          userInfo = data.loginInfo;
          if(userInfo.headImg){
            $("#userHeadIng").attr({"src":userInfo.headImg})
          }else {
            $("#userHeadIng").attr({"src":"/imgs/dog1.jpeg"})
          }
          $("#userUsername").html("用户："+userInfo.username)
          var loginuserInfo = JSON.stringify(data.loginInfo);

          window.localStorage.setItem("userInfo",loginuserInfo)
          alert(data.msg)

        },
        error:function(data){
          console.log("zou err");
          console.log(data)
        }
      });
    }

    function loginOut() {
      alert("退出登录成功！")
      $("#loginOkNav").hide();$("#loginNav").show();$("#userLoginOkModal").hide();
      $("#userRegisterModal").hide()
      $("#userLoginModal").show()
      $("#userLoginOkModal").hide()
      window.localStorage.clear()
    }
    function getUserInfoByLocal(){
      var info = JSON.parse(window.localStorage.getItem("userInfo"))
      console.log(info)
      $("#edit_username").val(info.username)
      $("#edit_password").val(info.password)
      $("#edit_name").val(info.name)
      $("#edit_sex").val(info.sex)
      $("#edit_phone").val(info.phone)
      $("#edit_age").val(info.age)
      $("#edit_desc").val(info.desc)
    }
    $(document).on("click","#updateuserInfoBox .btn-primary",function () {


      var username= $("#edit_username").val()
      var password= $("#edit_password").val()
      var name = $("#edit_name").val()
      var sex= $("#edit_sex").val()
      var phone= $("#edit_phone").val()
      var age= $("#edit_age").val()
      var desc= $("#edit_desc").val()
      var id= userInfo.id;
      if(username==""||password==""||name==""||sex==""||phone==""||age==""||desc==""){
        alert("修改的信息不能为空！")
        return
      }
      var data = {
        id:id,
        username:username,
        password:password,
        name:name,
        sex:sex,
        phone:phone,
        age:age,
        desc:desc,
      }
      data = JSON.stringify(data);
      console.log(data);
      $.ajax({
        url:'${pageContext.request.contextPath}/updateUserInfo',
        type:'post',
        data:data,
        dataType:'json',
        contentType:'application/json',
        success:function(data){
          console.log(data);
          userupImg()
        },
        error:function(data){
          console.log("zou err");
          console.log(data)
          userupImg()
        }
      });
    })
    function userupImg(){
      var formData = new FormData();
      for(var index = 0; index < $('#userupdateImg')[0].files.length; index++){
        formData.append('file', $('#userupdateImg')[0].files[index]);
      }
      formData.append('id', userInfo.id);
      $.ajax({
        url:'${pageContext.request.contextPath}/updateUserInfoImg?id='+userInfo.id,
        type:'post',
        cache: false,
        data:formData,
        processData: false,
        contentType: false,
        enctype:"multipart/form-data",
        success:function(data){
          console.log("图片成功！")
          alert("更新成功！")
          userInfo = data.userInfo;
          window.localStorage.setItem("userInfo",userInfo)
          $("#userHeadIng").attr({"src":userInfo.headImg})
        },
        error:function(data){
          console.log("图片走失败")
        }
      });
    }
    //　商品的操作
    function getCommoditiesList() {
      $.get("${pageContext.request.contextPath}/getAllCommoditiesList",function (data) {
        var list = data.list;
        var str =  ``;
        for(var i = 0;i<list.length;i++){

          str += `<div class="tu">
                  <div class="picture"><a href="#"><img src="`+list[i].c_img+`"></a></div>
                  <div class="zi"><a href="#">类别：`+list[i].type+`-- 简介：`+list[i].c_desc+`</a></div>
                  <div class="mai"><a href="#">价格：￥ `+list[i].c_price+`<button type="button" class="btn btn-success" pri="`+list[i].c_price+`" uid="`+list[i].c_id+`">购买</button>
                  <button type="button" class="btn btn-info" uid="`+list[i].c_id+`">加入购物车</button></a>
                    <div class="count">

                    </div>
                  </div>

                </div>`
        }

        $("#main-body2").html(str)

      },"json")
    }
    getCommoditiesList();

    function getCommoditiesListByType(type) {
      $.get("${pageContext.request.contextPath}/getCommoditiesListByType?type="+type,function (data) {
        var list = data.list;
        var str =  ``;
        for(var i = 0;i<list.length;i++){

          str += `<div class="tu">
                  <div class="picture"><a href="#"><img src="`+list[i].c_img+`"></a></div>
                  <div class="zi"><a href="#">类别：`+list[i].type+`-- 简介：`+list[i].c_desc+`</a></div>
                  <div class="mai"><a href="#">价格：￥ `+list[i].c_price+`<button type="button" class="btn btn-success" pri="`+list[i].c_price+`" uid="`+list[i].c_id+`">购买</button>
                  <button type="button" class="btn btn-info" uid="`+list[i].c_id+`">加入购物车</button></a>
                    <div class="count">

                    </div>
                  </div>

                </div>`
        }

        $("#main-body2").html(str)

      },"json")
    }
    function getCommoditiesListByMoHu() {
      var mohu = $("#mohumsg").val()
      $.get("${pageContext.request.contextPath}/getCommoditiesListByMoHu?mohu="+mohu,function (data) {
        var list = data.list;
        var str =  ``;
        for(var i = 0;i<list.length;i++){

          str += `<div class="tu">
                  <div class="picture"><a href="#"><img src="`+list[i].c_img+`"></a></div>
                  <div class="zi"><a href="#">类别：`+list[i].type+`-- 简介：`+list[i].c_desc+`</a></div>
                  <div class="mai"><a href="#">价格：￥ `+list[i].c_price+`<button type="button" class="btn btn-success" pri="`+list[i].c_price+`" uid="`+list[i].c_id+`">购买</button>
                  <button type="button" class="btn btn-info" uid="`+list[i].c_id+`">加入购物车</button></a>
                    <div class="count">

                    </div>
                  </div>

                </div>`
        }

        $("#main-body2").html(str)

      },"json")
    }

    $(document).on("click","#main-body2 .btn-info",function () {
      var c_id =$(this).attr("uid")
      var u_id = userInfo.id
      if(confirm("确定加入购物车吗？")){
        $.get("${pageContext.request.contextPath}/addOrders",{c_id :c_id,u_id:u_id},function (data) {
            console.log(data);
            alert(data.msg)
        },"json")
      }
    })
    $(document).on("click","#main-body2 .btn-success",function () {
      var c_id =$(this).attr("uid")
      var u_id = userInfo.id
      var pri =$(this).attr("pri")
      if(confirm("确定购买价格为"+pri+"的物品？")){
        $.get("${pageContext.request.contextPath}/addOrdersBuy",{c_id :c_id,u_id:u_id},function (data) {
            alert("购买成功！")
        },"json")
      }
    })
    
    
    function getAllMyGoBuyCar() {
      var u_id = userInfo.id
      $.get("${pageContext.request.contextPath}/getAllMyGoBuyCar",{u_id:u_id},function (data) {
        var list = data.list;
        console.log(list)
        var str = `<ul class="list-group">
            `
        var tal=0
        for(var i = 0;i<list.length;i++){
          tal+= Number(list[i].c_price);
          str+=`<li class="list-group-item">`+(i+1)+`:价格为：￥`+list[i].c_price+`的`+list[i].type+`<img src="`+list[i].c_img+`" alt="" style="width: 50px;height: 50px;"><button type="button" class="btn btn-success" pri="`+list[i].c_price+`" o_id="`+list[i].o_id+`">购买</button>
<button type="button" class="btn btn-danger"  o_id="`+list[i].o_id+`">删除</button></li>`
        }
        str+=`<li class="list-group-item">总价钱为：￥`+tal+`</li></ul>`
        $("#gobuyCarListBox").html(str)
      },"json")
      
    }
    $(document).on("click","#gobuyCarListBox .btn-success",function () {
      var o_id =$(this).attr("o_id")
      var pri =$(this).attr("pri")
      if(confirm("确定购买价格为"+pri+"的物品？")){
        $.get("${pageContext.request.contextPath}/updateOrdertrue",{o_id :o_id},function (data) {
          alert("购买成功！")
          return getAllMyGoBuyCar()
        },"json")
      }
    })
    $(document).on("click","#gobuyCarListBox .btn-danger",function () {
      var o_id =$(this).attr("o_id")
      if(confirm("确定删除物品？")){
        $.get("${pageContext.request.contextPath}/orderDelById",{o_id :o_id},function (data) {
          alert("删除成功！")
          return getAllMyGoBuyCar()
        },"json")
      }
    })


    function getAllMyGoBuyHistory() {
      var u_id = userInfo.id
      $.get("${pageContext.request.contextPath}/getAllMyGoBuyHistory",{u_id:u_id},function (data) {
        var list = data.list;
        console.log(list)
        var str = `<ul class="list-group">
            `
        var tal=0
        for(var i = 0;i<list.length;i++){
          tal+= Number(list[i].c_price);
          str+=`<li class="list-group-item">`+(i+1)+`:价格为：￥`+list[i].c_price+`的`+list[i].type+`<img src="`+list[i].c_img+`" alt="" style="width: 50px;height: 50px;"></li>`
        }
        str+=`<li class="list-group-item">总价钱为：￥`+tal+`</li></ul>`
        $("#gobuyHistoryListBox").html(str)
      },"json")
    }
    
    
    function sendTousuMag() {
      var c_desc = $("#tousuMsg").val()
      var u_id = userInfo.id
      $.get("${pageContext.request.contextPath}/addComplaint",{c_desc:c_desc,u_id:u_id},function (data) {
        alert("投诉成功！")
      },"json")
    }
  </script>




  </body>
</html>