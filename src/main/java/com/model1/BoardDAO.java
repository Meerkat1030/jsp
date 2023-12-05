package com.model1;

import com.common.DBConnPool;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Vector;

public class BoardDAO extends DBConnPool {
    public BoardDAO(){
        super();
    }

    // 검색 조건에 맞는 게시물 개수 반환
    public int selectCount(Map<String, Object> map){
        int totalCount = 0;
        String query = " SELECT COUNT(*) FROM board";
        if(map.get("searchWord") != null){
            query += " WHERE " + map.get("searchFiled") + " "
                    +" LIKE '%" + map.get("searchWord") + "%'";
        }

        try{
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            rs.next();
            totalCount = rs.getInt(1);
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("selectCount 오류 발생");
        }

        return totalCount;
    }

    public List<BoardDTO> selectList(Map<String,Object>map){
        List<BoardDTO> bbs = new ArrayList<BoardDTO>();

        String query = " SELECT * FROM board";
        if(map.get("searchWord") != null){
            query += " WHERE " + map.get("searchFiled") + " "
                    +" LIKE '%" + map.get("searchWord") + "%'";
        }
        query += " ORDER BY num DESC";

        try{
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);

            while(rs.next()){
                // 게시물 하나의 내용을 저장
                BoardDTO dto = new BoardDTO();

                dto.setNum(rs.getString("num"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setId(rs.getString("id"));
                dto.setPostdate(rs.getDate("postdate"));
                dto.setVisitcount(rs.getString("visitcount"));

                bbs.add(dto);
            }

        }catch (Exception e){
            e.printStackTrace();
            System.out.println("selectList 오류 발생");
        }

        return bbs;
    }

    //게시글 작성
    public int insertWrite(BoardDTO dto){
        int result = 0;

        try{
            // 쿼리 작성
            String query = "INSERT INTO board ( "
                    + " num, title, content, id, visitcount)"
                    + " VALUES ( "
                    + " seq_board_num.NEXTVAL, ?, ?, ?, 0)";
            psmt = con.prepareStatement(query);
            psmt.setString(1,dto.getTitle());
            psmt.setString(2,dto.getContent());
            psmt.setString(3,dto.getId());

            result = psmt.executeUpdate();
        }catch (Exception e){
            System.out.println("insertWrite 메소드 오류 발생");
            e.printStackTrace();
        }

        return result;
    }
}
