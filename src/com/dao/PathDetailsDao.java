package com.dao;

import java.util.List;

import com.dto.PathDetails;

public interface PathDetailsDao {
	public Integer addPath(PathDetails pathDetails);
	public List<PathDetails> listPathDetails();
}
