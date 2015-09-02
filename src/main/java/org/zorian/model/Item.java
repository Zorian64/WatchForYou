package org.zorian.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.zorian.model.enums.State;

@Entity
@Table(name = "shopping_cart")
public class Item {

	@Id
	@GeneratedValue
	private Integer id;

	@ManyToOne
	@JoinColumn(name = "watches_id")
	private Watch watch;

	@ManyToOne
	@JoinColumn(name = "users_id")
	private User user;
	
	@Enumerated(EnumType.STRING)
	@Column(name = "state")
	public State state;

	public Item() {
		// TODO Auto-generated constructor stub
	}

	public Item(Integer id, Watch watch, User user, State state) {
		super();
		this.id = id;
		this.watch = watch;
		this.user = user;
		this.state = state;
	}

	public Integer getId() {
		return id;
	}

	public Watch getWatch() {
		return watch;
	}

	public void setWatch(Watch watch) {
		this.watch = watch;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public State getState() {
		return state;
	}

	public void setState(State state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "ShoppingCart [id=" + id + ", watch=" + watch + ", user=" + user + ", state=" + state + "]";
	}

}
