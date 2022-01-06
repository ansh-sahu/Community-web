package com.helper;

import java.util.Date;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
 
import com.entities.*;




public class dao {
    Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		
		  public BasicData check(String email,String password)
		    {  
		      boolean flag=true;
		    System.out.println(email);
		    
		    Session sp= new Configuration().configure("hibernate.cgf.xml").buildSessionFactory().openSession();
		   
		    Criteria crit = sp.createCriteria(BasicData.class);
		    crit.add(Restrictions.eq("email",email));
		    crit.add(Restrictions.eq("password",password));
		 
		    BasicData b=(BasicData) crit.uniqueResult();
		    return b;
		}
		
		
	private SessionFactory getCurrentSession() {
			// TODO Auto-generated method stub
			return null;
		}
	
		 
		 
		 
 public boolean insert(String first,String last,String email,String password,String gender,Date age,String  field)
     {
       boolean flag=true;
        BasicData b=new BasicData();
        b.setFirst(first);
        b.setLast(last);
        b.setEmail(email);
        b.setPassword(password);
        b.setGender(gender);
        b.setAge(age);
        b.setField(field);
  
   try
   {
   s.save(b);
   tx.commit();
   flag=true;
   }
   catch(Exception e){
   System.out.print(e);
   tx.rollback();
   flag=false;
   }
   s.close();
   return flag;
   }
}
