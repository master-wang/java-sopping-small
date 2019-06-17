
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>跨境电商后台管理系统</title>
    <link rel="shortcut icon" href="/imgs/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/style.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/bootstrap.js"></script>
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
            <a class="navbar-brand" href="#">跨境电商后台管理系统</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}">退出后台系统</a></li>

            </ul>
        </div>
    </div>
</nav>

<div id="wrapper">

    <div id="sidebar-nav" class="sidebar">
        <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 95%;"><div class="sidebar-scroll" style="overflow: hidden; width: auto; height: 95%;">
            <nav>
                <ul class="nav">

                    <li class="active" onclick="index()">
                        <a href="#">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                            <span>首页</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" onclick="getUserList()">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-package"><line x1="16.5" y1="9.4" x2="7.5" y2="4.21"></line><path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg>
                            <span>用户列表</span>
                        </a>
                    </li>
                    

                    <li>
                        <a href="#" onclick="getCommoditiesList()">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-grid"><rect x="3" y="3" width="7" height="7"></rect><rect x="14" y="3" width="7" height="7"></rect><rect x="14" y="14" width="7" height="7"></rect><rect x="3" y="14" width="7" height="7"></rect></svg>
                            <span>商品列表</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" onclick="addNewCommodity()">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map"><polygon points="1 6 1 22 8 18 16 22 23 18 23 2 16 6 8 2 1 6"></polygon><line x1="8" y1="2" x2="8" y2="18"></line><line x1="16" y1="6" x2="16" y2="22"></line></svg>
                            <span>商品添加</span>
                        </a>
                    </li>

                    <li>
                        <a href="#" onclick="getComplaintList()">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bar-chart"><line x1="12" y1="20" x2="12" y2="10"></line><line x1="18" y1="20" x2="18" y2="4"></line><line x1="6" y1="20" x2="6" y2="16"></line></svg>
                            <span>投诉管理</span>
                        </a>
                    </li>



                </ul></nav>
        </div><div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 821px;"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>

    </div>

    <div class="main">

        <div class="jumbotron" id="infoBox">
            <h1>欢迎你管理员</h1>
            <p>退出后台系统</p>
        </div>
    </div>
    <!-- 用户的添加-->
    <!-- Modal -->
    <div class="modal fade" id="myModaluseradd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabeluseradd">添加用户</h4>
                </div>
                <div class="modal-body">
                    <label style="font-size: 20px;color: white">用戶名</label>
                    <div class="input-group">
                        <input type="text" id="add_username" class="form-control" placeholder="用戶名" aria-describedby="basic-addon1">
                    </div>
                    <label style="font-size: 20px;color: white">密碼</label>
                    <div class="input-group">
                        <input type="password" id="add_password" class="form-control" placeholder="密碼" aria-describedby="basic-addon1">
                    </div>
                    <br>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary">添加</button>
                </div>
            </div>
        </div>
    </div>
    <!-- 用户的修改-->
    <!-- Modal -->
    <div class="modal fade" id="myModaluseredit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabeluseredit">用户的修改</h4>
                </div>
                <input type="hidden" id="edit_id">
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon" >用戶名</span>
                        <input type="text" id="edit_username" class="form-control" placeholder="用戶名" aria-describedby="basic-addon1" readonly>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" >密碼</span>
                        <input type="password" id="edit_password" class="form-control" placeholder="密碼" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" >名字</span>
                        <input type="text" id="edit_name" class="form-control" placeholder="名字" aria-describedby="basic-addon1">
                    </div>
                    <select name="" id="edit_sex" value="男" style="height: 30px;width: 100px;">
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>
                    <div class="input-group">
                        <span class="input-group-addon" >电话</span>
                        <input type="text" id="edit_phone" class="form-control" placeholder="电话" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" >年龄</span>
                        <input type="text" id="edit_age" class="form-control" placeholder="年龄" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" >简介</span>
                        <input type="text" id="edit_desc" class="form-control" placeholder="简介" aria-describedby="basic-addon1">
                    </div>
                    <select name="" id="edit_is_admin" value="false" style="height: 30px;width: 100px;">
                        <option value="false">普通用户</option>
                        <option value="true">管理员</option>
                    </select>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary">修改</button>
                </div>
            </div>
        </div>
    </div>

    <script>

        var userInfo = JSON.parse(window.localStorage.getItem("userInfo"))
        if(!userInfo||userInfo.is_admin == 'false'){
            alert("你不是管理员！")
            window.location.replace("${pageContext.request.contextPath}")
        }
        function index() {
            var str = `<h1>欢迎你管理员</h1>
            <p>后台系统</p>`
            $("#infoBox").html(str)
        }
        //用户的操作
        function getUserList() {
            console.log("userList")
            $.get("${pageContext.request.contextPath}/getUserList",function (data) {
                console.log(data);
                var userList = data.Userlist
                var str = `
                <div class="jumbotron" id="shouyehuanying">
                <h1>用户列表</h1><button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModaluseradd" style="float: left">添加</button>
                <table class="table table-hover table-bordered table-striped" id="userTable">
                        <tr>
                        <td>序号</td>
                        <td>用户名</td>
                        <td>密码</td>
                        <td>名字</td>
                        <td>性别</td>
                        <td>电话</td>
                        <td>年龄</td>
                        <td>简介</td>
                        <td>是否管理员</td>
                        <td>操作</td>
                    </tr>`;
                for(var i =0;i<userList.length;i++){
                    console.log(userList[i].username)
                    str += `<tr>
                    <td>`+(i+1)+`</td>
                    <td>`+userList[i].username+`</td>
                    <td>`+userList[i].password+`</td>
                    <td>`+userList[i].name+`</td>
                    <td>`+userList[i].sex+`</td>
                    <td>`+userList[i].phone+`</td>
                    <td>`+userList[i].age+`</td>
                    <td>`+userList[i].desc+`</td>
                    <td>`+userList[i].is_admin+`</td>
                    <td><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModaluseredit" uid="`+userList[i].id+`">修改</button>
                        <button type="button" class="btn btn-danger" uid="`+userList[i].id+`">删除</button></td>
                </tr>`
                }
                str+=`</table></div>
            </div>`;
                $("#infoBox").html(str)
            },"json")
        }

        $(document).on("click","#userTable .btn-danger",function () {
            var id =$(this).attr("uid")
            if(confirm("你是否要删除用户！！！")){
                $.get("${pageContext.request.contextPath}/deleteUserById",{id :id},function (data) {
                    console.log(data);
                        return getUserList()



                },"json")
            }
        })
        $(document).on("click","#userTable .btn-warning",function () {
            var id =$(this).attr("uid")

            $.get("${pageContext.request.contextPath}/getUserInfoById",{id :id},function (data) {
                console.log(data);
                var userInfo = data.userInfo;
                $("#edit_username").val(userInfo.username)
                $("#edit_password").val(userInfo.password)
                $("#edit_name").val(userInfo.name)
                $("#edit_sex").val(userInfo.sex)
                $("#edit_phone").val(userInfo.phone)
                $("#edit_age").val(userInfo.age)
                $("#edit_desc").val(userInfo.desc)
                $("#edit_is_admin").val(userInfo.is_admin)
                $("#edit_id").val(userInfo.id);
            },"json")

        })

        function deleUserById(id) {
            console.log(id)
            if(confirm("是否要删除ｉd为"+id+"的用户")){
                alert("删除成功")
            }
        }
        $(document).on("click","#myModaluseradd .btn-primary",function () {
            var username = $("#add_username").val();
            var password = $("#add_password").val();
            if(username==""||password==""){
                alert("添加信息不能为空！")
                return
            }
            var data = {
                username:username,
                password:password,
            }
            //data = JSON.stringify(data);
            console.log(data);
            $.ajax({
                url:'${pageContext.request.contextPath}/adminUserAdd',
                type:'post',
                data:data,
                success:function(data){
                    console.log(data);
                    alert("添加成功！")
                        return getUserList()
                },
                error:function(data){
                    console.log("zou err");
                    console.log(data)
                }
            });
        })
        $(document).on("click","#myModaluseredit .btn-primary",function () {
            var username= $("#edit_username").val()
            var password= $("#edit_password").val()
            var name = $("#edit_name").val()
            var sex= $("#edit_sex").val()
            var phone= $("#edit_phone").val()
            var age= $("#edit_age").val()
            var desc= $("#edit_desc").val()
            var is_admin= $("#edit_is_admin").val()
            var id= $("#edit_id").val();
            if(username==""||password==""||name==""||sex==""||phone==""||age==""||desc==""||is_admin==""){
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
                is_admin:is_admin
            }
            //data = JSON.stringify(data);
            console.log(data);
            $.ajax({
                url:'${pageContext.request.contextPath}/adminUserEditById',
                type:'post',
                data:data,
                success:function(data){
                    console.log(data);
                    alert("修改成功！")
                        return getUserList()
                },
                error:function(data){
                    console.log("zou err");
                    console.log(data)
                }
            });
        })
        
        //　商品的操作
        function getCommoditiesList() {
            $.get("${pageContext.request.contextPath}/getAllCommoditiesList",function (data) {
                var list = data.list;
                var str = `
                <div class="jumbotron" id="commoList">
                <h1>商品列表</h1>
                <table class="table table-hover table-bordered table-striped" id="commodityTable">
                        <tr>
                        <td>序号</td>
                        <td>价格</td>
                        <td>简介</td>
                        <td>种类</td>
                        <td>图片</td>
                        <td>操作</td>
                    </tr>`;
                for(var i =0;i<list.length;i++){
                    str += `<tr>
                    <td>`+(i+1)+`</td>
                    <td>`+list[i].c_price+`</td>
                    <td>`+list[i].c_desc+`</td>
                    <td>`+list[i].type+`</td>
                    <td><img src="`+list[i].c_img+`" alt="" style="width: 50px;height: 50px;"></td>
                    <td>
                        <button type="button" class="btn btn-danger" uid="`+list[i].c_id+`">删除</button></td>
                </tr>`
                }
                str+=`</table></div>
            </div>`;
                $("#infoBox").html(str)

            },"json")
        }
        $(document).on("click","#commodityTable .btn-danger",function () {
            var c_id =$(this).attr("uid")
            if(confirm("你是否要删除商品！！！")){
                $.get("${pageContext.request.contextPath}/deleteCommodityById",{c_id :c_id},function (data) {
                    console.log(data);
                    return getCommoditiesList()



                },"json")
            }
        })
        function addNewCommodity() {
            var str = `<h1>商品的添加</h1>
            <div id="addCommodityBox">
            <div class="modal-body">
                        <div class="form-group">
                            <label for="addCommodityPrice">商品价格</label>
                            <input id="addCommodityPrice" type="text" class="form-control"  placeholder="商品价格">
                        </div>
                        <div class="form-group">
                            <label for="addCommodityDesc">商品简介</label>
                            <input id="addCommodityDesc" type="text" class="form-control"  placeholder="商品简介">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">类别</label>
                            <select name="" id="addCommodityType" value="电脑">
                                    <option value="电脑">电脑</option>
                                    <option value="手机">手机</option>
                                    <option value="笔记本">笔记本</option>
                                    <option value="ipad">ipad</option>
                                    <option value="相机">相机</option>
                            </select>
                        </div>
                        <div class="form-group">
                                <label for="addCommodityImg">商品图片</label>
                                <input type="file" id="addCommodityImg">
                            </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">添加</button>
                    </div>
        </div>`
            $("#infoBox").html(str)
        }

        $(document).on("click","#addCommodityBox .btn-primary",function () {
            console.log("添加商品进入")
            var data = {
                "c_price":$("#addCommodityPrice").val(),
                "c_desc":$("#addCommodityDesc").val(),
                "type":$("#addCommodityType").val(),
            }
            data=JSON.stringify(data);
            var formData = new FormData();
            for(var index = 0; index < $('#addCommodityImg')[0].files.length; index++){
                formData.append('file', $('#addCommodityImg')[0].files[index]);
            }
            console.log(formData);
            console.log(data);
            if ($("#addCommodityPrice").val()==""||
                $("#addCommodityDesc").val()==""||
                $("#addCommodityType").val()==""
            ){
                alert("信息不能为空！！");
            } else {
                $.ajax({
                    url:'${pageContext.request.contextPath}/addCommodity',
                    type:'post',
                    data:data,
                    dataType:'json',
                    contentType:'application/json',
                    success:function(data){
                        console.log(data);
                        comAddImg(data.c_id)
                    },
                    error:function(data){
                        console.log("zou err");
                        console.log(data)
                        comAddImg()
                    }
                });
            }
        })

        function comAddImg(c_id) {
            var formData = new FormData();
            for(var index = 0; index < $('#addCommodityImg')[0].files.length; index++){
                formData.append('file', $('#addCommodityImg')[0].files[index]);
            }
            formData.append('c_id', c_id);
            $.ajax({
                url:'${pageContext.request.contextPath}/addCommodityImg?c_id='+c_id,
                type:'post',
                cache: false,
                data:formData,
                processData: false,
                contentType: false,
                enctype:"multipart/form-data",
                success:function(data){
                    console.log("图片成功！")
                    alert("添加成功！")

                },
                error:function(data){
                    console.log("图片走失败")
                }
            });
        }
        
        function getComplaintList() {
            $.get("${pageContext.request.contextPath}/getComplaintList",function (data) {
                var list = data.list;
                var str = `
                <div class="jumbotron" id="commoList">
                <h1>投诉列表</h1>
                <table class="table table-hover table-bordered table-striped" id="complaintTable">
                        <tr>
                        <td>序号</td>
                        <td>名字</td>
                        <td>投诉内容</td>
                        <td>操作</td>
                    </tr>`;
                for(var i =0;i<list.length;i++){
                    str += `<tr>
                    <td>`+(i+1)+`</td>
                    <td>`+list[i].name+`</td>
                    <td>`+list[i].c_desc+`</td>
                    <td>
                        <button type="button" class="btn btn-danger" uid="`+list[i].c_id+`">删除</button></td>
                </tr>`
                }
                str+=`</table></div>
            </div>`;
                $("#infoBox").html(str)

            },"json")
        }
        $(document).on("click","#complaintTable .btn-danger",function () {
            var c_id =$(this).attr("uid")
            if(confirm("你是否要删除该投诉！！！")){
                $.get("${pageContext.request.contextPath}/deleteComplaintById",{c_id :c_id},function (data) {
                    console.log(data);
                    return getComplaintList()



                },"json")
            }
        })
    </script>
</div>
</body>
</html>
