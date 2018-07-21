/**
 * 注册页面js代码
 */

function check(){  
	    if(document.getElementById("password").value!=  
	        document.getElementById("password_check").value)  
	    {  
	    	document.getElementById( "warning" ).style.color = "red"; 
	        document.getElementById("warning").innerHTML="两次密码不匹配！";  
	    }
	    else{  
	        document.getElementById("warning").innerHTML="";  
	    }  
	}  
