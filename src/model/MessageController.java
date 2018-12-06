package model;

import java.util.ArrayList;
import java.util.List;

public class MessageController {
	private List<Message> messages = new ArrayList<>();

	public List<Message> getMessages() {
		return messages;
	}

	public void setMessages(List<Message> messages) {
		this.messages = messages;
	}
	
	public void addMessage(Message message) {
		messages.add(message);
	}

}
