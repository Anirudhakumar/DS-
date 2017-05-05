/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hib;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

public class TableCreater {
    public static void main(String[] args) {
        Configuration cfg = new Configuration();
        //cfg.addAnnotatedClass(table.MiniProject.class);
        //cfg.addAnnotatedClass(table.Employee.class);
        //cfg.addAnnotatedClass(table.MajorProject.class);
        
        //cfg.addAnnotatedClass(table.LiveProject.class);
        //cfg.addAnnotatedClass(table.Candidate.class);
        cfg.addAnnotatedClass(Table.User.class);
        //cfg.addAnnotatedClass(Table.Profile.class);
        
        cfg.configure();
        SchemaExport se=new SchemaExport(cfg);
        se.create(true,true);
        System.out.println("TABLE CREATED!!");
        
        
      
    }
    
}
