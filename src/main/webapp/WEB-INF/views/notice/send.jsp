<%@ page language="java" contentType="text/html; charset=UTF-8" %> 
<%@ include file="../common/header.jsp" %>
<html lang="zh">
	<head>
		<meta charset="utf-8" />
		<title>发信息</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<!-- basic styles -->

		<link href="${ctx}/static/ace/assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="${ctx}/static/ace/assets/css/font-awesome.min.css" />

		<!--[if IE 7]>
		  <link rel="stylesheet" href="${ctx}/static/ace/assets/css/font-awesome-ie7.min.css" />
		<![endif]-->

		<!-- page specific plugin styles -->

		<link rel="stylesheet" href="${ctx}/static/ace/assets/css/jquery-ui-1.10.3.custom.min.css" />
		<link rel="stylesheet" href="${ctx}/static/ace/assets/css/jquery.gritter.css" />

		<!-- ace styles -->

		<link rel="stylesheet" href="${ctx}/static/ace/assets/css/ace.min.css" />
		<link rel="stylesheet" href="${ctx}/static/ace/assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="${ctx}/static/ace/assets/css/ace-skins.min.css" />

		<!--[if lte IE 8]>
		  <link rel="stylesheet" href="${ctx}/static/ace/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->
		<!-- 自定义样式 -->
        <link rel="stylesheet" href="${ctx}/static/ace/assets/css/banbao/banbao.css" />
        
		<style>
			.spinner-preview {
				width:100px;
				height:100px;
				text-align:center;
				margin-top:60px;
			}
			
			.dropdown-preview {
				margin:0 5px;
				display:inline-block;
			}
			.dropdown-preview  > .dropdown-menu {
				display: block;
				position: static;
				margin-bottom: 5px;
			}
			
		</style>

		<!-- ace settings handler -->

		<script src="${ctx}/static/ace/assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

		<!--[if lt IE 9]>
		<script src="${ctx}/static/ace/assets/js/html5shiv.js"></script>
		<script src="${ctx}/static/ace/assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">	
			<!-- 顶部导航 -->		
			<jsp:include page="../common/navbar_header.jsp"></jsp:include>			
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>
               <!-- 左边工具栏 -->
			   <jsp:include page="../common/sidebar.jsp"></jsp:include>
			   
				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="${ctx}/admin">首页</a>
							</li>
							<li class="active">发信息</li>
						</ul><!-- .breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="icon-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- #nav-search -->
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								发消息
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="row">
									<div class="col-sm-12">
										<div class="tabbable">
											<ul class="nav nav-tabs" id="myTab">
												<li class="active">
													<a data-toggle="tab" href="#home">
														<i class="green bigger-110">
														<span class="fleft sendPic">
														<img width="80%" src="${ctx}/static/ace/assets/images/banbao/app1.png"></span>
														</i> 
                                                       	    <span class="send-info applicationTitle">布置作业 </span>
                                                        <span class="send-info applicationInfo">给学生布置作业</span>	
<!--                                                         <span class="send-info applicationInfo">给学生布置作业</span> -->
														
													</a>
												</li>

												<li>
													<a data-toggle="tab" href="#notice">
														<i class="green bigger-110">
														<span class="fleft sendPic">
															<img width="80%" src="${ctx}/static/ace/assets/images/banbao/app2.png">
															</span>
														</i>
                                                        <span class="send-info applicationTitle">通知家长 </span>
                                                        <span class="send-info applicationInfo">给家长发送通知</span>
													</a>
												</li>

												<li >
													<a data-toggle="tab"  href="#performance">
														<i class="green bigger-110">
														<span class="fleft sendPic">
														<img width="80%" src="${ctx}/static/ace/assets/images/banbao/app4.png">
														</span>
														</i>
                                                        <span class="send-info applicationTitle">在校表现 </span>
                                                        <span class="send-info applicationInfo">学生在班级表现</span>
													</a>
												</li>
												<li >
													<a data-toggle="tab"  href="#exam">
														<i class="green bigger-110">
														<span class="fleft sendPic">
														<img width="80%" src="${ctx}/static/ace/assets/images/banbao/app5.png">
														</span>
														</i>
                                                        <span class="send-info applicationTitle">发布成绩 </span>
                                                        <span class="send-info applicationInfo">发布学生考试成绩</span>
													</a>
												</li>
											</ul>

											<div class="tab-content">
												<div id="home" class="tab-pane in active">
													<table class="tableForm">
													    <tr>
														<td style="width: 58px; vertical-align: top; padding: 0;" align="right"></td>
														<td style="padding:0;">
						                                    <div id="checkedCountBox" class="colorP" style="color: rgb(245, 146, 1); font-size: 13px;">
						                                       	 已选<span id="checkedCountC">1</span>个班级，<span id="checkedCountS">2</span>名学生
						                                    </div>
						                                </td>
						                                </tr>
						                                <tr>
							                                <td style=" width: 58px; vertical-align: top;" align="right">
							                                    <span style="display: inline-block;width: 58px; margin-top: 6px;">收件人：</span> 
							                                </td>
							                                <td width="99%" style=""> 
							                                    <div class="inputUserBox" style=" ">
							                                        <div id="toAreaCtrlBox" class="schoolCheckUser"> 
							                                            <ul id="selectCacheBox" class="checkedBox">
							                                            <li id="userChecked_1_529116867_617089608" class="checkedItme">
							                                            	<a href="javascript:;" title="蛋蛋2" sid="1" cid="529116867" userid="617089608" uname="蛋蛋2">
							                                            <input style="display: none;" name="Group[uid][]" type="checkbox" checked="checked" value="1_0_617089608_529116867"><span class="delBtn"></span><span class="text">蛋蛋2</span></a>
							                                            </li>
							                                            <li id="userChecked_1_529116867_615779408" class="checkedItme"><a href="javascript:;" title="蛋蛋" sid="1" cid="529116867" userid="615779408" uname="蛋蛋"><input style="display: none;" name="Group[uid][]" type="checkbox" checked="checked" value="1_0_615779408_529116867"><span class="delBtn"></span><span class="text">蛋蛋</span></a></li></ul>
							                                        </div>
							                                        <a href="javascript:;" rel="addTtmeBtn" class="btn btn-default addTtmeBtn"><em></em></a>
							                                    </div>
							                                   
							                                </td>
							                            </tr>
													</table>
												</div>

												<div id="notice" class="tab-pane">
													<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid.</p>
												</div>

												<div id="performance" class="tab-pane">
													<p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade.</p>
												</div>

												<div id="exam" class="tab-pane">
													<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin.</p>
												</div>
											</div>
										</div>
									</div><!-- /span -->

