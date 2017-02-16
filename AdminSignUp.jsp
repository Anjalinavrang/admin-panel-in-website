<%--
    Document   : SignUp
    Created on : Feb 22, 2011, 12:03:48 AM
    Author     : softavate
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/topmenu.css"/>
        <link type="text/css" rel="stylesheet" href="css/stylesheet.css"/>
        <link type="text/css" rel="stylesheet" href="css/menu.css"/>
        <script type="text/javascript" src="js/javascript.js"></script>
        <script type="text/javascript" src="js/calander.js"></script>
        <title>Sign Up Page</title>
    </head>
    <%
                String msg = null;
                msg = (String) session.getAttribute("MSG");
    %>
    <body bgcolor="black">
        <table style="border-style: outset" width="80%" align="center"  bgcolor="white">
            <tr>
                <td width="100%" bgcolor="maroon" height="100">
                    <table width="100%">
                        <tr>
                            <td colspan="4"  align="center">
                                <img src="Image/mallHeader.png" alt="" height="150px" width="100%">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%@include file="header.html" %>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr valign="top">
                <td bgcolor="white">
                    <form method="post" action="adminSignUp">
                        <table width="100%" >

                            <tr>
                                <td colspan="4" align="center"class="title" >
                                    <h3 style="background:skyblue " ><u> Create New User</u></h3>
                                </td>
                            </tr>
                            <tr>
                                <td height="40px" id="label">User Type :</td>
                                <td valign="bottom" height="40px">
                                    <select name="cmbType" id="cmbType">
                                        <option value="-1">--Type--</option>
                                        <option value="Admin">Admin</option>
                                        <option value="Vender">Vender</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td  height="40px" id="label">User Name :</td>
                                <td>
                                    <input type="text" name="txtUserName" id="txtUserName" size="33" class=""/>
                                </td>
                                <td height="40px" id="label">Full Name :</td>
                                <td>
                                    <input type="text" name="txtFullName" id="txtFullName" size="33" class=""/>
                                </td>
                            </tr>
                            <tr>
                                <td height="40px" id="label"> Password :</td>
                                <td>
                                    <input type="password" name="txtPassword" id="txtPassword"size="33"/>
                                </td>
                                <td height="40px" id="label">Confirm Password :</td>
                                <td>
                                    <input type="password" name="ConfPass" id="ConfPass"size="33" />
                                </td>

                            </tr>
                            <tr>

                                <td height="40px" id="label">Date of Birth :</td>
                                <td>
                                    <input type="text" name="DateOfBirth" id="DateOfBirth"size="33"readonly onclick="scwShow(this,event);" />
                                </td>
                                <td height="40px" id="label">Gender :</td>
                                <td>
                                    <select name="cmbgender" id="cmbgender">
                                        <option value="-1">Select</option>
                                        <option value="Male">Male</option>
                                        <option value="Female">Female</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td height="40px" id="label">Email Id :</td>
                                <td>
                                    <input type="text" name="EmailID" id="EmailID"size="33" />
                                </td>
                                <td height="40px" id="label">Contact No :</td>
                                <td>
                                    <input type="text" name="txtCnctNo" id="txtCnctNo" class=""size="33"/>
                                </td>
                            </tr>
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
                                <td align="center" colspan="4">
                                    <input type="submit" name="btnSubmit" id="btnSubmit"value="Create New User" class="button" onclick="return validateAdminpassword();"/>
                                    <input type="reset" name="btnreset" id="btnreset"value="Reset" class="button"/>
                                </td>
                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
            <tr>
                <td width="100%" Height="56" bgcolor="maroon">
                    <table width="100%">
                        <tr>
                            <td align="left" style="color: white;font-size: 14px;font-weight: bold">Developed By :</td>
                            <td width="80%">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" style="color: white;font-size: 14px;font-weight: bold">Softavate</td>
                            <td width="80%">&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>

        </table>
    </body>
</html>
