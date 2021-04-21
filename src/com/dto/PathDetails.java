package com.dto;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="paths_info")
public class PathDetails {
	
	@Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="path_id")
	private Integer pathId;
	
	@Column(name="airline")
	private String airline;

	@Column(name="source")
	private String source;
	
	@Column(name="destination")
	private String destination;
	

	@Column(name="price")
	private String price;
	

	public int getPathId() {
		return pathId;
	}
	
	public String getAirline() {
		return airline;
	}

	public void setAirline(String airline) {
		this.airline = airline;
	}
	
	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
	public PathDetails() {}

	public PathDetails(String airline, String source, String destination, String price) {
		super();
		this.airline = airline;
		this.source = source;
		this.destination = destination;
		this.price = price;
	}

	@Override
	public String toString() {
		return "PathDetails [pathId=" + pathId + ", airline=" + airline + ", source=" + source + ", destination="
				+ destination + ", price=" + price + "]";
	}

}
