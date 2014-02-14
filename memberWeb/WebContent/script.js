function inputCheck() {

	var userinput = eval("document.regForm");

	var user_id = userinput.id.value;
	var user_email = userinput.email.value;
	var user_jumin1 = userinput.jumin1.value;
	var user_jumin2 = userinput.jumin2.value;
	var user_name = userinput.name.value;

	var reg_exp_id = new RegExp("^[a-z][a-zA-Z0-9]{2,19}", "g");
	var reg_exp_email = new RegExp("^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*[@][0-9a-zA-Z]([-_]?[0-9a-zA-Z])*[.]([a-zA-Z]{3}|[a-zA-Z]{2}[.][a-zA-Z]{2})$","g");
	var reg_exp_jumin1 = new RegExp("[0-9]{6}","g");
	var reg_exp_jumin2 = new RegExp("[0-9]{7}","g");
	
	var match_id = reg_exp_id.exec(user_id);
	var match_email = reg_exp_email.exec(user_email);
	var match_jumin1 = reg_exp_jumin1.exec(user_jumin1);
	var match_jumin2 = reg_exp_jumin2.exec(user_jumin2);

	if (user_id == "") {
		alert("아이디를 입력하세요.");
		userinput.id.focus();
		return false;
	}
	if (user_id.length < 3) {
		alert("아이디는 세글자 이상 입력하세요");
		userinput.id.focus();
		return false;
	}
	if (match_id == null) {// 첫글자 영문체크
		alert("아이디 시작글자는 영문소문자 이여야합니다");
		userinput.id.focus();
		return false;
	}
	if (userinput.passwd.value == "") {
		alert("비밀번호를 입력하세요.");
		userinput.passwd.focus();
		return false;
	}
	if (userinput.repasswd.value == "") {
		alert("비밀번호를 재 입력하세요.");
		userinput.repasswd.focus();
		return false;
	}
	if (userinput.repasswd.value != userinput.passwd.value) {
		alert("비밀번호가 일치하지 않습니다.");
		userinput.repasswd.focus();
		return false;
	}
	if (userinput.passwd.value != userinput.repasswd.value) {
		alert("비밀번호가 일치하지 않습니다");
		userinput.repasswd.focus();
		return false;
	}
	
	if(user_name.length<2){
		alert("이름을 두글자 이상 입력하세요");
		userinput.name.focus();
		return false;
	}
	if (user_name == "") {
		alert("이름을 입력하세요.");
		userinput.name.focus();
		return false;
	}
	if(match_jumin1<6){
		alert("주민등록번호 앞자리 입력하세요 숫자만 6자리 입력하세요.");
		userinput.jumin1.focus();
		return false;
	}
	if(match_jumin2<7){
		alert("주민등록번호 뒷자리 입력하세요 숫자만 7자리 입력하세요.");
		userinput.jumin2.focus();
		return false;
	}
	if (match_email == null) {
		alert("'[계정주소]@[도메인]' 형식으로 작성하세요\nex) spearzero@nate.com");
		userinput.email.focus();
		return false;
	}
	if (user_email == "") {
		alert("이메일을 입력하세요.");
		userinput.email.focus();
		return false;
	}

}