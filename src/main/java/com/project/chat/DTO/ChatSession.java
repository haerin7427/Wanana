package com.project.chat.DTO;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component("cSession")
public class ChatSession {
	
	private static ArrayList<String> loginUser = new ArrayList<String>();
	
	public void addLoginUser(String id) {
		loginUser.add(id);
	}
	
	public void removeLoginUser(String id) {
		loginUser.remove(id);
	}

	public static ArrayList<String> getLoginUser() {
		return loginUser;
	}

	public static void setLoginUser(ArrayList<String> loginUser) {
		ChatSession.loginUser = loginUser;
	}
}
