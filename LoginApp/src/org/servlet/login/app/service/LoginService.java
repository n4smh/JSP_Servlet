package org.servlet.login.app.service;

import java.util.HashMap;
import java.util.Map;

import org.servlet.login.app.dto.User;

public class LoginService {
	Map<String, String> users = new HashMap<String, String>();

	public LoginService() {
		users.put("admin", "User_admin");
		users.put("root", "User_root");
		users.put("usr", "User_usr");
	}

	public boolean authenticate(String userId, String userPassword) {

		if (userId == null || userId.trim() == "" || userPassword == null || userPassword.trim() == "") {
			return false;
		} else if (users.containsKey(userId)) {
			return true;
		} else {
			return false;
		}
	}

	public User getUserDetails(String userId) {

		User user = new User();

		user.setUserId(userId);
		if (users.containsKey(userId)) {
			user.setUserName(users.get(userId));
		}
		return user;
	}
}
