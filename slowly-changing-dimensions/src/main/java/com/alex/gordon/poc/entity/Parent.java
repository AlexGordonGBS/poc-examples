package com.alex.gordon.poc.entity;


import java.io.Serializable;
import java.time.Instant;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
@Table(name="PARENT")
public class Parent implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6832985471648728119L;

	@Id
	@Basic(optional = false)
	@Column(name = "ID", nullable=false)
	private Long id;

	@Basic(optional = false)
	@Column(name = "PARENT_NUMBER", length=10)
	private String parentNumber;

	@Basic(optional = false)
	@Column(name = "PARENT_NAME", length=100)
	private String parentName;

	@Basic(optional = false)
	@Column(name = "FROM_TIME")
	private Instant fromTime;

	@Basic(optional = false)
	@Column(name = "TO_TIME")
	private Instant toTime;

	@OneToMany(fetch=FetchType.LAZY, mappedBy = "parent", orphanRemoval = true)
	@Fetch(FetchMode.SUBSELECT)
	private Set<Child> childs = new HashSet<>();

	public Parent() {
	}

	public Parent(Long id) {
		this.id = id;
	}


}