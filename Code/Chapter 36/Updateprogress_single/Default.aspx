<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
		<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>
		<asp:UpdateProgress ID="UpdateProgress1" runat="server" 
 		AssociatedUpdatePanelID="UpdatePanel1">
			<ProgressTemplate>
				<strong>
					Updation is in progress
				</strong>
			</ProgressTemplate>
		</asp:UpdateProgress>
		<h2>
		<asp:Label ID="LabelHeading" runat="server" Text="Application Using 
 		UpdateProgress Control"></asp:Label>
		</h2>
		<asp:Label ID="LabelDemo" runat="server" Text="UpdateProgress Demo"></asp:Label>
		&nbsp;
		<asp:Button ID="BtnProgress" runat="server" Text="Start Progress" 
 		onclick="BtnProgress_Click" />
		</ContentTemplate>
		</asp:UpdatePanel>
    </div>
    </form>
</body>
</html>

