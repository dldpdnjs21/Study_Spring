package com.ureca.step4.di;

public class MessageBeanImpl implements MessageBean {
	
	//private 오직 해당 클래스에서만 사용가능(자식 클래스도 사용X)
	private String greeting;
	private String name;
	private FileOutput fo;
	
	public void setFo(FileOutput fo) {
		this.fo = fo;
	}
	
//	public 필드의 자료형 get+필드명(){return 데이터;}
//	public void set+필드명(필드연관된 변수선언){this.필드=변수;}
	
	public MessageBeanImpl() {//기본생성자
		
	}
	public MessageBeanImpl(String greeting) {//오버로딩 생성자
		this.greeting = greeting;
	}
	public MessageBeanImpl(String greeting, String name) {//오버로딩 생성자
		this.greeting = greeting;
		this.name = name;
	}
	
	@Override
	public void sayHello() {
		String str = greeting + ", "+name+"!!!";
		System.out.println(str);
		
	}
	
	public String getGreeting() {
		return greeting;
	}
	public void setGreeting(String greeting) {
		this.greeting = greeting;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
