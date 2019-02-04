function getXMLHTTPRequest() {
	var xRequest = null;
	if (window.XMLHttpRequest) {
		xRequest = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		xRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}
	return xRequest;
}

var xmlhttp;
// 启动AJAX请求
function searchSuggest() {
	xmlhttp = getXMLHTTPRequest();
	//判断XMLHttpRequest对象是否成功创建
	if (!xmlhttp) {
		alert("不能创建XMLHttpRequest对象实例");
		return false;
	}
	//创建请求结果处理程序
	xmlhttp.onreadystatechange = processReuqest;
	var str = document.getElementById("txtSearch").value;
		//alert("到达open") ;
		console.log("open")	;
	xmlhttp.open("GET", "search?key=" + str, true);
	xmlhttp.send(null);
}
// 事件处理函数
function processReuqest() {
	if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
		var sobj = document.getElementById("suggest");
		sobj.innerHTML = "";
		var str = xmlhttp.responseText.split(",");
		var suggest = "";
		if (str.length > 0 && str[0].length > 0) {
			for (i = 0; i < str.length; i++) {
				suggest += "<div onmouseover='javascript:suggestOver(this);'";
				suggest += " onmouseout='javascript:suggestOut(this);'";
				suggest += " onclick='javascript:setSearch(this.innerHTML);'";
				suggest += " class='suggest_link'>" + str[i] + "</div>";
			}
			sobj.innerHTML = suggest;
			document.getElementById("suggest").style.display = "block";
		}
		else {
			document.getElementById("suggest").style.display = "none";
		}
	}

}
// Mouse over函数
function suggestOver(obj) {
	obj.className = "suggest_link_over";
}
//Mouse out函数
function suggestOut(obj) {
	obj.className = "suggest_link";
}
//Click函数  
function setSearch(value) {
	document.getElementById("txtSearch").value = value;
	document.getElementById("suggest").innerHTML = "";
	document.getElementById("suggest").style.display = "none";
}