<!-- 									<div class="vspace-xs-6"></div> -->

								</div><!-- /row -->

								<div class="space"></div>
			
								<script type="text/javascript">
									var $path_assets = "${ctx}/static/ace/assets";//this will be used in gritter alerts containing images
								</script>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->

				<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; Choose Skin</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								Inside
								<b>.container</b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->


		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='${ctx}/static/ace/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='${ctx}/static/ace/assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='${ctx}/static/ace/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${ctx}/static/ace/assets/js/bootstrap.min.js"></script>
		<script src="${ctx}/static/ace/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="${ctx}/static/ace/assets/js/excanvas.min.js"></script>
		<![endif]-->

		<script src="${ctx}/static/ace/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="${ctx}/static/ace/assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="${ctx}/static/ace/assets/js/bootbox.min.js"></script>
		<script src="${ctx}/static/ace/assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="${ctx}/static/ace/assets/js/jquery.gritter.min.js"></script>
		<script src="${ctx}/static/ace/assets/js/spin.min.js"></script>

		<!-- ace scripts -->

		<script src="${ctx}/static/ace/assets/js/ace-elements.min.js"></script>
		<script src="${ctx}/static/ace/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<script type="text/javascript">
			jQuery(function($) {
				/**
				$('#myTab a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
				  console.log(e.target.getAttribute("href"));
				})
				*/
			
			
				$('#accordion-style').on('click', function(ev){
					var target = $('input', ev.target);
					var which = parseInt(target.val());
					if(which == 2) $('#accordion').addClass('accordion-style2');
					 else $('#accordion').removeClass('accordion-style2');
				});
			
			
				var oldie = /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase());
				$('.easy-pie-chart.percentage').each(function(){
					$(this).easyPieChart({
						barColor: $(this).data('color'),
						trackColor: '#EEEEEE',
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: 8,
						animate: oldie ? false : 1000,
						size:75
					}).css('color', $(this).data('color'));
				});
			
				$('[data-rel=tooltip]').tooltip();
				$('[data-rel=popover]').popover({html:true});
			
			
				$('#gritter-regular').on(ace.click_event, function(){
					$.gritter.add({
						title: 'This is a regular notice!',
						text: 'This will fade out after a certain amount of time. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" class="blue">magnis dis parturient</a> montes, nascetur ridiculus mus.',
						image: $path_assets+'/avatars/avatar1.png',
						sticky: false,
						time: '',
						class_name: (!$('#gritter-light').get(0).checked ? 'gritter-light' : '')
					});
			
					return false;
				});
			
				$('#gritter-sticky').on(ace.click_event, function(){
					var unique_id = $.gritter.add({
						title: 'This is a sticky notice!',
						text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" class="red">magnis dis parturient</a> montes, nascetur ridiculus mus.',
						image: $path_assets+'/avatars/avatar.png',
						sticky: true,
						time: '',
						class_name: 'gritter-info' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : '')
					});
			
					return false;
				});
			
			
				$('#gritter-without-image').on(ace.click_event, function(){
					$.gritter.add({
						// (string | mandatory) the heading of the notification
						title: 'This is a notice without an image!',
						// (string | mandatory) the text inside the notification
						text: 'This will fade out after a certain amount of time. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" class="orange">magnis dis parturient</a> montes, nascetur ridiculus mus.',
						class_name: 'gritter-success' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : '')
					});
			
					return false;
				});
			
			
				$('#gritter-max3').on(ace.click_event, function(){
					$.gritter.add({
						title: 'This is a notice with a max of 3 on screen at one time!',
						text: 'This will fade out after a certain amount of time. Vivamus eget tincidunt velit. Cum sociis natoque penatibus et <a href="#" class="green">magnis dis parturient</a> montes, nascetur ridiculus mus.',
						image: $path_assets+'/avatars/avatar3.png',
						sticky: false,
						before_open: function(){
							if($('.gritter-item-wrapper').length >= 3)
							{
								return false;
							}
						},
						class_name: 'gritter-warning' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : '')
					});
			
					return false;
				});
			
			
				$('#gritter-center').on(ace.click_event, function(){
					$.gritter.add({
						title: 'This is a centered notification',
						text: 'Just add a "gritter-center" class_name to your $.gritter.add or globally to $.gritter.options.class_name',
						class_name: 'gritter-info gritter-center' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : '')
					});
			
					return false;
				});
				
				$('#gritter-error').on(ace.click_event, function(){
					$.gritter.add({
						title: 'This is a warning notification',
						text: 'Just add a "gritter-light" class_name to your $.gritter.add or globally to $.gritter.options.class_name',
						class_name: 'gritter-error' + (!$('#gritter-light').get(0).checked ? ' gritter-light' : '')
					});
			
					return false;
				});
					
			
				$("#gritter-remove").on(ace.click_event, function(){
					$.gritter.removeAll();
					return false;
				});
					
			
				///////
			
			
				$("#bootbox-regular").on(ace.click_event, function() {
					bootbox.prompt("What is your name?", function(result) {
						if (result === null) {
							//Example.show("Prompt dismissed");
						} else {
							//Example.show("Hi <b>"+result+"</b>");
						}
					});
				});
					
				$("#bootbox-confirm").on(ace.click_event, function() {
					bootbox.confirm("Are you sure?", function(result) {
						if(result) {
							//
						}
					});
				});
					
				$("#bootbox-options").on(ace.click_event, function() {
					bootbox.dialog({
						message: "<span class='bigger-110'>I am a custom dialog with smaller buttons</span>",
						buttons: 			
						{
							"success" :
							 {
								"label" : "<i class='icon-ok'></i> Success!",
								"className" : "btn-sm btn-success",
								"callback": function() {
									//Example.show("great success");
								}
							},
							"danger" :
							{
								"label" : "Danger!",
								"className" : "btn-sm btn-danger",
								"callback": function() {
									//Example.show("uh oh, look out!");
								}
							}, 
							"click" :
							{
								"label" : "Click ME!",
								"className" : "btn-sm btn-primary",
								"callback": function() {
									//Example.show("Primary button");
								}
							}, 
							"button" :
							{
								"label" : "Just a button...",
								"className" : "btn-sm"
							}
						}
					});
				});
			
			
			
				$('#spinner-opts small').css({display:'inline-block', width:'60px'})
			
				var slide_styles = ['', 'green','red','purple','orange', 'dark'];
				var ii = 0;
				$("#spinner-opts input[type=text]").each(function() {
					var $this = $(this);
					$this.hide().after('<span />');
					$this.next().addClass('ui-slider-small').
					addClass("inline ui-slider-"+slide_styles[ii++ % slide_styles.length]).
					css({'width':'125px'}).slider({
						value:parseInt($this.val()),
						range: "min",
						animate:true,
						min: parseInt($this.data('min')),
						max: parseInt($this.data('max')),
						step: parseFloat($this.data('step')),
						slide: function( event, ui ) {
							$this.attr('value', ui.value);
							spinner_update();
						}
					});
				});
			
			
			
			
			
				$.fn.spin = function(opts) {
					this.each(function() {
					  var $this = $(this),
						  data = $this.data();
			
					  if (data.spinner) {
						data.spinner.stop();
						delete data.spinner;
					  }
					  if (opts !== false) {
						data.spinner = new Spinner($.extend({color: $this.css('color')}, opts)).spin(this);
					  }
					});
					return this;
				};
			
				function spinner_update() {
					var opts = {};
					$('#spinner-opts input[type=text]').each(function() {
						opts[this.name] = parseFloat(this.value);
					});
					$('#spinner-preview').spin(opts);
				}
			
			
			
				$('#id-pills-stacked').removeAttr('checked').on('click', function(){
					$('.nav-pills').toggleClass('nav-stacked');
				});
			
			
			});
		</script>
</body>
</html>

