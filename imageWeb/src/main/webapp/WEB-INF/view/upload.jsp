<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Cyrus Studio</title>

<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700' rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="icon" href="images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="assets/style.css">
<link rel="stylesheet" href="assets/animate/animate.css" />
<link rel="stylesheet" href="assets/animate/set.css" />
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="assets/fileinput.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="assets/gallery/blueimp-gallery.min.css">

</head>

<body>
<div class="topbar animated fadeInLeftBig"></div>

<!-- Header Starts -->
<div class="navbar-wrapper">
      <div class="container">

        <div class="navbar navbar-default navbar-fixed-top" role="navigation" id="top-nav">
          <div class="container">
            <div class="navbar-header">
              <!-- Logo Starts -->
              <a class="navbar-brand" href="#home"><img src="images/logo.png" alt="logo"></a>
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
            </div>
            <!-- Nav Starts -->
            <div class="navbar-collapse  collapse">
              <ul class="nav navbar-nav navbar-right scroll">
                 <li ><a href="#contact"></a></li>
              </ul>
            </div>
            <!-- #Nav Ends -->
          </div>
        </div>
      </div>
    </div>
<!-- #Header Starts -->

<!--Contact Starts-->
<div id="contact" class="spacer">

<div class="container contactform center">
<h2 class="text-center  wowload fadeInUp"></h2>
  <div class="row wowload fadeInLeftBig"> 
  	<form enctype="multipart/form-data" action="doUpload.html" method="get">
        <div class="form-group">
            <div class="file-loading">
                <input type="file"  name="uploadfile" id="uploadfile" multiple  class="file-loading" >
            </div>
        </div>
    </form>
    <form meth="post" action="index.html" method="post">
    	<input type="hidden" name="token" value=${token} ></input>
    </form>
  </div>
</div>
</div>
<!--Contact Ends-->


<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>

<!-- Footer Starts -->
<div class="footer text-center spacer">
<p class="wowload flipInX"><a href="#"><i class="fa fa-facebook fa-2x"></i></a> <a href="#"><i class="fa fa-instagram fa-2x"></i></a> <a href="#"><i class="fa fa-twitter fa-2x"></i></a> <a href="#"><i class="fa fa-flickr fa-2x"></i></a> </p>
Copyright 2014 Cyrus Creative Studio. All rights reserved.More Templates <a href="http://www.bai.com/" target="_blank" title="个人相册">个人相册</a> - Collect from <a href="http://www.baidu.com/" title="个人相册" target="_blank">个人相册</a>
</div>
<!-- # Footer Ends -->



<!-- jquery -->
<script src="assets/jquery.js"></script>
<!-- fileInput -->
<script src="assets/fileinput.js"></script>
	<script src="assets/zh.js"></script>
<!-- wow script -->
<script src="assets/wow/wow.min.js"></script>


<!-- boostrap -->
<script src="assets/bootstrap/js/bootstrap.js" type="text/javascript" ></script>

<!-- jquery mobile -->
<script src="assets/mobile/touchSwipe.min.js"></script>
<script src="assets/respond/respond.js"></script>

<!-- gallery -->
<script src="assets/gallery/jquery.blueimp-gallery.min.js"></script>

<!-- custom script -->
<script src="assets/script.js"></script>

<script type="text/javascript">

$(function () {
    //0.初始化fileinput
    $('#uploadfile').on('fileuploaded', function(event, file, previewId, index, reader) {
	        console.log("fileloaded");
	    });
    var oFileInput = new FileInput();
    oFileInput.Init("uploadfile", "doUpload.html");
});

var FileInput = function () {
	var oFile = new Object();

    //初始化fileinput控件（第一次初始化）
    oFile.Init = function(ctrlName, uploadUrl) {
	    var control = $('#' + ctrlName);
	
	    //初始化上传控件的样式
	    control.fileinput({
	        language: 'zh', //设置语言
	        uploadUrl: uploadUrl, //上传的地址
	        uploadAsync: true, //默认异步上传
	        allowedFileExtensions: ['jpg', 'gif', 'png'],//接收的文件后缀
	        showUpload: true, //是否显示上传按钮
	        showCaption: false,//是否显示标题
	        browseClass: "btn btn-primary", //按钮样式     
	        maxFileCount: 20, //表示允许同时上传的最大文件个数
	        enctype: 'multipart/form-data',
	        validateInitialCount:true,
	        previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
	        msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
	    }).on('filepreupload', function(event, data, previewId, index) {
	        if(!data.response){
	        	alter("上传失败");
	        }else{
	        	window.location.href="http://localhost:8080/imageWeb/home.html?token=123456";
	        }
	    	console.log('File pre upload triggered');
		});
	}
    return oFile;
}
</script>
</body>
</html>