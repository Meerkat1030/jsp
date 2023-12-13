package com.fileupload;

import com.util.JSFunction;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;

import static java.io.FileDescriptor.out;

public class FileUtil {
    // 파일 업로드
    public static String uploadFile(HttpServletRequest req, String sDir) throws ServletException, IOException{
        System.out.println("1");
        // Part 객체를 통해 서버로 전송된 파일명 읽기
        Part part = req.getPart("ofile");
//        Part part = req.getPart("ofile");
        System.out.println("2");

        // part 객체의 헤더갑 content-diposition 값 읽기
        String partHeader = part.getHeader("content-disposition");
        System.out.println("partHeader ::" + partHeader);

        // 헤더값에서 파일명 잘라내기
        String[] phArr = partHeader.split("filename=");
        String originalFileName = phArr[1].trim().replace("\"","");
        System.out.println("업로드 파일 메소드 : "+originalFileName);
        if(!originalFileName.isEmpty()){
            part.write(sDir+ File.separator + originalFileName);
        }

        return originalFileName;
    }
    // 파일명 변경
    public static String renameFile(String sDir, String fileName){
        // 확장자 잘라내기
        String ext = fileName.substring(fileName.lastIndexOf("."));

        // 날짜 및 시간을 통해 파일명 생성
        String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
        String newFileName = now + ext;
        File oldFile = new File(sDir + File.separator + fileName);
        File newFile = new File(sDir + File.separator + newFileName);
        oldFile.renameTo(newFile);

        return newFileName;
    }

    public static void download(HttpServletRequest req, HttpServletResponse resp, String Dir, String sfileName, String ofileName){
        String sDir = req.getServletContext().getRealPath(Dir);
        try{
            File file = new File(sDir, sfileName);
            InputStream inStream = new FileInputStream(file);

            String client = req.getHeader("User-Agent");
            if(client.indexOf("WOW64") == -1) { // 익스플로러가 아닌 경우
                ofileName = new String(ofileName.getBytes("UTF-8"), "ISO-8859-1");
            }else{ // 익스플로어인경우
                ofileName = new String(ofileName.getBytes("KSC5601"), "ISO-8859-1");
            }

            // 파일 다운로드용 응답 헤더 설정
            resp.reset();
            resp.setContentType("application/octet-stream");
            resp.setHeader("Content-Disposition", "attachment; filename=\"" + ofileName + "\"");
            resp.setHeader("Content-Length", "" + file.length() );

            // response 내장 객체로부터 새로운 출력 스트림 생성
            OutputStream outStream = resp.getOutputStream();

            byte[] b = new byte[(int)file.length()];
            int readBuffer = 0;
            while((readBuffer = inStream.read(b)) > 0){
                outStream.write(b, 0, readBuffer);
            }
            inStream.close();
            outStream.close();
        } catch (FileNotFoundException e){
            System.out.println("파일을 찾을 수 없습니다.");
            e.printStackTrace();
        }
        catch (Exception e){
            System.out.println("예외 발생");
            e.printStackTrace();
        }
    }
}
