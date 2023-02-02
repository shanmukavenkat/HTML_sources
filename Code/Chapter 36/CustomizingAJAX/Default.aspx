<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ScriptManager runat="server" ID="ScriptManager01">
				<scripts>
					<asp:ScriptReference Path="~/JScript.js" />
				</scripts>
			</asp:ScriptManager>
			<br />
			<br />
			<br />
			<span style="text-decoration: underline">
				<em>
					<strong>
                    Click the button to see its working
						<br />
					</strong>
				</em>
			</span>
			<br />
			<script type="text/javascript">
			    var app = Sys.Application;
			    app.add_load(apploadhand);
			    function apploadhand(send, argument) {
			        $create(CustomAJAXControl.CustomButton, { text: 'Custom Controlfunction for movement of Mouse', element: { style: { fontWeight: "bold", borderWidth: "2px"}} }, { click: start, drift: mousehovermovement, undrift: mouseunhovermovement }, null, $get('Button1'));
			    }
			    function mousehovermovement(send, argument) {
			        messageonmousemovement = "State of Mouse is over the button"
			        $get('CustomLabel').innerHTML = messageonmousemovement;

			    }

			    function mouseunhovermovement(send, argument) {
			        $get('CustomLabel').innerHTML = "State of Mouse is out of the button";

			    }

			    function start(send, argument) {
			        $get('CustomLabel').innerHTML = "Handling the click event of the Button";
			    }
		</script>
		<button type="button" id="Button1">
		</button>
		&nbsp;<br /><br /><br />
		<div id="CustomLabel">
		</div>
    </div>
    </form>
</body>
</html>
