/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author paria
 */
public class DBUtil {
    
    private static final EntityManagerFactory emf = 
            Persistence.createEntityManagerFactory("ToysWereUsPU");
    
    public static EntityManagerFactory getEmfFactory(){
        return emf;
    }
}
