package VoteDB;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class VoteController extends HttpServlet {
	private static final long serialVersionUID = 1L;  
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		requestPro(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		requestPro(request, response);
	}
	
	protected void requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* URL check */
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String command = uri.substring(context.length());
		String site = null;
		
		System.out.println("command : "+command);
		
		VoteDAO vote = new VoteDAO();
		
		switch(command) {
		case "/main.do" : 		
			site = "index.jsp";
			break;
		case "/memberList.do" : 			
			site = vote.selectMember(request, response);
			break;
		case "/voteMember.do" : 			
			site = "voteMember.jsp";
			break;
		case "/voteList.do" : 		
			site = vote.selectAll(request, response);
			break;
		case "/voteResult.do" : 			
			site = vote.selectResult(request, response);
			break;
		case "/vote.do" : 
			int result = vote.insertVote(request, response);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out=response.getWriter();
			if(result == 1) {
				out.println("<script>");
				out.println("alert('투표하기 정보가 정상적으로 등록 되었습니다!'); location.href='"+context+"'; ");
				out.println("</script>");
				out.flush();
			}else {
				out.println("<script>");
				out.println("alert('등록실패!'); location.href='"+context+"'; ");
				out.println("</script>");
				out.flush();
			}		
			break;
		}
		/* 결과 */
		RequestDispatcher dispatcher = request.getRequestDispatcher(site);
		dispatcher.forward(request, response);
	}
}