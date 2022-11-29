package controller.action;

public class a4 {
public static void main(String[] args) {
	String a = "redirect::abcd";
	
	if (a.contains("redirect::")) {
		a=a.replace("redirect::","");
	
}
	System.out.println(a);
}}
