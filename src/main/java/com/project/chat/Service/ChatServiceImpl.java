package com.project.chat.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.chat.DTO.ChatRoomVO;
import com.project.chat.DTO.MessageVO;
import com.project.chat.DAO.ChatDAO;

@Service
public class ChatServiceImpl implements ChatService {
	
	@Autowired
	private ChatDAO cDao;

	@Override
	public ChatRoomVO selectChatRoom(String roomId) {
		return cDao.selectChatRoom(roomId);
	}

	@Override
	public int insertMessage(MessageVO chatMessage) {
		return cDao.insertMessage(chatMessage);
	}

	@Override
	public List<MessageVO> messageList(String roomId) {
		return cDao.messageList(roomId);
	}

	@Override
	public int createChat(ChatRoomVO room) {
		return cDao.createChat(room);
	}

	@Override
	public ChatRoomVO searchChatRoom(ChatRoomVO room) {
		return cDao.searchChatRoom(room);
	}

	@Override
	public List<ChatRoomVO> chatRoomList(String userEmail) {
		return cDao.chatRoomList(userEmail);
	}

	@Override
	public int selectUnReadCount(MessageVO message) {
		return cDao.selectUnReadCount(message);
	}

	@Override
	public int updateCount(MessageVO message) {
		return cDao.updateCount(message);
	}

}
