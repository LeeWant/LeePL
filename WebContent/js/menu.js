/**
 * Created by Õı”≠œ„ on 2017/9/28.
 */
//    ≤Àµ•œ‘ æ
var timer=null;
function menu() {
    var menu=document.getElementById("menu_1");
    var menuLeft = document.getElementById("aside");
    clearInterval(timer);
    timer= setInterval(function () {
        if (menuLeft.offsetLeft ==0) {
            clearInterval(timer);
        }
        else {
            menu.style.display="none";
            menuLeft.style.left = menuLeft.offsetLeft + 15 + 'px';
        }
    }, 20);
}
//≤Àµ•“˛≤ÿ
function none() {
    var menu=document.getElementById("menu_1");
    var menuRight = document.getElementById("aside");
    clearInterval(timer);
    timer= setInterval(function () {
        if (menuRight.offsetLeft ==-300) {
            clearInterval(timer);
        }
        else {
            menu.style.display="block";
            menuRight.style.left = menuRight.offsetLeft - 15 + 'px';
        }
    }, 20);
}
