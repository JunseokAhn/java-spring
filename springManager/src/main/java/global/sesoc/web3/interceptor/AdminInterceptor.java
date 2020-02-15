package global.sesoc.web3.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * 사용자 로그인 확인 인터셉터. HandlerInterceptorAdapter를 상속받아서 정의.
 */
public class AdminInterceptor extends HandlerInterceptorAdapter {
	private static final Logger logger = LoggerFactory.getLogger(AdminInterceptor.class);

	// 콘트롤러의 메서드 실행 전에 처리
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		logger.debug("AdminInterceptor 실행");

		// 세션의 로그인 정보 읽기
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");

		// 관리자 아이디가 아닌 경우 로그인 페이지로 이동
		if (!id.equals('1')) {
			// request.getContextPath()로 루트 경로를 구하여 절대 경로로 처리
			response.sendRedirect(request.getContextPath() + "/member/login");
			return false;
		}
	
		// 로그인 된 경우 요청한 경로로 진행
		return super.preHandle(request, response, handler);
	}

}
