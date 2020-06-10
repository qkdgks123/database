package ch04_01;

public class MemberDeepMaineExample {
	public static void main(String[] args) {
		//원본객체
	 Member original = 
	   new Member("홍길동", 25, new int[]{90,90}, new Car("소나타"));
     //복제 객체
	 Member cloned =
			original.getMember();
	 
	 System.out.println(original);
	 System.out.println(cloned);
	 
	 //복제본 수정
	 cloned.score[0]=88;
	 cloned.score[1]=99;
	 cloned.car=new Car("그랜져");
	 
	 //원본객체/복제본 객체 출력
	 System.out.println(original);
	 System.out.println(cloned);
	 
	 
	 
			
	 
	}
}
