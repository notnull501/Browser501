$(function() {	
	makeCalendar($("#calendar_wrap"), new Date());
});

//달력 Table 포맷 그리기
function makeHtml(year, month) {
	var calendar_html_code =
	    "<table class='custom_calendar_table'>" +
	    "<thead class='cal_yyyymm'>" +
	    "<th colspan='7'><p><span>" + year + "</span>년 <span>" + month + "</span>월</p></th>" +
	    "</thead>" +
	    "<thead  class='cal_week'>" +
	    "<th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th>" +
	    "</thead>" +
	    "<tbody id='custom_set_date'>" +
	    "</tbody>" +
	    "<tfoot class='cal_move'>" +
	    "<th colspan='7'><p><span class='prev'>이전 달</span>&nbsp&nbsp<span class='next'>다음 달</span></p></th>" +
	    "</tfoot>" +
	    "</table>";
	return calendar_html_code;
}

//달력 그리기
function makeCalendar(target, date) {

	//---------------------------------------------
	//매개변수 예외처리 
	if (target == null || target == undefined) {
		target = $("#calendar_wrap");
    }
	
    if (date == null || date == undefined) {
        date = new Date();	//default값-현재년월
    }

	//---------------------------------------------
    //달력 Table 포맷 그리기 Call
    var selDate = date;
    var year = selDate.getFullYear();
    var month = selDate.getMonth() + 1;
    
    $(target).empty().append(makeHtml(year, month));
	
	//---------------------------------------------
	//일자 입력
    var thisFirstDay = new Date(selDate.getFullYear(), selDate.getMonth(), 1);		//12월 1일
    var thisLastDay = new Date(selDate.getFullYear(), selDate.getMonth() + 1, 0);	//12월 31일

    var tag = "";
    var cnt = 0;	//0:일, 1:월, 2:화, 3:수, 4:목, 5:금, 6:토, 7:0으로 리셋
    
	//앞 빈 공백 tag
    for (i = 0; i < thisFirstDay.getDay(); i++) {	//thisFirstDay.getDay() = 3 
        if (cnt % 7 == 0) { 
        	tag += "<tr>"; 
        	cnt = 0;
       	}
       	
        tag += "<td></td>";				//(공백을 0,1,2 컬럼) 그려줌
        cnt++;			
    }

    //일자 tag
    for (i = 1; i <= thisLastDay.getDate(); i++) {	//thisLastDay.getDate() = 31 
        if (cnt % 7 == 0) { 
        	tag += "<tr>"; 
        	cnt = 0;	
       	}

        tag += "<td>" + i + "</td>";	//(1일,2일,3일,4일) 을 (3,4,5,6 컬럼)에 그려줌
        cnt++;			
        
        if (cnt % 7 == 0) {
            tag += "</tr>";
        }
    }

	//뒤 빈 공백 tag
    for (i = thisLastDay.getDay()+1; i <= 6; i++) {	//thisLastDay.getDay()+1 = 6
        tag += "<td></td>";				//(공백을 6 컬럼) 그려줌
        cnt++;			//다음컬럼
        
        if (cnt % 7 == 0) {
            tag += "</tr>";
        }
    }
    
    //일자 append
    $(target).find("#custom_set_date").append(tag);

	//---------------------------------------------
	//수행버튼 이전달 클릭이벤트
	$(".custom_calendar_table").on("click", ".prev", function () {
	    selDate = new Date(selDate.getFullYear(), selDate.getMonth() - 1, selDate.getDate());
	    makeCalendar($(target), selDate);
	});
	
	//수행버튼 다음날 클릭이벤트
	$(".custom_calendar_table").on("click", ".next", function () {
	    selDate = new Date(selDate.getFullYear(), selDate.getMonth() + 1, selDate.getDate());
	    makeCalendar($(target), selDate);
	});
}