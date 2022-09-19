/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tags;

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.util.*;



/**
 *
 * @author paria
 */
public class FooterInfo extends TagSupport{
    
    @Override
    public int doStartTag() throws JspException{
        GregorianCalendar gc = new GregorianCalendar();
        int currentYear = gc.get(Calendar.YEAR);
        
        String footer = "&copy;" + currentYear +" ToysWereUs Inc. All Rights Reserved.";
        
        try{
            JspWriter out = pageContext.getOut();
            out.print(footer);
        } catch (IOException ioe){
            System.out.println(ioe);
        }
        
        return SKIP_BODY;
    }
}