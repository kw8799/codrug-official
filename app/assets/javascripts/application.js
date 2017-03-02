// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

//= require_tree .

// '/admin/codrug' 페이지의 페이크퀴즈 시작
function myQuestion(){
        var answer = prompt("이 홈피의 제작자가 누굴까?");
        if (answer == "곽규원") {
            alert("정답! 자네 인재로군.")
            var change = document.getElementById("quiz");
            change.setAttribute("disabled","");
            
            document.getElementById("whoru").innerHTML =
            "<input type='text' name='adminId' placeholder='관리자아이디'><br><input type='password' name='adminPW' placeholder='비밀번호'><input type='submit'>"
            
            // document.getElementById("demo").innerHTML =
            // "정답! 인재로군";
        }
        else {
            alert("틀렸어, 관리자가 아니구만? 돌아가.")
            var change = document.getElementById("quiz");
            change.setAttribute("disabled","");
            // document.getElementById("demo").innerHTML =
            // "틀렸어 관리자가 아니구만?";
        }
    }
// '/admin/codrug' 페이지의 페이크퀴즈 끝