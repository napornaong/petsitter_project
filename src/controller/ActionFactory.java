package controller;

import controller.action.Action;
import controller.action.joinAction;
import controller.action.loginAction;
import controller.action.loginckAction;
import controller.action.mainAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;

	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory :" + command);
		if (command.equals("main_jsp")) {
			action = new mainAction();
		}
		if (command.equals("login_form")) {
			action = new loginAction();
		}
		if (command.equals("login_check")) {
			action = new loginckAction();
		}
		if (command.equals("join_form")) {
			action = new joinAction();
		}
		return action;
	}

}