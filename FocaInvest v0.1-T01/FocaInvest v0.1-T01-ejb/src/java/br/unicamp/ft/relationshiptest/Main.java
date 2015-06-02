package br.unicamp.ft.relationshiptest;

import br.unicamp.ft.commons.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
 
public class Main {
 
    public static void main(String[] args) {
 
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        
        Meeting meeting1 = new Meeting("Quaterly Sales meeting");
        Meeting meeting2 = new Meeting("Weekly Status meeting");
        
        Employee employee1 = new Employee("Sergey", "Brin");
        Employee employee2 = new Employee("Larry", "Page");

        employee1.getMeetings().add(meeting1);
        employee1.getMeetings().add(meeting2);
        employee2.getMeetings().add(meeting1);
        
        session.save(employee1);
        session.save(employee2);
        
        Meeting meeting = ((Employee) session.createQuery("from Employee e where e.employeeId = 1").list().get(0)).getMeetings().iterator().next();
        System.out.println(meeting.getSubject());
        
        
        session.getTransaction().commit();
        session.close();
    }
}