package controller;

import controller.action.Action;
import controller.action.CartListAction;
import controller.action.IndexAction;
import controller.action.ProductDetailAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();
	public ActionFactory() {
		super();
	}
	
	public static ActionFactory getInstance() {
		return instance;
	}
	
	public Action getAction(String command) {
		Action action = null;
		
		System.out.println("ActionFactory : " + command);
		
		if(command.equals("living")) {//커맨드 패턴 적용
			action = new IndexAction();
		}else if(command.equals("clothes")){
			action = new IndexAction();
		}else if(command.equals("CartListAction")) {
			 action = new CartListAction();
		}else if(command.equals("product_detail")) {
			action = new ProductDetailAction();
		}
		return action;
	}
}

