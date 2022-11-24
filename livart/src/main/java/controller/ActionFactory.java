package controller;

import controller.action.Action;
import controller.action.IndexAction;

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
		}
		return action;
	}
}

