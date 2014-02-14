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
		alert("���̵� �Է��ϼ���.");
		userinput.id.focus();
		return false;
	}
	if (user_id.length < 3) {
		alert("���̵�� ������ �̻� �Է��ϼ���");
		userinput.id.focus();
		return false;
	}
	if (match_id == null) {// ù���� ����üũ
		alert("���̵� ���۱��ڴ� �����ҹ��� �̿����մϴ�");
		userinput.id.focus();
		return false;
	}
	if (userinput.passwd.value == "") {
		alert("��й�ȣ�� �Է��ϼ���.");
		userinput.passwd.focus();
		return false;
	}
	if (userinput.repasswd.value == "") {
		alert("��й�ȣ�� �� �Է��ϼ���.");
		userinput.repasswd.focus();
		return false;
	}
	if (userinput.repasswd.value != userinput.passwd.value) {
		alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		userinput.repasswd.focus();
		return false;
	}
	if (userinput.passwd.value != userinput.repasswd.value) {
		alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�");
		userinput.repasswd.focus();
		return false;
	}
	
	if(user_name.length<2){
		alert("�̸��� �α��� �̻� �Է��ϼ���");
		userinput.name.focus();
		return false;
	}
	if (user_name == "") {
		alert("�̸��� �Է��ϼ���.");
		userinput.name.focus();
		return false;
	}
	if(match_jumin1<6){
		alert("�ֹε�Ϲ�ȣ ���ڸ� �Է��ϼ��� ���ڸ� 6�ڸ� �Է��ϼ���.");
		userinput.jumin1.focus();
		return false;
	}
	if(match_jumin2<7){
		alert("�ֹε�Ϲ�ȣ ���ڸ� �Է��ϼ��� ���ڸ� 7�ڸ� �Է��ϼ���.");
		userinput.jumin2.focus();
		return false;
	}
	if (match_email == null) {
		alert("'[�����ּ�]@[������]' �������� �ۼ��ϼ���\nex) spearzero@nate.com");
		userinput.email.focus();
		return false;
	}
	if (user_email == "") {
		alert("�̸����� �Է��ϼ���.");
		userinput.email.focus();
		return false;
	}

}