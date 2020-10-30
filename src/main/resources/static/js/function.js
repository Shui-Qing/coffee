function change(img){
	img.src="getcode?"+new Date().getTime();
}

//验证id
function checkuserName(){
	//获取用户名信息
	var userName=document.getElementById("userName").value;
	//创建校验规则
	var reg=/^[\u4E00-\u9FA5A-Za-z0-9_]{1,15}$/		//正则表达式
	//获取span对象
	var span=document.getElementById("userNameSpan");
	//开始校验
	if(userName==""||userName==null){
		//输出校验结果
		span.innerHTML="*用户名不能为空";
		span.style.color="red";
		return false;
	}else if(reg.test(userName)){
		var url = "usernamecheck?userName="+encodeURI(userName)+"&"+new Date().getTime();
		$.get(url,function(data){
			if(data == "false"){
				span.innerHTML="*该用户已存在";
				span.style.color="red";
				return false;
			}else{
				span.innerHTML="*用户名ok";
				span.style.color="green";
				return true;
			}
		});
	}else{
		span.innerHTML="*用户名不符合规则";
		span.style.color="red";
		return false;
	}
	
}
//验证姓名
function checkname(){
	return checkField("name",/^[\u4e00-\u9fa5]{2,4}$/);
}
//验证用户密码
function checkpassWord(){
	return checkField("passWord",/^[a-zA-Z]\w{5,17}$/);
	checkrePassWord();
}
//校验确认密码
function checkrePassWord(){
	var passWord=document.getElementById("passWord").value;
	var rePassWord=document.getElementById("rePassWord").value;
	var span=document.getElementById("rePassWordSpan");
	if(rePassWord==""||rePassWord==null){
		//输出校验结果
		span.innerHTML="*确认密码不能为空";
		span.style.color="red";return false;
	}else if(rePassWord==passWord){
		//输出校验结果
		span.innerHTML="*密码确认ok";
		span.style.color="green";return true;
	}else{
		//输出校验结果
		span.innerHTML="*两次密码不一致";
		span.style.color="red";return false;
	}

}

//生日不能为空
function checkbirthday(){
	
	var birthday=document.getElementById("birthday").value;
	
	var span=document.getElementById("birthdaySpan");
	//开始校验
	if(birthday==""||birthday==null){
		//输出校验结果
		span.innerHTML="*出生日期不能为空";
		span.style.color="red";return false;
	}else{
		//输出校验结果
		span.innerHTML="*出生日期ok";
		span.style.color="green";return true;
	}
}
//校验手机号
function checkmobile(){
	return checkField("mobile",/^1[3,4,5,7,8]\d{9}$/);
}
//校验邮箱
function checkmail(){
	return checkField("email",/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/);
}
//地址
function chechaddress(){
	var address=document.getElementById("address").value;
	
	var span=document.getElementById("addressSpan");
	//开始校验
	if(address==""||address==null){
		//输出校验结果
		span.innerHTML="*收货地址不能为空";
		span.style.color="red";return false;
	}else{
		//输出校验结果
		span.innerHTML="*收货地址ok";
		span.style.color="green";return true;
	}
}
//验证码校验
function checkCode(){
	var span=document.getElementById("codeSpan");
	var code=document.getElementById("code").value;
	if(code==""||code==null){
		//输出校验结果
		span.innerHTML="*验证码不能为空";
		span.style.color="red";
		return false;
	}else{
		var url = "checkusercode?code="+encodeURI(code)+"&"+new Date().getTime();
		$.get(url,function(code){
				span.innerHTML="*仔细填写验证码";
				span.style.color="green";
				return true;
		});
	}
	//else if(code==a){
		//输出校验结果
		//return true;}
//	else{
//		span.innerHTML="*验证码错误";
//		span.style.color="red";
//		return false;
//	}
}
function checkAgree(){
	document.getElementById("sub").disabled=!document.getElementById("agree").checked;
}
function checkSub(){
	checkuserName();
	checkname();
	checkpassWord();
	checkrePassWord();
	checkbirthday();
	checkmail();
	checkmobile();
	chechaddress();
	checkCode();
	return checkuserName()&&checkname()&&checkpassWord()&&checkrePassWord()&&checkbirthday()&&checkmail()&&checkmobile()&&chechaddress()&&checkCode();
}

/*---------------------------------------------------------------------------------------------*/
//相同保留，不同传参
function checkField(id,reg){
	var inp=document.getElementById(id);
	var va=inp.value;
	var alt=inp.alt;
	var span=document.getElementById(id+"Span");
	if(va==""||va==null){
		span.innerHTML="*"+alt+"不能为空";
		span.style.color="red";return false;
	}else if(reg.test(va)){
		span.innerHTML="*"+alt+"ok";
		span.style.color="green";return true;
	}else{
		span.innerHTML="*"+alt+"不符合规则";
		span.style.color="red";return false;
	}
}

/*-----------------------------------------------------------------------------------------------*/