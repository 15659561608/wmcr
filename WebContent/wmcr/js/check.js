// JavaScript Document

//function $(elementId) {
//	return document.getElementById(elementId).value;
//}
function divId(elementId) {
	return document.getElementById(elementId);
}

/* 验证手机号码 */
function checkMobile() {
	var mobile = document.getElementById("account1").value;
	var mobileId = divId("mobile_prompt");
	var regMobile = /^1(3|4|5|7|8)\d{9}$/;
	if (regMobile.test(mobile) == false) {
		mobileId.innerHTML = "手机号码不正确，请重新输入";
		return false;
	}

	mobileId.innerHTML = "";
	return true;
}
/* 验证验证码 */
function checkYzm() {
	var yzm = document.getElementById("captcha2").value;
	var yzmId = divId("yzm_prompt");
	var regYzm = /^\d{6}$/;
	if (regYzm.test(yzm) == false) {
		yzmId.innerHTML = "格式错误";
		return false;
	}
	yzmId.innerHTML = "";
	return true;
}
/* 密码验证 */
function checkPwd() {
	var pwd = document.getElementById("pwd1").value;
	var pwdId = divId("pwd_prompt");
	pwdId.innerHTML = "";
	var reg = /^[a-zA-Z0-9]{4,10}$/;
	if (reg.test(document.getElementById("pwd1").value) == false) {
		pwdId.innerHTML = "密码不能含有非法字符，长度在4-10之间";
		return false;
	}
	return true;
}

function checkRepwd() {
	var repwd = document.getElementById("repwd").value;
	var pwd = document.getElementById("pwd1").value;
	var repwdId = divId("repwd_prompt");
	repwdId.innerHTML = "";
	if (pwd != document.getElementById("repwd").value) {
		repwdId.innerHTML = "两次输入的密码不一致";
		return false;
	}
	return true;
}
/* 注册提交表单验证 */
function checkform(){
	if(!(document.getElementById("account1").value.length>0)){
		return false;
	} 
	else if(!(document.getElementById("captcha2").value.length>0)){
		return false;
	}
	else if(!(document.getElementById("pwd1").value.length>0)){
		return false;
	}
	else if(!(document.getElementById("repwd").value.length>0)){
		return false;
	} 
	else {
		return true;
	}
	
}

/* 登陆提交表单验证 */
function checkform2(){
	if(!(document.getElementById("account").value.length>0)){
		return false;
	} 
	else if(!(document.getElementById("pwd").value.length>0)){
		return false;
	}
	else {
		return true;
	}
	
}