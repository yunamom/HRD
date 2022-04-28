function fn_submit(){
		var f = document.frm;	
		
		var v_jumin = f.v_jumin.value;
		if(v_jumin == ""){
			alert("주민번호가 입력되지 않았습니다!");
			f.v_jumin.focus(); return false;
		}
		var jumin = /([0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[1,2][0-9]|3[0,1]))/;
		//주민번호 유효성 검사
		if(!jumin.test(v_jumin) || v_jumin.length <13 || v_jumin.length >13){
			alert("유효하지않은 주민번호 입니다.\n 숫자 13자리로 입력해주세요.");
			f.v_jumin.focus(); return false;
		}
		var v_name = f.v_name.value;
		if(v_name == ""){
			alert("성명이 입력되지 않았습니다!");
			f.v_name.focus(); return false;
		}
		var name = /^[가-힣]+$/; //한글이름 유효성 검사
		if(!name.test(v_name)){
			alert("한글이름으로 입력해주세요.");
			f.v_name.focus(); return false;
		}	
		if(f.m_no.value == ""){
			alert("후보번호가 선택되지 않았습니다!");
			f.m_no.focus(); return false;
		}
		if(f.v_time.value == ""){
			alert("투표시간이 입력되지 않았습니다!");
			f.v_time.focus(); return false;
		}
		if(f.v_time.value.length < 4 || f.v_time.value.length > 4){
			alert("투표시간을 숫자4자 로 입력해주세요! 예)0930");
			f.v_time.focus(); return false;
		}
		if(f.v_area.value == ""){
			alert("투표장소가 입력되지 않았습니다!");
			f.v_area.focus(); return false;
		}
		if(f.v_area.value != "제1투표장" && f.v_area.value != "제2투표장"){
			alert("투표장소를 제1투표장 or 제2투표장 으로 입력해주세요 :D");
			f.v_area.focus(); return false;
		}		
		if(f.v_confirm.value == ""){
			alert("유권자확인이 선택되지 않았습니다!");
			return false;
		}
		f.submit();
	}
function fn_reset(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	location="voteMember.jsp";
}

function fn_onload(){
	document.frm.v_jumin.focus();
	document.frm.onload();
}