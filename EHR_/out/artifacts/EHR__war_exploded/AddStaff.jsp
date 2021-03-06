<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>新增员工</title>
  <style type="text/css">
    .box {
      width: 200px;
      height: 200px;
      background: skyblue;
      text-align: center;
      /*水平居中*/
      line-height: 200px;
      /*垂直居中   行高(line-height)需与该div的高度值(height)一致*/
      overflow: hidden;
      /*防止内容超出容器或产生自动换行*/
    }

    #form {
      float: left;
      font-family: PingFangSC-Regular;
      letter-spacing: 0.32px;
      font-size: 19px;
      box-sizing: border-box;
      margin-top: 0px;
      padding-left: 50px;
      width: 70%;
      float: left;
      color: #2A4960;
    }

    input {
      font-size: 15px;
      padding: 2px 7px;
      margin-top: 5px;
/*      margin-bottom: 5px;*/
    }

    select {
      margin-top: 9px;
      font-size: 15px;
      margin-left: 3px;
      margin-right: 3px;
    }
    textarea{
      width: 100px;
      height: 30px;
      padding:5px 5px;
/*
      float: left;
      clear: both;
*/
    }
    .smallInput{
      width: 70px;
    }
    textarea{
      resize: none;
      font-size: 14px;
      width: 360px;
      height: 40px;
      border-color: rgba(0,0,0,0.2);
    }
	#submit {
		cursor: pointer;
		/*      float: right;*/
		position: fixed;
		top: 390px;
		left: 980px;
		margin-top: 6px;
		margin-bottom: 27px;
		padding: 6px 22px;
		font-weight: 400;
		text-align: center width: 40px;
		height: 20px;
		color: white;
		background-color: #2A4960;
		border-bottom: 3px solid #2A4980;
		/*      border-radius: 9px;*/
	}
  </style>
</head>

