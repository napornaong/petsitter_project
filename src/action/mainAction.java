package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import petsitterDAO.serviceDAO;
import petsitterDTO.serviceDTO;


public class mainAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException{
		// TODO Auto-generated method stub
		String url="/jsp/main1.jsp";
		serviceDAO sDAO=serviceDAO.getInstance();
		List<serviceDTO>serviceList=sDAO.selectAllservice();
		ArrayList<String>srcList=new ArrayList<>();
		String imgsrc=null;
		if(serviceList !=null) {
			request.setAttribute("serviceList", serviceList);
		}
		for(int i=0;i<serviceList.size();i++) {
			String a=serviceList.get(i).getServicewhar();
			System.out.println(a);
			if(a.equals("목욕")) {
				 imgsrc="./img/목욕.jpg";
			
			}else if(a.equals("산책")) {
				System.out.println("asdfasdf======");
				 imgsrc="./img/산책.jpg";
				
			}else if(a.equals("돌봄")) {
				 imgsrc="./img/돌봄.jpg";
				
			}
			srcList.add(imgsrc);
			System.out.println(srcList.get(0)+" ?????????");
		}
		request.setAttribute("srcList", srcList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	
}
