package com.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.dto.PathDetails;

public class PathDetailsDaoImpl implements PathDetailsDao {
	private SessionFactory factory;
	
	public PathDetailsDaoImpl() {
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();  
	    Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();  
	    factory = meta.getSessionFactoryBuilder().build();
	}

	@Override
	public Integer addPath(PathDetails pathDetails) {
		// TODO Auto-generated method stub
		Integer pathId = null;
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		pathId = (Integer) session.save(pathDetails);
		txn.commit();
		session.close();
		return pathId;
	}

	@Override
	public List<PathDetails> listPathDetails() {
		// TODO Auto-generated method stub
		List<PathDetails> pathDetails = null;
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		String hql = "FROM PathDetails";
		TypedQuery<PathDetails> query = session.createQuery(hql);
		pathDetails = query.getResultList();
		session.close();
		return pathDetails;
	}
	
	
}
