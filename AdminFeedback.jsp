<%--
    Document   : ProductList
    Created on : Feb 22, 2011, 4:57:54 AM
    Author     : softavate
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/menu.css" type="text/css"/>
        <link rel="stylesheet" href="css/stylesheet.css" type="text/css"/>
        <link rel="stylesheet" href="css/style-sheet.css" type="text/css"/>
        <title>Product</title>
    </head>
    <%
                String msg = null;
                msg = (String) session.getAttribute("MSG");
    %>
    <body>
        <table  width="80%" align="center"  bgcolor="white">
            <tr height="40px">
                <td>
                    <table width="100%">                        
                        <tr>
                            <td>
                                <%@include file="Adminheader_menu.html" %>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" width="100%" style="height:15px;" class="toplinls"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <%
                        int i = 0;
                        if (msg != null) {
            %>
            <tr>
                <td style="font-family: verdana;color: red;font-size: 10px" align="center"><%=msg%></td>
            </tr>
            <%
                            session.removeAttribute("MSG");
                        } else {
                            session.setAttribute("MSG", "");
                        }
            %>
            <tr>
                <td colspan="4" valign="top">
                    <form method="post" action="feedbackDelete">
                        <table cellpadding="3" cellspacing="3" align="center" width="83%" class="formTable">
                            <tr>
                                <td colspan="4" width="100%">
                                    <table width="100%">
                                        <tr class="white-font">
                                            <td align="center"width="25%">Name</td>
                                            <td align="center" width="15%">Mobile No</td>
                                            <td align="center" width="45%">Feed back/Suggestion</td>
                                          
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4" width="100%">
                                    <div style="height: 350px;width: 100%;overflow: auto;border-style: none" class="grid">
                                        <table width="100%">

                                            <%
                                                        PreparedStatement pst = null;
                                                        Connection con = null;
                                                        ResultSet rst = null;
                                                        String name = null;
                                                        String mobileNo = null;
                                                        String feedback = null;


                                                        try {
                                                            con = connection.connect.makeConnection();
                                                            String query = "select Name,ContNo,Remarks from feed_back";
                                                            pst = con.prepareStatement(query);
                                                            rst = pst.executeQuery();

                                                            while (rst.next()) {
                                                                name = rst.getString(1);
                                                                mobileNo = rst.getString(2);
                                                                feedback = rst.getString(3);
                                                                i++;
                                                                String rdo = "rdo" + i;
                                                                String del = "del" + i;

                                            %>
                                            <tr bgcolor="wheat">
                                                <td align="center" width="25%"><%=name%></td>
                                                <td align="center" width="15%"><%=mobileNo%></td>
                                                <td align="center" width="45%"><%=feedback%></td>
                                               
                                            </tr>
                                            <%                                                  }
                                                        } catch (Exception e) {
                                                            e.printStackTrace();
                                                        }
                                            %>
                                            <tr>
                                                <td align="right" colspan="4">
                                                    <input type="hidden" name="count" id="count" value="<%=i%>">
                                                  
                                                </td>
                                            </tr>
                                        </table>

                                    </div>
                                </td>
                            </tr>

                        </table>
                    </form>
                </td>
            </tr>
            <tr>
                <td height="50" colspan="2" align="center" class="toplinls" width="100%">
                    <span class="whitefont">Online Mall Shopping</span>
                </td>
            </tr>
        </table>
    </body>
</html>
