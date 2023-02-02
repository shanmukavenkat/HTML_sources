<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<HEAD>
	<TITLE>Implementing Prototype</TITLE>
	<SCRIPT type="text/javascript"src="scripts/prototype.js"></SCRIPT>
	<SCRIPT type="text/javascript">
	//<![CDATA[
	function requestCustomerInfo() {
		var sId = document.getElementById("txtCustomerId").value;
		var oOptions = {
			method: "get",
			parameters: "id=" + sId,
			onSuccess: function (oXHR, oJson) {
				displayCustomerInfo(oXHR.responseText);
			},
			onFailure: function (oXHR, oJson) {
			displayCustomerInfo("An error occurred: " + oXHR.statusText);
			}
		};
		var oRequest = new Ajax.Request("GetCustomerData.jsp", oOptions);
	}
	function displayCustomerInfo(sText) {
		var divCustomerInfo = document.getElementById("divCustomerInfo");
		divCustomerInfo.innerHTML = sText;
	}
	//]]>
	</SCRIPT>
</HEAD>
<BODY>
	<H2>Enter customer ID</H2>
	<P>Customer ID: <INPUT type="text" id="txtCustomerId" value="" /></P>
<P><INPUT type="button" value="Get Customer Info" onclick="requestCustomerInfo()" /></P>
	<DIV id="divCustomerInfo"></DIV>
</BODY>
</HTML>
