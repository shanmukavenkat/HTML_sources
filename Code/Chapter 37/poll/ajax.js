var xmlHttp
function sendVote(int)
{
	xmlHttp=GetXmlHttpObject()
	if (xmlHttp==null)
	{
		alert ("Browser does not support HTTP Request")
		return
	} 
	var url="vote.php"
	url=url+"?vote="+int
	url=url+"&sid="+Math.random()
	xmlHttp.onreadystatechange=stateChanged 
	xmlHttp.open("GET",url,true)
	xmlHttp.send(null)
} 
function stateChanged() 
{ 
	if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
	{ 
		document.getElementById("poll").
		innerHTML=xmlHttp.responseText;
	} 
} 
function GetXmlHttpObject()
{ 
	var objXMLHttp=null
	if (window.XMLHttpRequest)
	{
		objXMLHttp=new XMLHttpRequest()
	}
	else if (window.ActiveXObject)
	{
		objXMLHttp=new ActiveXObject("Microsoft.XMLHTTP")
	}
	return objXMLHttp
}
