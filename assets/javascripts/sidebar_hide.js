function setCookie(c_name, value, exdays) {
    var exdate = new Date();
    exdate.setDate(exdate.getDate() + exdays);
    var c_value = encodeURIComponent(value) + ((exdays == null) ? "" : "; expires=" + exdate.toUTCString());
    document.cookie = c_name + "=" + c_value + "; path=/; SameSite=Lax";
}

// Redmine 5 / 6 共通の #main.nosidebar クラスでサイドバーの表示を切り替える。
// (#content の幅はコアの CSS (flex レイアウト) に任せる)
function sidebarHideApply(hidden) {
    var main = document.getElementById("main");
    var button = document.getElementById("hideSidebarButton");
    if (!main || !button) return;

    if (hidden) {
        main.classList.add("nosidebar");
    } else {
        main.classList.remove("nosidebar");
    }
    button.className = hidden ? "hide" : "show";
}

function hideSideBar() {
    var main = document.getElementById("main");
    if (!main) return;

    var hidden = !main.classList.contains("nosidebar");
    sidebarHideApply(hidden);
    setCookie("sidebarCookie", hidden ? "hide" : "show", 100);
}
