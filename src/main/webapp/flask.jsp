<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type = 'text'>
<button>Ajax 요청해보기</button>

<table border='1px solid black'>
<tr>
<th>레시피번호</th>
<th>유사도</th>
</tr>

</table>
   <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
        crossorigin="anonymous"></script>
        
     <script>
/*            // 1. 버튼을 클릭했을 때
           $('button').on('click',function(){ */
              // 1-1. input 태그안에 있는 데이터 가져오기
              var id = "kim";
              console.log(id);
              
              
           // 2. ex01Ajax 서블릿 파일로 데이터를 요청
              $.ajax({
                 // 요청할 서버의 url
                 // 내 컴퓨터 172.30.1.254
                 url : 'http://172.30.1.32:8081/',
                 type : 'GET',
                 // 보내줄 데이터 지정
                 data : 'id='+id,
                 success : function(res){
                    // res -> 서버페이지에서 받아온 결과값
                    for(let i =0; i< 5; i++){
                       $('table').append('<tr><td>'+res.index[i]+'</td>'+
                             '<td>'+res.data[i]+'</td></tr>')
                    }
                    console.log(res);
                    // alert('요청성공!');
                 },
                 error : function(){
                    alert('요청실패!');
                 }
              });              
         /*   })  */
        
        
        
        
        </script>

</body>
</html>