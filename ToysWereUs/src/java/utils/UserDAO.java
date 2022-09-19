/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import beans.User;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

/**
 *
 * @author paria
 */
public class UserDAO {
    
    public static void insertUser(User user){
        
        EntityManager em = DBUtil.getEmfFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        
        try{
            em.persist(user);
            trans.commit();
        
        }
        catch(Exception ex)
        {
            System.out.println(ex);
            trans.rollback();
        }
        finally{
            em.close();
        }
        
    }
    
    public static User selectUser(String email) {
       EntityManager em = DBUtil.getEmfFactory().createEntityManager();
        String qString = "SELECT u FROM User u " +
                          "WHERE u.email = :email";
        TypedQuery<User> q = em.createQuery(qString, User.class);
        q.setParameter("email", email);
        
        try{
            User user = q.getSingleResult();
            return user;
        }catch(NoResultException ex)
        {
            return null;
        }
        finally{
            em.close();
        }
        
    }
    
    public static User selectUserLogin(String email, String password) {
       EntityManager em = DBUtil.getEmfFactory().createEntityManager();
        String qString = "SELECT u FROM User u " +
                          "WHERE u.email = :email AND u.password = :password";
        TypedQuery<User> q = em.createQuery(qString, User.class);
        q.setParameter("email", email);
        q.setParameter("password", password);
        
        try{
            User user = q.getSingleResult();
            return user;
        }catch(NoResultException ex)
        {
            return null;
        }
        finally{
            em.close();
        }
     }

    
    public static boolean emailExists(String email){
    User u = selectUser(email);
    return u != null;
    }
}
