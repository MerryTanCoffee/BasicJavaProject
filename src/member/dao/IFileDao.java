package member.dao;

import java.util.List;

import member.vo.FileVO;

public interface IFileDao {

	/**
	 * 첨부파일 저장
	 * @param FileVO	첨부파일정보를 담은 VO객체
	 * @return 성공시 1, 실패시 0 리턴함.
	 */
	public int insertFile(FileVO FileVO);
	
	
	/**
	 * 첨부파일 세부정보 저장
	 * @param FiVo 첨부파일 세부정보를 담은 VO객체
	 * @return 성공시 1, 실패시 0리턴
	 */
	public int insertFileDetail(FileVO FiVo);
	
	/**
	 * 첨부파일 목록 조회
	 * @param memId
	 * @return
	 */
	public List<FileVO> getFileList(String memId);
	
	/**
	 * 첨부파일 세부정보 조회
	 * @param FileVO
	 * @return
	 */
	public FileVO getFileDetail(FileVO FileVO);


	public int setProfile(FileVO atchFileVO);


	public FileVO getProfile(String memId);


	public int deleteFileList(String memId);


	public List<FileVO> get3FileList(String memId);
}
