package com.client;

import java.util.List;

import com.dao.PathDetailsDao;
import com.dao.PathDetailsDaoImpl;
import com.dto.PathDetails;

public class Client {
	public static void main(String[] args) {
		PathDetailsDao path = new PathDetailsDaoImpl();
		List<PathDetails> paths = path.listPathDetails();
		System.out.println(paths); 
	}
}
