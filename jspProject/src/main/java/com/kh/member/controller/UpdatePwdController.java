package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.vo.Member;
import com.kh.member.service.MemberService;

/**
 * Servlet implementation class UpdatePwdController
 */
@WebServlet("/updatePwd.me")
public class UpdatePwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePwdController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("userId"); // 
		String userPwd = request.getParameter("userPwd");
		String updatePwd = request.getParameter("updatePwd"); //
		
		Member m = new MemberService().updatePwd(userId, userPwd, updatePwd);

		if(m == null) { // 업데이트 실패
			// 에러 문구 담아서 에러 페이지 포워딩
			request.setAttribute("errorMsg", "비밀번호 수정에 실패하였습니다");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
		} else { // 성공
			HttpSession session = request.getSession();
			session.setAttribute("alertMsg", "성공적으로 수정하였습니다.");
			session.setAttribute("loginUser", m);
			
			// url 재요청 => 마이페이지 재요청(/kh/myPage.me)
			response.sendRedirect(request.getContextPath() + "/myPage.me");
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
