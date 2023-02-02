<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"
    Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Localization</title>
    <body runat="server">
        <p>
            &nbsp;
            <form runat="server">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White"
                BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px"
                NextPrevFormat="FullMonth" Width="254px" meta:resourcekey="Calendar1Resource1">
                <selecteddaystyle backcolor="#333399" forecolor="White" />
                <todaydaystyle backcolor="#CCCCCC" />
                <othermonthdaystyle forecolor="#999999" />
                <nextprevstyle font-bold="True" font-size="8pt" forecolor="#333333" verticalalign="Bottom" />
                <dayheaderstyle font-bold="True" font-size="8pt" />
                <titlestyle backcolor="White" bordercolor="Black" borderwidth="4px" font-bold="True"
                    font-size="12pt" forecolor="#333399" />
            </asp:Calendar>
            </form>
            <div>
                <br />
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;&nbsp;
                <table style="width: 383px; height: 193px; background-color: #99ffff">
                    <tr>
                        <td colspan="2" style="width: 100px; background-color: white">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            &nbsp; &nbsp;<span style="text-decoration: underline"><strong><span>Localization</span>
                            </strong></span>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 75px; height: 18px; background-color: white">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>English</strong>
                        </td>
                        <td style="width: 100px; height: 18px; background-color: white">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" meta:resourcekey="Label1Resource1"
                                Text="English"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 75px; background-color: white">
                            <span style="background-color: White"><strong>French</strong>&nbsp; </span>
                        </td>
                        <td style="width: 100px; background-color: White">
                            <strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;</strong><asp:Label
                                ID="Label2" runat="server" Font-Bold="True" meta:resourcekey="Label2Resource1"
                                Text="French"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 75px; background-color: white">
                            &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <strong>German</strong>
                        </td>
                        <td style="width: 100px; background-color: white">
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" meta:resourcekey="Label3Resource1"
                                Text="German"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </p>
    </body>
</head>
</html>
