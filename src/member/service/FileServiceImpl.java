package member.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import member.dao.FileDaoImpl;
import member.dao.IFileDao;
import member.vo.FileVO;

public class FileServiceImpl implements IFileService {
	private static IFileService fileService;
	   
	   private IFileDao fileDao;
	   
	   public FileServiceImpl() {
	      fileDao = FileDaoImpl.getInstance();

	   }
	   public static IFileService getInstance() {
	      if(fileService == null) {
	         fileService= new FileServiceImpl();
	      }
	      return fileService;
	   }

	   @Override
	   public FileVO saveFileList(HttpServletRequest req,String memId) {

	      // 업로드 경로 설정하기
	      String uploadPath = "d:/D_Other/ccc.jpg";

	      System.out.println("uploadPath => " + uploadPath);

	      File uploadDir = new File(uploadPath);
	      if (!uploadDir.exists()) {
	         uploadDir.mkdir();
	      }
	      FileVO FileVO = null;

	      try {
	    	  
	    	  boolean isFirstFile = true; // 첫번째 파일 여부
	    	  
	         for (Part part : req.getParts()) {
	        	 
	            String fileName = getFileName(part);


	            if (fileName != null && !fileName.equals("")) {

	               IFileDao fileDao = FileDaoImpl.getInstance();
	               
	               if (isFirstFile) {

	                  isFirstFile = false;

	                  // 파일 기본정보 저장하기
	                  FileVO = new FileVO();
	                  
	                  fileDao.insertFile(FileVO);

	               }
	               
	               String originFileName =fileName; //원본파일명
	               long fileSize = part.getSize(); //파일 크기
	               String saveFileName = ""; //저장파일명
	               String saveFilePath ="";
	               
	               saveFileName =UUID.randomUUID().toString().replaceAll("-", "");
	               
	               saveFilePath =uploadPath + File.separator+saveFileName;
	               
	               //확장명 추출
	               String fileExtension = originFileName.lastIndexOf(".")<0?
	                     "": originFileName.substring(originFileName.lastIndexOf(".")+1);
	               
	               //업로드 파일 저장하기
	               part.write(saveFilePath);
	               
	               FileVO.setFileStre(saveFilePath);
	               FileVO.setFileNm(saveFileName);
	               FileVO.setFileOgnm(originFileName);
	               FileVO.setFileExt(fileExtension);
	               FileVO.setFileSize(fileSize);
	               FileVO.setMemId(memId);
	               //파일 세부정보 저장하기
	               fileDao.insertFileDetail(FileVO);
	               
	               part.delete(); // 임시 업로드 파일 삭제하기

	            }

	         }
	      } catch (Exception e) {
//	         e.printStackTrace();
	         throw new RuntimeException("파일서비스 처리중 에러발생!", e);
	      }

	      return FileVO;
	   }

	   /**
	    * Part 객체 파싱하여 파일이름 추출하기
	    * 
	    * @param part
	    * @return 파일명(존재하지 않으면 null 리턴함)
	    */
	   private String getFileName(Part part) {

	      for (String content : part.getHeader("Content-Disposition").split(";")) {

	         if (content.trim().startsWith("filename")) {
	            return content.substring(content.indexOf("=") + 1).trim().replace("\"", "");

	         }
	      }
	      return null; // filename이 없는 경우(폼필드)
	   }

	

	   @Override
	   public FileVO getFileDetail(FileVO FileVO) {
	      return fileDao.getFileDetail(FileVO);
	   }
	@Override
	public List<FileVO> getFileList(String memId) {
		// TODO Auto-generated method stub
		return fileDao.getFileList(memId);
	}
	@Override
	public int setProfile(FileVO atchFileVO) {
		// TODO Auto-generated method stub
		return fileDao.setProfile(atchFileVO);
	}
	@Override
	public FileVO getProfile(String memId) {
		// TODO Auto-generated method stub
		return fileDao.getProfile(memId);
	}
	@Override
	public int deleteFileList(String memId) {
		// TODO Auto-generated method stub
		return fileDao.deleteFileList(memId);
	}
	@Override
	public List<FileVO> get3FileList(String memId) {
		// TODO Auto-generated method stub
		return fileDao.get3FileList(memId);
	}
}
