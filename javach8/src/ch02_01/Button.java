package ch02_01;

public class Button {
	OnClickListener listener;//맴버필드 선언
	
	void setOnClickListener(OnClickListener listener) {
		this.listener=listener;
	}
	
	void touch() {
		listener.onClick();//구현체의 click메소드 호출
	}
	
	//Button클래스이 맴버로 인터페이스 선언
	interface OnClickListener{
		void onClick();
	}

}
