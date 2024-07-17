# Study_Spring

### Spring Framework
-----------------------------------------------------------------------
1. 엔터프라이즈 급 애플리케이션을 만들기 위한 모든 기능을 종합적으로 제공하는 경량화 된 솔루션
2. JEE(Java Enterprise Edition)가 제공하는 다수의 기능을 지원하고 있기 때문에, JEE를 대체하는 Framework로 자리잡고 있다.
3. DI(Dependency Injection)나 AOP(Aspect Oriented Programming)와 같은 기능도 지원
4. 자바로 Enterprise Appllication을 만들 때 포괄적으로 사용하는 Programming 및 Configuration Model을 제공해주는 Framework로 Application 수준의 인프라 스트럭쳐를 제공
5. 즉, 개발자가 복잡하고 실수하기 쉬운 Low Level에 신경 쓰지 않고 Business Logic개발에 전념할 수 있도록 해준다.
- Enterprise System - 서버에서 동작하며 기업의 업무를 처리해주는 System

### Spring Framework-구조
-----------------------------------------------------------------------
1. 수많은 플러그인들로 인한 Browser간의 부작용을 막기 위해 개발
    - Spring 삼각형
        - Enterprise Application 개발 시 복잡함을 해결하는 Spring의 핵심
            - POJO - 특정 환경이나 기술에 종속적이지 않은 객체지향 원리에 충실한 자바객체 / 테스트하기 용이하며, 객체지향 설계를 자유롭게 적용할 수 있다.
            
            - PSA - 환경과 세부 기술의 변경과 관계없이 일관된 방식으로 기술에 접근할 수 있게 해주는 설계 원칙 / 트랜잭션 추상화, OXM 추상화, 데이터 액세스의 Exception 변환기능 등 기술적인 복잡함은 추상화를 통해 Low Level의 기술 구현 부분과 기술을 사용하는 인터페이스로 분리 (예를 들어 데이터베이스에 관계없이 동일하게 적용 할 수 있는 트랜잭션 처리방식)
            - IoC/DI - DI는 유연하게 확장 가능한 객체를 만들어 두고 객체 간의 의존관계는 외부에서 다이나믹하게 설정
            - AOP - 관심사의 분리를 통해서 SW의 모듈성을 향상 / 공통 모듈을 여러 코드에 쉽게 적용 가능
    
    ![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/102a1eef-74c2-4a58-a261-a0fd262c0087/6f4c4253-a4c9-4241-976c-f9c7a9d82ec0/Untitled.png)
    

### Spring Framework-특징
-----------------------------------------------------------------------
- AOP(관점 지향 프로그래밍) 지원
    - 문제를 바라보는 관점을 기준으로 프로그래밍하는 기법
    
- POJO 지원
    - 특정 인터페이스를 구현하거나 또는 클래스를 상속하지 않는 일반 자바 객체 지원
    - 스프링 컨테이너에 저장되는 자바 객체는 특정한 인터페이스를 구현 하거나, 클래스 상속 없이도 사용이 가능
    
- IoC(제어의 반전)
    - IoC는 스프링이 갖고 있는 핵심적인 기능이다
    
- 스프링은 트랜잭션 처리를 위한 일관된 방법을 제공

- 스프링은 영속성과 관련된 다양한 API를 지원

- 스프링은 다양한 API에 대한 연동을 지원

![Untitled](https://prod-files-secure.s3.us-west-2.amazonaws.com/102a1eef-74c2-4a58-a261-a0fd262c0087/9890f9bf-ae52-48fe-875c-029bdae52ac2/Untitled.png)

### Spring Framework-Module
-----------------------------------------------------------------------
| Spring Core | Spring Framework의 핵심 기능을 제공하며, Core 컨테이너의 주요 컴포넌트는 Bean Factory이다. |
| --- | --- |
| Spring Context | - Spring을 컨테이너로 만든 것이 Spring core의 BeanFactory라면, Spring을 Framework로 만든 것은 Context module이며, 이 module은 국제화된 메시지, Application 생명주기 이벤트, 유효성 검증 등을 지원함으로써 BeanFactory의 개념을 확장한다. |
| Spring AOP | 설정 관리 기능을 통해 AOP 기능을 Spring Framework와 직접 통합 시킨다. |
| Spring ORM | Spring Framework는 여러 ORM Framework에 플러그인 되어, Object Relational 툴(JDO, Hibernate, iBatis)을 제공한다. |
| Spring Web | Web Context module은 Application Context module 상위에 구현되어, Web 기반 Application에 context를 제공한다. |
| Spring Web MVC | Spring Framework는 자체적으로 MVC 프레임워크를 제공하고 있으며, 스프링만 사용해도 MVC기반의 웹 어플리케이션을 어렵지 않게 개발이 가능하다. |


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
     
     
     
 
 
 
 
     
