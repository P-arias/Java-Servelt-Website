/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tags;

import java.io.IOException;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
/**
 *
 * @author paria
 */
public class RequiredField extends TagSupport {
    
    @Override
    public int doStartTag() throws JspException{
    
        try{
            JspWriter out = pageContext.getOut();
            out.print("<font color= red>*</font>");
           
        }
        catch(IOException ioe){
            System.out.println(ioe);
        }
        
        return SKIP_BODY;
    }
}
