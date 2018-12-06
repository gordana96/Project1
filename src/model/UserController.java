package model;

import java.util.ArrayList;
import java.util.List;

public class UserController {
	List<User> users = new ArrayList<>();

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}
	
	public User login(String username, String password) {
		for (User user : users) {
			if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
				return user;
			}
		}
		return null;
	}
	
	public boolean register(User user) {
		for (User u : users) {
			if (u.getUsername().equals(user.getUsername())) {
				return false;
			}
		}
		users.add(user);
		return true;
	}

}
