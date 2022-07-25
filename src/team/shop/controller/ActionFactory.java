package team.shop.controller;

import team.shop.controller.action.Action;
import team.shop.controller.action.AdminMtmListAction;
import team.shop.controller.action.CartDelete;
import team.shop.controller.action.CartInsert;
import team.shop.controller.action.CartList;
import team.shop.controller.action.CartPayment;
import team.shop.controller.action.CategoryDetailAction;
import team.shop.controller.action.IndexAction;
import team.shop.controller.action.InsertOrder;
import team.shop.controller.action.InsertReview;
import team.shop.controller.action.JoinAction;
import team.shop.controller.action.JoinFormAction;
import team.shop.controller.action.LoginAction;
import team.shop.controller.action.LoginFormAction;
import team.shop.controller.action.LogoutAction;
import team.shop.controller.action.MyPage1Action;
import team.shop.controller.action.MyPage3Action;
import team.shop.controller.action.MyPage5Action;
import team.shop.controller.action.ProductDetailAction;
import team.shop.controller.action.ReviewAction;
import team.shop.controller.action.SearchAction;
import team.shop.controller.action.WriteReviewFormAction;
import team.shop.controller.action.askAction;
import team.shop.controller.action.mtmDeleteAction;
import team.shop.controller.action.mtmUpdate;
import team.shop.controller.action.mtmUpdateForm;
import team.shop.controller.action.MyPage7Action;
import team.shop.controller.action.MyPage6Action;
import team.shop.controller.action.Payment;
import team.shop.controller.action.mtmWriteAction;

public class ActionFactory {
	//싱글톤 형태로 유일하게 한 개의 객체만 생성하고 getInstance()로 호출해 사용함
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	public static ActionFactory getInstance() {
		return instance;
	}
	//Servlet에서 받아온 command에 맞는 액션객체를 찾아 Servlet으로 전달
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : "+command);
		
		if(command.equals("category_list")) {
			action = new CategoryDetailAction();
		}else if(command.equals("product_detail")){
			action = new ProductDetailAction();
		}else if(command.equals("index")) {
			action = new IndexAction();
		}else if(command.equals("log_in")) {
			action = new LoginAction();
		}else if(command.equals("login_form")) {
			action = new LoginFormAction();
		}else if(command.equals("join_form")) {
			action = new JoinFormAction();
		}else if(command.equals("join")) {
			action = new JoinAction();
		}else if(command.equals("logout")){
			action = new LogoutAction();
		}else if(command.equals("review")) {
	         action = new ReviewAction();
		//command에 해당하는 Action을 Servlet으로 리턴해줌
		}else if(command.equals("mtm")) {
			action = new mtmWriteAction();
		}else if(command.equals("ask")) {
			action = new askAction();
		}else if(command.equals("mypage_6")) {
			action = new MyPage6Action();
		}else if(command.equals("mypage_1")) {
			action = new MyPage1Action();
		}else if(command.equals("payment")) {
			action = new Payment();
		}else if(command.equals("insert_order")) {
			action = new InsertOrder();
		}else if(command.equals("mypage_5")) {
			action = new MyPage5Action();
		}else if(command.equals("mypage_3")) {
			action = new MyPage3Action();
		}else if(command.equals("mypage_7")) {
			action = new MyPage7Action();
		}else if(command.equals("mtmUpdate")) {
			action = new mtmUpdate();
		}else if(command.equals("mtmUpdateForm")) {
			action = new mtmUpdateForm();
		}else if(command.equals("mtmDelete")) {
			action = new mtmDeleteAction();
		}else if(command.equals("adminMtmList")) {
			action = new AdminMtmListAction();
		}else if(command.equals("mypage_2")) {
			action = new WriteReviewFormAction();
		}else if(command.equals("insert_review")) {
			action = new InsertReview();
		}else if(command.equals("cart_insert")) {
			action = new CartInsert();
		}else if(command.equals("cart_list")) {
			action = new CartList();
		}else if(command.equals("cart_delete")) {
			action = new CartDelete();
		}else if(command.equals("cart_payment")) {
			action = new CartPayment();
		}else if(command.equals("search")) {
			action = new SearchAction();
		}
		
	
		return action;
}
}
