package com.alex.gordon.poc.entity;


import java.io.Serializable;
import java.time.Instant;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="CHILD")
public class Child implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5358880085070420850L;

	@Id
	@Basic(optional = false)
	@Column(name = "ID", nullable=false)
	private Long id;

	@Basic(optional = false)
	@Column(name = "PARENT_NUMBER", length=10)
	private String parentNumber;

	@Basic(optional = false)
	@Column(name = "CHILD_NAME", length=100)
	private String childName;

	@Basic(optional = false)
	@Column(name = "FROM_TIME")
	private Instant fromTime;

	@Basic(optional = false)
	@Column(name = "TO_TIME")
	private Instant toTime;

	@ManyToOne
	private Parent parent;

	public Child() {
	}

	public Child(Long id) {
		this.id = id;
	}


}