package message.dao;

import java.util.List;
import java.util.Map;

import message.vo.MessageVO;

public interface IMessageDao {

	/**
	 * MemberVO에 담겨진 데이터를 DB에 insert하기 위한 메서드
	 * @param mv DB에 insert할 데이터를 담은 VO객체
	 * @return DB작업이 성공하면 1이상의 값이 반환되고 실패하면 0이 반환된다.
	 */
	public int insertMessage(MessageVO msgv);
	
	/**
	 * 회원 ID에 해당하는 회원정보가 존재하는지 체크하기 위한 메서드
	 * @param memId 존재여부를 체므할 회원ID
	 * @return 회원이 존재하면 true, 존재하지 않으면 false리턴함
	 */
	public boolean checkMessage(String receiverId);
	
	/**
	 *MemberVO에 담겨진 데이터를 DB에 update하기 위한 메서드
	 * @param mv DB에 update할 데이터를 담은 VO객체
	 * @return DB작업이 성공하면 1이상의 값이 반환되고 실패하면 0이 반환된다.
	 */
	public int updateMessage(MessageVO msgv);
	
	/**
	 * 회원정보를 삭제하기 위한 메서드
	 * @param memId 삭제할 회원 ID
	 * @return DB작업이 성공하면 1이상의 값이 반환되고 실패하면 0이 반환된다.
	 */
	public int deleteMessage(String msgNO);
	
	/**
	 * DB에 존재하는 모든 회원정보를 조회하기 위한 메서드
	 * @return 모든 회원정보를 담은 List객체
	 */
	public List<MessageVO> selectAllMessage(String memNick);
	
	/**
	 * 검색할 데이터에 해당하는 회원정보 목록을 조회하기 위한 검색 메서드
	 * @param mv 검색할 데이터를 담은 VO객체
	 * @return 검색된 데이터를 회원정보를 담은 List객체
	 */
	public List<MessageVO> searchMessage(MessageVO msgv);

	public MessageVO getMessage(String receiverNick);

	public String checkMessage(Map<String, Object> map);

	public List<MessageVO> selectSendAllMessage(String memNick);
	
	public MessageVO getMessage(int msgNo);
	
}
