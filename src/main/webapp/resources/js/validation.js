var ckName = 0;
var ckBirth = 0;
var ckPhone = 0;
var ckLicense = 0;
var ckEmail = 0;

$('input').on('blur', function() {
	if(ckName == 1 && ckBirth == 1 && ckPhone ==1 && ckLicense == 1 && ckEmail == 1) {
		$('#kakaobtn').attr('disabled', false);
		$('#paybtn').attr('disabled', false);
	}
})

// ID 유효성 체크 (영어 소문자로 시작, 영어 소문자, 숫자, 특수문자(-, _) 가능)
$('[name=username]').on('blur', function(){
	let testId = /^[a-z]{1}[a-z0-9_-]{4,19}$/;
	if($('[name=username]').val() == '') {
		$('[name=username]').next().remove();
		$('[name=username]').after('<div style="color: red;">아이디를 입력하세요.</div>');
		$('[name=username]').attr();
	} else if(!testId.test($('[name=username]').val())){
		$('[name=username]').next().remove();
		$('[name=username]').after('<div style="color: red;">5 ~ 20자 사이의 알파벳 소문자, 숫자, -, _로 이루어진 아이디를 작성하세요.</div>');
	} else {
		$('[name=username]').next().remove();
	}
});

// 패스워드 유효성 체크
$('[name=password]').on('blur', function(){
	let testPass = /^(?=.*\d)(?=.*[a-z])(?=.*[!@#$%^&\*])[\da-zA-Z!@#$%^&\*]{8,30}$/;
	if($('[name=password]').val() == ''){
		$('[name=password]').next().remove();
		$('[name=password]').after('<div style="color: red;">비밀번호를 입력하세요.</div>');
	} else if(!testPass.test($('[name=password]').val())){
		$('[name=password]').next().remove();
		$('[name=password]').after('<div style="color: red;">8 ~ 30자 사이의 하나 이상의 알파벳 소문자, 숫자, 특수문자로 이루어진 비밀번호를 작성하세요.</div>');
	} else {
		$('[name=password]').next().remove();
	}
});

// 이름 유효성 체크
$('[name=name]').on('blur', function(){
	let testName = /^[가-힣]{2,10}$/;
	if($('[name=name]').val() == ''){
		$('[name=name]').next().remove();
		$('[name=name]').after('<div style="color: red;">이름을 입력하세요.</div>')
	} else if(!testName.test($('[name=name]').val())){
		$('[name=name]').next().remove();
		$('[name=name]').after('<div style="color: red;">2 ~ 10자 사이의 한글 이름을 입력하세요.</div>')
	} else {
		$('[name=name]').next().remove();
		ckName = 1;
	}
});

// 생년월일 유효성 체크
$('[name=birth]').on('blur', function(){
	let testBirth = /^(19[0-9]{2}|20[0-1]{1}[0-9]{1}|202[0-3]{1})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
	if($('[name=birth]').val() == ''){
		$('[name=birth]').next().remove();
		$('[name=birth]').after('<div style="color: red;">생년월일을 입력하세요.</div>');
	} else if(!testBirth.test($('[name=birth]').val())){
		$('[name=birth]').next().remove();
		$('[name=birth]').after('<div style="color: red;">생년월일을 확인하세요.</div>');
	} else {
		$('[name=birth]').next().remove();
		ckBirth = 1;
	}
});

// 성별 유효성 체크
$('[name=gender]').on('blur', function(){
	if($('[name=gender]').val() == '2'){
		$('[name=gender]').next().remove();
		$('[name=gender]').after('<div style="color: red;">성별을 선택하세요.</div>');
	} else {
		$('[name=gender]').next().remove();
	}
});

// 전화번호 유효성 체크
$('[name=phoneNumber]').on('blur', function(){
	let testPhone = /^01[0|1|6|7|8|9][0-9]{7,8}$/;
	if($('[name=phoneNumber]').val() == ''){
		$('[name=phoneNumber]').next().remove();
		$('[name=phoneNumber]').after('<div style="color: red;">전화번호를 입력하세요.</div>');
	} else if(!testPhone.test($('[name=phoneNumber]').val())){
		$('[name=phoneNumber]').next().remove();
		$('[name=phoneNumber]').after('<div style="color: red;">전화번호를 확인하세요.</div>');
	} else {
		$('[name=phoneNumber]').next().remove();
		ckPhone = 1;
	}
});

// 면허증 번호 유효성 체크
$('[name=license]').on('blur', function(){
	let testLicense = /^(1[1-9]|2[0-68-8])([0-9]{2}[0-9]{6}[0-9]{2})$/;
	if($('[name=license]').val() == ''){
		$('[name=license]').next().remove();
		$('[name=license]').after('<div style="color: red;">면허증 번호를 입력하세요.</div>');
	} else if(!testLicense.test($('[name=license]').val())){
		$('[name=license]').next().remove();
		$('[name=license]').after('<div style="color: red;">면허증 번호를 확인하세요.</div>');
	} else {
		$('[name=license]').next().remove();
		ckLicense = 1;
	}
});
	
// 이메일 유효성 체크
$('[name=email]').on('blur', function(){
	let testEmail = /([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\"\(\[\]!#-[^-~ \t]|(\\[\t -~])+\")@([!#-'*+-9=?A-Z^-~-]+(\.[!#-'*+-9=?A-Z^-~-]+)*|\[[\t -Z^-~]*])/;
	if($('[name=email]').val() == '') {
		$('[name=email]').next().remove();
		$('[name=email]').after('<div style="color: red;">이메일 주소를 입력하세요.</div>');
	} else if(!testEmail.test($('[name=email]').val())){
		$('[name=email]').next().remove();
		$('[name=email]').after('<div style="color: red;">이메일 주소를 확인하세요.</div>');
	} else {
		$('[name=email]').next().remove();
		ckEmail = 1;
	}
});