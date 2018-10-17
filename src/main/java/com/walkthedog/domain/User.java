package com.walkthedog.domain;

import java.time.LocalDate;

public class User {
private int id;
private String name;
private String secondName;
private String email;

public User() {
	
}
public User(int id, String name, String secondName, String email) {
	super();
	this.id = id;
	this.name = name;
	this.secondName = secondName;
	this.email = email;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getSecondName() {
	return secondName;
}
public void setSecondName(String secondName) {
	this.secondName = secondName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((email == null) ? 0 : email.hashCode());
	result = prime * result + id;
	result = prime * result + ((name == null) ? 0 : name.hashCode());
	result = prime * result + ((secondName == null) ? 0 : secondName.hashCode());
	return result;
}
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	User other = (User) obj;
	if (email == null) {
		if (other.email != null)
			return false;
	} else if (!email.equals(other.email))
		return false;
	if (id != other.id)
		return false;
	if (name == null) {
		if (other.name != null)
			return false;
	} else if (!name.equals(other.name))
		return false;
	if (secondName == null) {
		if (other.secondName != null)
			return false;
	} else if (!secondName.equals(other.secondName))
		return false;
	return true;
}
@Override
public String toString() {
	return "User [id=" + id + ", name=" + name + ", secondName=" + secondName + ", email=" + email + "]";
}


}
