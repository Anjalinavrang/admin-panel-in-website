<%-- 
    Document   : ChangePassword
    Created on : Feb 22, 2011, 4:21:32 AM
    Author     : softavate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/menu.css" type="text/css">
        <link rel="stylesheet" href="css/stylesheet.css" type="text/css">
        <link rel="stylesheet" href="css/style-sheet.css" type="text/css">
        <script type="text/javascript" src="js/javascript.js"></script>
        <title>JSP Page</title>
    </head>
    <%
                String msg = null;
                msg = (String) session.getAttribute("MSG");

    %>
    <body bgcolor="black">
        <table width="80%" align="center"  bgcolor="white">
            <tr>
                <td width="100%"  height="20px">
                    <table width="100%">
                        <tr>
                            <td>
                                <%@include file="header_menuUser.html"%>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" width="100%" style="height:15px;" class="toplinls"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr valign="top">
                <td bgcolor="white">
                    <form method="post" action="changePassword">
                        <table width="100%" >
                            <%
                                        if (msg != null) {
                            %>
                            <tr>
                                <td style="font-family: verdana;color: red;font-size: 10px" align="center" colspan="4"><%=msg%></td>
                            </tr>
                            <%
                                            session.removeAttribute("MSG");
                                        } else {
                                            session.setAttribute("MSG", "");
                                        }
                            %>
                            <tr>
                                <td colspan="4" align="center">
                                    <h3>Change Password</h3>
                                </td>
                            </tr>
                            <tr>
                                <td height="40px" id="label">User Name :</td>
                                <td>
                                    <input type="text" name="UserName" id="UserName" size="33" class=""/>
                                </td>
                                <td height="40px" id="label"> Old Password :</td>
                                <td>
                                    <input type="password" name="OldPassword" id="OldPassword"size="33"/>
                                </td>
                            </tr>
                            <tr>
                                <td height="40px" id="label">New Password :</td>
                                <td>
                                    <input type="text" name="NewPassword" id="NewPassword"size="33" />
                                </td>
                                <td height="40px" id="label">Confirm Password :</td>
                                <td>
                                    <input type="password" name="ConfPass" id="ConfPass"size="33" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="4" class="bold_text">
                                    <input type="submit" name="btnSubmit" id="btnSubmit"value="Change Password" class="button" onclick="return changepassword();"/>
                                    <input type="reset" name="btnreset" id="btnreset"value="Reset" class="button"/>
                                </td>
                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
            <tr>
                <td height="50" colspan="2" align="center" class="toplinls" width="100%">
                    <span class="whitefont">Online Shopping</span>
                </td>
            </tr>
        </table>
    </body>
</html>
