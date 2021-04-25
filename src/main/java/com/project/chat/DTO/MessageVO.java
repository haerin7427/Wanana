package com.project.chat.DTO;

import java.util.Date;

import com.google.gson.Gson;

public class MessageVO {
	
		private int id; //메시지 번호
	 	private int roomId;			// 방 번호
	    private String message;			// 메세지 내용
	    private String name;			// 보낸이 이름
	    private int userId;			// 보낸이 이메일
	    private int unReadCount;		// 안 읽은 메세지 수
	    private int sessionCount;		// 현재 세션 수
		
	    public MessageVO() {
			super();
		}

		public MessageVO(int id,int roomId, String message, String name, int userId, int unReadCount,
				int sessionCount) {
			super();
			this.id=id;
			this.roomId = roomId;
			this.message = message;
			this.name = name;
			this.userId = userId;
			this.unReadCount = unReadCount;
			this.sessionCount = sessionCount;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public int getRoomId() {
			return roomId;
		}

		public void setRoomId(int roomId) {
			this.roomId = roomId;
		}

		public int getUserId() {
			return userId;
		}

		public void setUserId(int userId) {
			this.userId = userId;
		}

		public String getMessage() {
			return message;
		}

		public void setMessage(String message) {
			this.message = message;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public int getUnReadCount() {
			return unReadCount;
		}

		public void setUnReadCount(int unReadCount) {
			this.unReadCount = unReadCount;
		}

		public int getSessionCount() {
			return sessionCount;
		}

		public void setSessionCount(int sessionCount) {
			this.sessionCount = sessionCount;
		}

		@Override
		public String toString() {
			return "MessageVO [id=" + id + ", roomId=" + roomId + ", message=" + message + ", name=" + name
					+ ", userId=" + userId + ", unReadCount=" + unReadCount + ", sessionCount=" + sessionCount + "]";
		}

	
}