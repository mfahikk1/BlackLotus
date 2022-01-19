package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Vendors_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/VendorHeader.jsp");
    _jspx_dependants.add("/Footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            .header{\n");
      out.write("                    position: fixed;\n");
      out.write("                    left: 0;\n");
      out.write("                    bottom: 0;\n");
      out.write("                    width: 100%;\n");
      out.write("                    background-color: black;\n");
      out.write("                    color: white;\n");
      out.write("                    text-align: center;\n");
      out.write("                    \n");
      out.write("                   }\n");
      out.write("            .font-size{\n");
      out.write("                    font-size:25px; \n");
      out.write("                      } \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <center><img src=\"Black-Lotus-Logo.png\" width='40%' height=\"150\"></center>\n");
      out.write("      \n");
      out.write("                <table width='100%' align='center'>                \n");
      out.write("                \n");
      out.write("                    <tr class='font-size'>\n");
      out.write("                        <td align='center' bgcolor='Black'><a href='index.html'>Home</a></td>\n");
      out.write("                        <td align='center' bgcolor='Black'><a href='Vendors.jsp'>My Profile</a></td>\n");
      out.write("                        <td align='center' bgcolor='Black'><a href='OrderList.jsp'>Order List</a></td>\n");
      out.write("                        <td align='center' bgcolor='Black'><a href='StockView.jsp'>View Stock</a></td>\n");
      out.write("                        <td align='center' bgcolor='Black'><a href='AboutUs.jsp'>About Us</a></td>                        \n");
      out.write("                        <td align='center' bgcolor='Black'><a href='Login.jsp'>Log Out</a></td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("        </header>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <h2 align=\"center\">Welcome to</h2>\n");
      out.write("        <h1 align=\"center\">Black Lotus</h1>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String type ="";
        Cookie mycookieArr[]=request.getCookies();
        
        for(Cookie coo:mycookieArr)
        {
            if(coo.getName().equals("mycookie"))
            {
                type=coo.getValue();
            }
        }
        
        //out.println("Hello"+type);
        
      out.write("\n");
      out.write("        <style>\n");
      out.write("            img {\n");
      out.write("  border-radius: 50%;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("         <br><br>\n");
      out.write("        <div>\n");
      out.write("  <table border=\"0\" style=\"float: left\">\n");
      out.write("    <table border=\"0\" width=\"30%\" cellpadding=\"10px;\" align='left'>\n");
      out.write("            \n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td><table border=\"0\" width=\"50%\" cellpadding=\"10px;\" align='left'>\n");
      out.write("                            \n");
      out.write("                            <tbody>\n");
      out.write("                                <thead >User Profile<br><hr align=\"Center\" width=\"100%\"><br><img src=\"Profile.png\" alt=\"Profile\" style=\"width:200px\"></thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Email</td>\n");
      out.write("                                    <td>Christina@gmail.com</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Address</td>\n");
      out.write("                                    <td>United Kingdom</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Telephone</td>\n");
      out.write("                                    <td>0122213355</td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Name</td>\n");
      out.write("                                    <td>Christina</td>\n");
      out.write("                                </tr>                               \n");
      out.write("                            </tbody>\n");
      out.write("                        </table>\n");
      out.write("                    </td>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("               \n");
      out.write("                \n");
      out.write("            </tbody>\n");
      out.write("            \n");
      out.write("        </table>\n");
      out.write("  </table><br><br>\n");
      out.write("  <table border=\"0\" style=\"float: right\">\n");
      out.write("    <table border=\"0\" width=\"30%\" cellpadding=\"10px;\" align='right'>\n");
      out.write("            \n");
      out.write("            <tbody>\n");
      out.write("                <tr>\n");
      out.write("                    <td><table border=\"0\" width=\"50%\" cellpadding=\"10px;\" align='left'>\n");
      out.write("                            \n");
      out.write("                            <tbody>\n");
      out.write("                                <thead>Order Confirmation<br><hr align=\"Center\" width=\"100%\"></thead>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Ordered Product</td>\n");
      out.write("                                    <td></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Customer Name</td>\n");
      out.write("                                    <td></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Address</td>\n");
      out.write("                                    <td></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Telephone</td>\n");
      out.write("                                    <td></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td>Availability</td>\n");
      out.write("                                    <td></td>\n");
      out.write("                                </tr>\n");
      out.write("                                <tr>\n");
      out.write("                                    <td></td>\n");
      out.write("                                    <td align='center'><input type=\"submit\" value=\"Order Now\" name=\"btnorderAdd\" /></td>\n");
      out.write("                                </tr>\n");
      out.write("                            </tbody>\n");
      out.write("                        </table><br><br>\n");
      out.write("                    </td>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("               \n");
      out.write("                \n");
      out.write("            </tbody>\n");
      out.write("            \n");
      out.write("        </table<br><br>\n");
      out.write("  </table><br><br>\n");
      out.write("</div>\n");
      out.write("    </body>\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("           .footer  {\n");
      out.write("                                                \n");
      out.write("                        \n");
      out.write("                        background-color: black;\n");
      out.write("                        color: white;\n");
      out.write("                        text-align: center;\n");
      out.write("                        width: 100%;\n");
      out.write("                        height: auto;\n");
      out.write("                        \n");
      out.write("                        margin-top: 200px;\n");
      out.write("                        \n");
      out.write("                        overflow: hidden;\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        /*\n");
      out.write("                        margin-top: -200px;\n");
      out.write("                        clear: both;\n");
      out.write("                        overflow: hidden;\n");
      out.write("                        position: fixed;\n");
      out.write("                        position: relative;                      \n");
      out.write("                        min-height: 20%;                        \n");
      out.write("                        margin: 25px 0 0 0;\n");
      out.write("                        position: relative;\n");
      out.write("                        \n");
      out.write("                        background-position: bottom;\n");
      out.write("                        background-repeat: no-repeat;\n");
      out.write("                        background-attachment: fixed;\n");
      out.write("                        background-size: 100% 60%;\n");
      out.write("                        bottom: 0px;*/\n");
      out.write("                    }\n");
      out.write("                    \n");
      out.write("         .footer-social-icons{\n");
      out.write("                width: 100%;\n");
      out.write("                height: auto;\n");
      out.write("                margin:auto;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul{\n");
      out.write("                margin:0px;\n");
      out.write("                padding: 0px;\n");
      out.write("                text-align: center;\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul li{\n");
      out.write("                display: inline-block;\n");
      out.write("                margin-right: 2px;\n");
      out.write("                width: 36px;\n");
      out.write("                height: 36px;\n");
      out.write("                text-align: center;\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul li a{\n");
      out.write("                color: #fff;\n");
      out.write("                display: block;\n");
      out.write("                font-size: 22px;\n");
      out.write("                text-shadow: 0px 0px 5px rgba(0,0,0,0.75);\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul li a i{\n");
      out.write("                line-height: 36px;\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul li:nth-child(1){\n");
      out.write("                  background: #3b5998;\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul li:nth-child(2){\n");
      out.write("                  background: #1da1f2;\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul li:nth-child(3){\n");
      out.write("                  background: #25d366;\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul li:nth-child(4){\n");
      out.write("                  background: #c32aa3;\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul li:nth-child(5){\n");
      out.write("                  background: #007bb5;\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul li:nth-child(6){\n");
      out.write("                  background: #ff0000;\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul li:nth-child(7){\n");
      out.write("                  background: #db4437;\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul li:nth-child(8){\n");
      out.write("                  background: #00aff0;\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul li:nth-child(9){\n");
      out.write("                  background: #09b83e;\n");
      out.write("              }\n");
      out.write("              .footer-social-icons ul li:nth-child(10){\n");
      out.write("                  background: #bd081c;\n");
      out.write("              }\n");
      out.write("            \n");
      out.write("                         \n");
      out.write("              /*RESPONSIVE CODE*/\n");
      out.write("@media only screen and (max-width: 1199px){\n");
      out.write("  .footer{\n");
      out.write("    position: relative;\n");
      out.write("    background-attachment: scroll;\n");
      out.write("  }\n");
      out.write("                      \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"footer\">\n");
      out.write("            <div class=\"row\"> \n");
      out.write("                \n");
      out.write("                <div class=\"footer-social-icons\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-whatsapp\"></i></a></li>\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-instagram\"></i></a></li>\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-linkedin\"></i></a></li>\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-youtube\"></i></a></li>\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-google-plus\"></i></a></li>\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-skype\"></i></a></li>\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-wechat\"></i></a></li>\n");
      out.write("                <li><a href=\"#\" target=\"_blank\"><i class=\"fa fa-pinterest\"></i></a></li>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("                <p>Address: No: 68, Wilmot Street,<br> Hambantota <br>Tel: 077-7926989<br>Email Address: mfahikk1@gmail.com  </p>\n");
      out.write("                <p>Copyright &copy; 2017 All Rights Reserved by <a href=\"index.html\">Black Lotus</a>.</p>\n");
      out.write("                </div>    \n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("         \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
