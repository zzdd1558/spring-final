//------------------------SideBar script-----------------------
	var flag=true;
	function OnOffNav() {
		//left: 50%; margin-left: -20px;
		if(flag){
		    document.getElementById("mySidenav").style.width = "8%";
//	 	    document.getElementById("main").style.width = "92%";
			document.getElementById("quickTop").style.marginLeft ="2.7%";
			flag=false;
		}else{
			document.getElementById("mySidenav").style.width = "40px";
//	 	    document.getElementById("main").style.width= "96%";
			document.getElementById("quickTop").style.marginLeft ="0px";
		    flag=true;
		}
	}
