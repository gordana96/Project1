package model;

public class User {
private String firstname;
private String lastname;
private String username;
private String password;
private boolean loggedIn;
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public boolean isLoggedIn() {
	return loggedIn;
}
public void setLoggedIn(boolean loggedIn) {
	this.loggedIn = loggedIn;
}


}
