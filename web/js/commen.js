function htab(m,n,s) {          
	s = s + 1;          
	for(var i=1;i<s;i++) {          
		document.getElementById("nav_"+m+"_"+i).className="off";          
		document.getElementById("content_"+m+"_"+i).style.display="none";          
	}          
	document.getElementById("nav_"+m+"_"+n).className="on";          
	document.getElementById("content_"+m+"_"+n).style.display="block";          
}