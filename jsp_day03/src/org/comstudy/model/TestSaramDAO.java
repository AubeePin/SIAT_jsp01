package org.comstudy.model;

import java.util.List;
import java.util.Scanner;

public class TestSaramDAO {
   static Scanner scan = new Scanner(System.in);
   static SaramDAO saramDao = new SaramDAO();
   
   public static void main(String[] args) {
      a: while(true) {
         switch(menu() ) {
         case 1 : inputSaram(); break;
         case 2 : ouputSaramList(); break;
         case 3 : searchSaram(); break;
         case 4 : modifySaram(); break;
         case 5 : deleteSaram(); break;
         case 6 : break a;
         default : System.out.println("잘못 선택 했습니다!");
         }
      }
      System.out.println("--- 수고하셨습니다 ---");
   }

   private static void deleteSaram() {
      ouputSaramList();
      System.out.print("삭제 할 SEQ : ");
      int seq = scan.nextInt();
      saramDao.delete(new SaramDTO(seq));
   }

   private static void modifySaram() {
      ouputSaramList();
      System.out.println("### 수정 기능 ###");
      System.out.print("수정 할 SEQ : ");
      int seq = scan.nextInt();
      SaramDTO saram = saramDao.findBySeq(seq);
      if(saram == null) {
         System.out.println("수정 할 정보가 부재합니다.");
         return;
      } 
      System.out.print("새 아이디: ");
      String newId = scan.next();
      if(!newId.equals("")) saram.setId(newId);
      System.out.print("새 이름: ");
      String newName = scan.next();
      if(!newName.equals("")) saram.setName(newName);
      System.out.print("새 이메일: ");
      String newEmail = scan.next();
      if(!newEmail.equals("")) saram.setEmail(newEmail);
      System.out.println("--- 수정 완료! ---");
   }

   private static void searchSaram() {
      System.out.println("### 검색 기능 ###");
      System.out.print("수정 할 SEQ : ");
      int seq = scan.nextInt();
      SaramDTO saram = saramDao.selectOne(new SaramDTO(seq));
      if(saram == null) {
         System.out.println("검색 된 사람이 없다!");
         return;
      }
      System.out.println(saram);
   }

   private static void ouputSaramList() {
      System.out.println("### 사람 정보 목록 ###");
      List<SaramDTO> list = saramDao.selectAll();
      for(SaramDTO saram : list) {
         System.out.println(saram);
      }
   }

   private static void inputSaram() {
      System.out.println("### 입력 기능 ###");
      System.out.print("아이디 입력: ");
      String id = scan.next();
      System.out.print("성명 입력: ");
      String name = scan.next();
      System.out.print("이메일 입력: ");
      String email = scan.next();
      saramDao.insert(new SaramDTO(0, id, name, email));
   }

   private static int menu() {
      System.out.println("1.INPUT 2.OUTPUT 3.SEARCH 4.MODIFY 5.DELETE 6.END");
      System.out.print("CHOICE: ");
      return scan.nextInt();
   }
}