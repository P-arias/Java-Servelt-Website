/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;



import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import beans.User;
import java.io.IOException;
import java.util.Properties;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utils.UserDAO;

/**
 *
 * @author paria
 */
@WebServlet(name = "SignUpServ", urlPatterns = {"/SignUpServ"})
public class SignUpServ extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");
        String password_1 = request.getParameter("password_1");
        String password_2 = request.getParameter("password_2");
        String action = request.getParameter("action");
        
        String subject = "ToysWereUs Account Registration";
        String body = "Dear " + firstName + ",\n\n" +
                       "Thank you for signing up. Now that your ToysWereUs account is active, you will be able to easily track your purchases"
                       + " and find amazing discounts and coupons.\n\n" 
                       + "Thanks,\n"
                       + "ToysWereUs";
        String to = email;
        
        
        String url = "";

        
        HttpSession session = request.getSession();
        
        
        if(action != null) {
            if(password_1.equals(password_2)) {
                
                
                
                 boolean emailExists = UserDAO.emailExists(email);
                    if( emailExists == false){
                        
                    User user = new User();
                    user.setFirstName(firstName);
                    user.setLastName(lastName);
                    user.setEmail(email);
                    user.setAddress(address);
                    user.setPhoneNumber(phoneNumber);
                    user.setPassword(password_1);
                        
                        
                    session.setAttribute("loggedin", "true");
                    Cookie cookie = new Cookie("username",email);
                    response.addCookie(cookie);
                    
                    UserDAO.insertUser(user);
                    session.setAttribute("user", user);
                    url = "/account.jsp";
                    
                            try{
                                Properties props = new Properties();
                                props.put("mail.transport.protocol", "smtps");
                                props.put("mail.smtps.host", "smtp.gmail.com");
                                props.put("mail.smtps.port", 465);
                                props.put("mail.smtps.auth", "true");
                                props.put("mail.smtps.quitwait", "false");
                                Session mysession = Session.getDefaultInstance(props);
                                mysession.setDebug(true);

                                Message message = new MimeMessage(mysession);
                                message.setSubject(subject);
                                message.setText(body);

                                Address fromAddress = new InternetAddress("toyswereus.ltd@gmail.com");
                                Address toAddress = new InternetAddress(to);
                                message.setFrom(fromAddress);
                                message.setRecipient(Message.RecipientType.TO, toAddress);

                                Transport transport = mysession.getTransport();
                                transport.connect("toyswereus.ltd@gmail.com", "SesameSesame");
                                transport.sendMessage(message, message.getAllRecipients());
                                transport.close();
            
            
            
                                    }
                                    catch(MessagingException ex){

                                    }
                    
                    }
                    else{
                    request.setAttribute("error", "This email address has already been registered. Please use another email");
                    url = "/signUp.jsp";
                        
                        //Sending back entered values
                    request.setAttribute("firstName", firstName);
                    request.setAttribute("lastName", lastName);
                    request.setAttribute("email", email);
                    request.setAttribute("address", address);
                    request.setAttribute("phoneNumber", phoneNumber);
                    }
                
            }
            else {
                    request.setAttribute("error", "The passwords do not match.");
                    url = "/signUp.jsp";
                    
                    /*Sending back entered values*/
                    request.setAttribute("firstName", firstName);
                    request.setAttribute("lastName", lastName);
                    request.setAttribute("email", email);
                    request.setAttribute("address", address);
                    request.setAttribute("phoneNumber", phoneNumber);
                    
                }
            
        }
        getServletContext().getRequestDispatcher(url).forward(request, response);

        
        getServletContext()
        .getRequestDispatcher(url)
          .forward(request, response);
        
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
