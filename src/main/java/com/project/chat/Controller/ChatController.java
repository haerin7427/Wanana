package com.project.chat.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;

import com.project.chat.Service.ChatService;
import com.project.portfolio.Service.BoardService;
import com.project.chat.DTO.*;
import com.project.login.DTO.User;

@Controller
public class ChatController {
    
    @Autowired
    private ChatService chatService;
    
    @Autowired
    private BoardService boardService;
    
    @Autowired
	private ChatSession cSession;
    
    /**
     * 해당 채팅방의 채팅 메세지 불러오기
     * @param roomId
     * @param userId
     * @param model
     * @param response
     * @throws JsonIOException
     * @throws IOException
     */
    @RequestMapping(value="{roomId}.do")
    public void messageList(@PathVariable String roomId, String userId, Model model, HttpServletResponse response) throws JsonIOException, IOException {
        
        List<MessageVO> mList = chatService.messageList(roomId);
        response.setContentType("application/json; charset=utf-8");
 
        // 안읽은 메세지의 숫자 0으로 바뀌기
        MessageVO message = new MessageVO();
        message.setUserId(Integer.parseInt(userId));
        message.setRoomId(Integer.parseInt(roomId));
        chatService.updateCount(message);
        
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        gson.toJson(mList,response.getWriter());
    }
    
    /**
     * 채팅 방이 없을 때 생성
     * @param room
     * @param userName
     * @param userId
     * @param receiverId
     * @return
     */
    @ResponseBody
    @RequestMapping("createChat.do")
    public String createChat(ChatRoomVO room, String userName, String userId,String receiverId) throws Exception{
        
        User m = boardService.getPortUserInfo(Integer.parseInt(receiverId)); //쪽지 받는 사람의 정보 가져오기
        
        room.setSenderId(Integer.parseInt(userId));
        room.setSenderName(userName);
        room.setReceiverId(m.getId());
        room.setReceiverName(m.getName());
 
        ChatRoomVO exist  = chatService.searchChatRoom(room);
        
        // DB에 방이 없을 때
        if(exist == null) {
            System.out.println("방이 없다!!");
            int result = chatService.createChat(room);
            if(result == 1) {
                System.out.println("방 만들었다!!");
                return "new";
            }else {
                return "fail";
            }
        }
        // DB에 방이 있을 때
        else{
            System.out.println("방이 있다!!");
            return "exist";
        }
    }
    
    /**
     * 채팅 방 목록 불러오기
     * @param room
     * @param userId
     * @param response
     * @throws JsonIOException
     * @throws IOException
     */
    @RequestMapping("chatRoomList.do")
    public void createChat(ChatRoomVO room, MessageVO message, String userId, HttpServletResponse response) throws JsonIOException, IOException{
        List<ChatRoomVO> cList = chatService.chatRoomList(userId);
        
        for(int i = 0; i < cList.size(); i++) {
            message.setRoomId(cList.get(i).getId());
            message.setUserId(Integer.parseInt(userId));
            int count = chatService.selectUnReadCount(message);
            cList.get(i).setUnReadCount(count);
        }
        
        response.setContentType("application/json; charset=utf-8");
 
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        gson.toJson(cList,response.getWriter());
    }
    
    @RequestMapping("chatSession.do")
	public void chatSession( HttpServletResponse response) throws JsonIOException, IOException{
		
		ArrayList<String> chatSessionList = cSession.getLoginUser();
		System.out.println(chatSessionList);
		response.setContentType("application/json; charset=utf-8");

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(chatSessionList,response.getWriter());
	}
}