<body>
  <form action="/AddStaffServlet" method="Get" id = "form">
 
 姓名: <input type="text" class="smallInput" name="Name" /> 年龄: <input type="text" class="smallInput" name="Age"/><br />
	  员工号: <input type="text" id="Id" name="Id" /><br />
	  部门:   <select name="Department" id="first-option" onChange="change()">
	 				 <option value="技术部">技术部</option>
	  					<option value="客服部">客服部</option>
	 				 <option value="市场部">市场部</option>
					  <option value="行政部">行政部</option>
			</select> 职位: <select name="Post" id="second-option">
				  <option value="技术主管">技术主管</option>
				  <option value="研发主管">研发主管</option>
				  <option value="产品开发工程师">产品开发工程师</option>
				  <option value="产品开发技术员">产品开发技术员</option>

  </select> 等级: <select name="Level">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				</select><br />
			语言能力: <input type="checkbox" name="Language" value="中文">中文
						<input type="checkbox" name="Language" value="英文">英文
						<input type="checkbox" name="Language" value="日语">日语
						<input type="checkbox" name="Language" value="韩语">韩语
						<input type="checkbox" name="Language" value="德语">德语<br />
    工作经历:<br> <textarea type="text" name="Career" /></textarea><br />
			家庭及社会关系:<br> <textarea type="text" name="Relationship" /></textarea><br />
			入职日期:  <select name="In-time-year">
					 <option value="null">未入职</option>
				     <option value="2000">2000</option>
				     <option value="2001">2001</option>
				     <option value="2002">2002</option>
				     <option value="2003">2003</option>
				     <option value="2004">2004</option>
				     <option value="2005">2005</option>
				     <option value="2006">2006</option>
				     <option value="2007">2007</option>
				     <option value="2008">2008</option>
				     <option value="2009">2009</option>
				     <option value="2010">2010</option>
				     <option value="2011">2011</option>
				     <option value="2012">2012</option>
				     <option value="2013">2013</option>
				     <option value="2014">2014</option>
				     <option value="2015">2015</option>
				     <option value="2016">2016</option>
				     <option value="2017">2017</option>
				     <option value="2018">2018</option>
				     </select>年
				       <select name="In-time-month">
				     <option value="null">未入职</option>
				     <option value="01">01</option>
				     <option value="02">02</option>
				     <option value="03">03</option>
				     <option value="04">04</option>
				     <option value="05">05</option>
				     <option value="06">06</option>
				     <option value="07">07</option>
				     <option value="08">08</option>
				     <option value="09">09</option>
				     <option value="10">10</option>
				     <option value="11">11</option>
				     <option value="12">12</option>
				     </select>月
				     <select name="In-time-day">
				     <option value="null">未入职</option>
					<option value="01">01</option>
					<option value="02">02</option>
					<option value="03">03</option>
					<option value="04">04</option>
					<option value="05">05</option>
					<option value="06">06</option>
					<option value="07">07</option>
					<option value="08">08</option>
					<option value="09">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
                     </select>日 <br />
			实习日期:  <select name="Begin-time-year">
					 <option value="null">未实习</option>
				     <option value="2000">2000</option>
				     <option value="2001">2001</option>
				     <option value="2002">2002</option>
				     <option value="2003">2003</option>
				     <option value="2004">2004</option>
				     <option value="2005">2005</option>
				     <option value="2006">2006</option>
				     <option value="2007">2007</option>
				     <option value="2008">2008</option>
				     <option value="2009">2009</option>
				     <option value="2010">2010</option>
				     <option value="2011">2011</option>
				     <option value="2012">2012</option>
				     <option value="2013">2013</option>
				     <option value="2014">2014</option>
				     <option value="2015">2015</option>
				     <option value="2016">2016</option>
				     <option value="2017">2017</option>
				     <option value="2018">2018</option>
				     </select>
				      年 <select name="Begin-time-month">
				      <option value="null">未实习</option>
				     <option value="01">01</option>
				     <option value="02">02</option>
				     <option value="03">03</option>
				     <option value="04">04</option>
				     <option value="05">05</option>
				     <option value="06">06</option>
				     <option value="07">07</option>
				     <option value="08">08</option>
				     <option value="09">09</option>
				     <option value="10">10</option>
				     <option value="11">11</option>
				     <option value="12">12</option>
				     </select>
				     月<select name="Begin-time-day">
				     <option value="null">未实习</option>
					<option value="01">01</option>
					<option value="02">02</option>
					<option value="03">03</option>
					<option value="04">04</option>
					<option value="05">05</option>
					<option value="06">06</option>
					<option value="07">07</option>
					<option value="08">08</option>
					<option value="09">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
                     </select>日 <br />
               实习结束日期:  <select name="End-time-year">
                     <option value="null">未结束实习</option>
				     <option value="2000">2000</option>
				     <option value="2001">2001</option>
				     <option value="2002">2002</option>
				     <option value="2003">2003</option>
				     <option value="2004">2004</option>
				     <option value="2005">2005</option>
				     <option value="2006">2006</option>
				     <option value="2007">2007</option>
				     <option value="2008">2008</option>
				     <option value="2009">2009</option>
				     <option value="2010">2010</option>
				     <option value="2011">2011</option>
				     <option value="2012">2012</option>
				     <option value="2013">2013</option>
				     <option value="2014">2014</option>
				     <option value="2015">2015</option>
				     <option value="2016">2016</option>
				     <option value="2017">2017</option>
				     <option value="2018">2018</option>
				     </select>
				      年 <select name="End-time-month">
				      <option value="null">未结束实习</option>
				     <option value="01">01</option>
				     <option value="02">02</option>
				     <option value="03">03</option>
				     <option value="04">04</option>
				     <option value="05">05</option>
				     <option value="06">06</option>
				     <option value="07">07</option>
				     <option value="08">08</option>
				     <option value="09">09</option>
				     <option value="10">10</option>
				     <option value="11">11</option>
				     <option value="12">12</option>
				     </select>
				     月<select name="End-time-day">
				     <option value="null">未结束实习</option>
					<option value="01">01</option>
					<option value="02">02</option>
					<option value="03">03</option>
					<option value="04">04</option>
					<option value="05">05</option>
					<option value="06">06</option>
					<option value="07">07</option>
					<option value="08">08</option>
					<option value="09">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
                     </select> 日<br />
                    离职日期: <select name="Exit-time-year">
                     <option value="null">未离职</option>
				     <option value="2000">2000</option>
				     <option value="2001">2001</option>
				     <option value="2002">2002</option>
				     <option value="2003">2003</option>
				     <option value="2004">2004</option>
				     <option value="2005">2005</option>
				     <option value="2006">2006</option>
				     <option value="2007">2007</option>
				     <option value="2008">2008</option>
				     <option value="2009">2009</option>
				     <option value="2010">2010</option>
				     <option value="2011">2011</option>
				     <option value="2012">2012</option>
				     <option value="2013">2013</option>
				     <option value="2014">2014</option>
				     <option value="2015">2015</option>
				     <option value="2016">2016</option>
				     <option value="2017">2017</option>
				     <option value="2018">2018</option>
				     </select>年
				       <select name="Exit-time-month">
				      <option value="null">未离职</option>
				     <option value="01">01</option>
				     <option value="02">02</option>
				     <option value="03">03</option>
				     <option value="04">04</option>
				     <option value="05">05</option>
				     <option value="06">06</option>
				     <option value="07">07</option>
				     <option value="08">08</option>
				     <option value="09">09</option>
				     <option value="10">10</option>
				     <option value="11">11</option>
				     <option value="12">12</option>
				     </select>
				     月<select name="Exit-time-day">
				     <option value="null">未离职</option>
					<option value="01">01</option>
					<option value="02">02</option>
					<option value="03">03</option>
					<option value="04">04</option>
					<option value="05">05</option>
					<option value="06">06</option>
					<option value="07">07</option>
					<option value="08">08</option>
					<option value="09">09</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
                        </select> 
  </form>
   <div id = "submit">提交</div>
   <script src="js/jquery.js"></script>
  <script>
    $(document).ready(function(){
      $("#submit").bind("click",clickSendButton)
    })
    function clickSendButton(){
        //数据控制
        var somethingWrong = false
        if ($("input:first").val() == "") {
            alert("姓名不能为空")
            somethingWrong = true
        }
        if ($("input:eq(1)").val() == "") {
            alert("年龄不能为空")
            somethingWrong = true
        }
        age = Number($("input:eq(1)").val())
        if (isNaN(age)){
            alert("年龄必须为数字")
            somethingWrong = true
        }

        if (somethingWrong){
        }else{

            $("#form").submit()
        }
    }
    function change() {
      var x = document.getElementById("first-option");
      var y = document.getElementById("second-option");
      y.options.length = 0; // 清除second下拉框的所有内容
        if (x.selectedIndex == 0) {
            y.options.add(new Option("技术主管", "技术主管"));
            y.options.add(new Option("研发主管", "研发主管"));
            y.options.add(new Option("产品开发工程师", "产品开发工程师"));
            y.options.add(new Option("产品开发技术员", "产品开发技术员"));
        }

        if (x.selectedIndex == 1) {
            y.options.add(new Option("客服主管", "0"));
            y.options.add(new Option("客服人员", "1"));
        }

        if (x.selectedIndex == 2) {
            y.options.add(new Option("产品主管", "0"));
            y.options.add(new Option("市场调研主任", "1"));
            y.options.add(new Option("公共主管", "2"));
            y.options.add(new Option("广告策划主管", "3"));
        }

        if (x.selectedIndex == 3) {
            y.options.add(new Option("部门经理", "0"));
            y.options.add(new Option("行政主管", "1"));
            y.options.add(new Option("人事主管", "2"));
            y.options.add(new Option("行政助理", "3"));
        }
    }
  </script>
</body>

</html>
