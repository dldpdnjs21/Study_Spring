# Study_Spring


▶ Statement (java.sql.Statement)
-----------------------------------------------------------------------
   Statement에서는 executeQuery("DQL문"),excecuteUpdate("DML문")메소드를 
     실행하는 시점에 파라미터로 SQL문을 DB에 전달한다.   
     
    String sql="insert into person values (1,'"+name+"',13,'학생')";
    
    stmt = conn.createStatement();
    stmt.executeUpdate(sql);  ==> 사용자가 입력한 데이터를 sql문과 조합해서 최종 sql문 생성
                                    ==> 생성된 sql문 실행!!
     
   
   장점 : 사용된 SQL문 전체를 명확히 알 수 가 있어서 디버깅이 쉽다.
   
   단점 : 조건값이 틀린 많은 수의 SQL문을 반복 실행하게 되는 경우, DB서버에서 모두 새롭게 
     PARSING되어야 하므로 부하가 생길수 있다.
     SQL Injection에 취약.
     -------------
     
     SQL문장 주입  ==> 사용자가 입력한 데이터가 SQL문장을 구성할 수 있다!!
     
     예)select count(*) cnt from member where id='a' or 1=1 #' and pass='1234'
                                                               ------------
                                                           사용자가 입력한 데이터
                                                          -------------------------
                                                             sql구문으로 변환          
                                                             



▶ PreparedStatement(java.sql.PreparedStatement)
-----------------------------------------------------------------------
  PreparedStatement는 커넥션에서 생성하면서 SQL문이 DB에 전송되어진다.
  Statement클래스를 상속하고 있음  
  
  String sql="insert into person values (?,?,?,?)";
                                         ---
                                         ? : 바인드 변수
                                         
    stmt = conn.prepareStatement(sql);  ===> (데이터가 빠진)sql문 전송!!
       //?의 수만큼 설정(데이터 설정)!!
       stmt.setInt   (1,   1);
       stmt.setString(2,  name);
       stmt.setInt   (3,   13);
       stmt.setString(4,  "학생");
       
    stmt.executeUpdate(); ==> ※주의: execute()메소드내에 sql기입하면 안됨.
       ==> 장점1) 작은따옴표, 큰따옴표, 콤마의 조합 그리고 자료형에 신경쓰지 않아도 됨.
                    장점2) 사용자가 입력한 (sql구문)데이터가 변경될 염려가 없다.
  
  
  
  장점: bind변수를 사용하여 DB서버에서 파싱된 SQL을 재사용하게 만듬으로, 
           반복적인 다량의 SQL수행시 성능상 이득이 있다.
           반복 루프를 통해서 하나의 SQL문에 변수값만 입력하며 반복 실행 할 수 있음.
         ★   SQL injection예방의 방법이 될 수 있다.     
 
  단점:
     오류발생 시, 변수에 입력되는 값을 알 수 없어서 디버깅이 어렵다.


▶ JavaBean
-----------------------------------------------------------------------
자바빈(자바클래스) : 서로 관련성 있는 속성을 묶어주는 클래스
 ==> DTO(Data Transfer Object),  VO(Value Object) 라는 이름으로도 사용
 ==> 속성은 private선언
 ==> 속성값을 접근할수 있는 public한 메소드 : getXXX(게터메소드),  setXXX(세터메소드)
         ==>  public 필드의자료형 get+필드명( ) {  return 필드명; }
         ==>  public void set+필드명(필드명과 같은 변수선언){ this.필드명 = 매개변수명; }
         ==>  더하는 필드명의 첫글자는 대문자
 ==> 추가) 기본생성자, 오버로딩생성자, toString()


▶ MVC
-----------------------------------------------------------------------
model1(구분없이 필요한 내용들(절차적인요소들)을 프로그래밍)

model2(내용,형식에 따라서 파일을 분류해서 프로그래밍)
----> 개발방식

model
----> 데이터

<MVC Model2구조>
1. Model(모델)
   - 비즈니스로직과 관련된 부분 처리.
   - 데이터베이스 관련로직 구현
   - JSP Beans, EJB Component
   - 애플리케이션의 데이터를 표현.
   
   
  예)
    class Calculator{
         public int plus(int su1, int su2){
             return su1+su2;
         }
     }
     ---> 데이터를 가공 처리
     int result = plus(2,3);
     
     class Person{
         String name;
         int age;
         String job;
     }
     ---> 서로 관련있는 속성을 클래스로 묶음 : JavaBeans
     
     class DBTest{
     
         public void insert(){
         
         }
     }
     ---> DB access하는 클래스
   

2. View(뷰)
   - 사용자에게 알맞은 화면을 보여주는 역할 수행.
   - JSP, CustomTag
   - 데이터를 시각적으로 표현하는것.
   역할)
     1. 결과값 출력
     2. 사용자 요구(버튼클릭: 음료수가 먹고싶다.)
     3. 사용자 데이터 입력.
   

3. Controller
   - 애플리케이션의 흐름제어나 사용자의 처리요청을 구현
   - 사용자인증, 보안설정이라든지
      전체 애플리케이션에 영향을 미치는 요소구현
   - 사용자 요청에 알맞은 모델을 사용하고 
      사용자에게 보여줄 뷰를 선택
   - Servlet
   - 사용자가 View(GUI)를 통해 입력을 하면 Model(데이터)을
      변경해 주는것.
     
     
     
 
 
 
 
     
