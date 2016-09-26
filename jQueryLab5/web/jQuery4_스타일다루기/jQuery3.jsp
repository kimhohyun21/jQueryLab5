<%--
  Created by IntelliJ IDEA.
  User: sist
  Date: 2016-09-26
  Time: 오후 2:15
  To change this template use File | Settings | File Templates.

  #스타일 다루기
    1. 스타일의 속성값 구하기   $("선택자").css("스타일 속성");
    2. 스타일의 속성값 설정하기 $("선택자").css("스타일 속성", "값");
    3. 스타일틔 속성 제거하기   없음
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jQuery3</title>
    <style type="text/css">
        body{
            font-size: 9pt;
            font-family: 굴림;
        }
        ui, li{

        }
        ul.menu{
            padding: 10px;
            list-style: none;
            border: 1px solid #000;
        }

        ul.menu li{
            border: 1px solid #eeeeee;
            margin: 10px;
        }

        li.select{
            background-color: #ccc;
        }
    </style>
    <script type="text/javascript" src="../js/jquery-3.1.0.js"></script>
    <script type="text/javascript">
        /*
         Q3. 실행(#test)버튼을 누를때 마다 선택메뉴 아이템(li.select)의 너비, 높이를 100px를 만들어라
        */
        $(document).ready(function(){
           //선택메뉴 아이템 얻기
            var $item=$('ul.menu li.select');

           //버튼 클릭시 이벤트 설정
           $("#test").click(function(){
               //너비와 높이의 스타일 값 설정하기
               $item.css({
                   width: 100,
                   height:100
               })
           });
        });
    </script>
</head>
<body>
    <div align="center">
        <table>
            <tr>
                <td>
                    <button id="test">실행</button>
                    <ul class="menu">
                        <li>menu1</li>
                        <li>menu2</li>
                        <li class="select">menu3</li>
                        <li>menu4</li>
                        <li>menu5</li>
                    </ul>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
