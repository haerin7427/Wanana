package com.project.chat.Service;
import java.util.*;
import com.project.chat.DTO.ChatRoomVO;
import com.project.chat.DTO.MessageVO;
public interface ChatService {
	

	/**
	 * 방 번호를 선택하는 메소드
	 * @param roomId
	 * @return
	 */
	ChatRoomVO selectChatRoom(String roomId);

	/**
	 * 채팅 메세지 DB 저장
	 * @param chatMessage
	 * @return 
	 */
	int insertMessage(MessageVO chatMessage);

	/**
	 * 메세지 내용 리스트 출력
	 * @param roomId
	 * @return
	 */
	List<MessageVO> messageList(String roomId);

	/**
	 * 채팅 방 DB 저장
	 * @param room
	 * @return
	 */
	int createChat(ChatRoomVO room);

	/**
	 * DB에 채팅 방이 있는지 확인
	 * @param room
	 * @return
	 */
	ChatRoomVO searchChatRoom(ChatRoomVO room);

	/**
	 * 채팅 방 리스트 출력
	 * @param userEmail
	 * @return
	 */
	List<ChatRoomVO> chatRoomList(String userEmail);

	/**
	 * 채팅 읽지 않은 메세지 수 출력
	 * @param message
	 * @return
	 */
	int selectUnReadCount(MessageVO message);

	/**
	 * 읽은 메세지 숫자 0으로 바꾸기
	 * @param message
	 * @return
	 */
	int updateCount(MessageVO message);


}
