/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.repository.impl;

import com.hm.pojo.Comment;
import com.hm.repository.CommentRepository;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ANHMINH
 */
@Repository
@Transactional
public class CommentRepositoryImpl implements CommentRepository {
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Override
    public Comment addComment(Comment c) {
      Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(c);
        return c;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
}
