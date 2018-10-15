// JavaScript Document

function $(elementId){
  return document.getElementById(elementId).value;
    }
function divId(elementId){
  return document.getElementById(elementId);
   }
/*密码验证*/    
function checkPwd(){
  var pwd=$("pwd1");
  var pwdId=divId("pwd_prompt");
   pwdId.innerHTML="";    
  var reg=/^[a-zA-Z0-9]{4,10}$/;    
    if(reg.test(pwd)==false){
       pwdId.innerHTML="密码不能含有非法字符，长度在4-10之间";
    return false;
      }
      return true;
    }
    
function checkRepwd(){
  var repwd=$("repwd");
  var pwd=$("pwd1");
  var repwdId=divId("repwd_prompt");
   repwdId.innerHTML="";
    if(pwd!=repwd){
       repwdId.innerHTML="两次输入的密码不一致";
    return false;
      }
      return true;
   }
/*验证手机号码*/
function checkMobile(){
    var mobile=$("account1");
    var mobileId=divId("mobile_prompt");
    var regMobile=/^1\d{10}$/;
    if(regMobile.test(mobile)==false){
        mobileId.innerHTML="手机号码不正确，请重新输入";
        return false;
        }
        mobileId.innerHTML="";
        return true;
    }
/*验证验证码*/
function checkYzm () {
	 var yzm = $("captcha2");
	 var yzmId = divId("yzm_prompt");
	 var regYzm=/^\d{6}$/;
	 if(regYzm.test(yzm)== false){
	 	yzmId.innerHTML = "格式错误";
	 	return false;
	 }
	 yzmId.innerHTML ="";
	 return true;
}