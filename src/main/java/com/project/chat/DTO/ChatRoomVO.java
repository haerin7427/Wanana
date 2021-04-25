package com.project.chat.DTO;

public class ChatRoomVO{

	private int id;
	private int unReadCount;
	private int senderId;
	private String senderName;
	private int receiverId;
	private String receiverName;
	
	public ChatRoomVO() {
		super();
	}
	
	public ChatRoomVO(int id, int senderId, String senderName,int receiverId,
			String receiverName, int unReadCount) {
		super();
		this.id = id;
		this.senderId = senderId;
		this.senderName = senderName;
		this.receiverId = receiverId;
		this.receiverName = receiverName;
		this.unReadCount = unReadCount;
	}
	
	@Override
	public String toString() {
		return "ChatRoomVO [id=" + id + ", unReadCount=" + unReadCount + ", senderId=" + senderId + ", senderName="
				+ senderName + ", receiverId=" + receiverId + ", receiverName=" + receiverName + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUnReadCount() {
		return unReadCount;
	}
	public void setUnReadCount(int unReadCount) {
		this.unReadCount = unReadCount;
	}
	public int getSenderId() {
		return senderId;
	}
	public void setSenderId(int senderId) {
		this.senderId = senderId;
	}
	public String getSenderName() {
		return senderName;
	}
	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}
	public int getReceiverId() {
		return receiverId;
	}
	public void setReceiverId(int receiverId) {
		this.receiverId = receiverId;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	
}