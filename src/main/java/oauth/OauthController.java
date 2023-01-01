package oauth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import domain.Passport;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class OauthController {

	@Autowired
	OauthService oauthService;

	@GetMapping("/auth/{socialLoginType}")
	public void socialLoginType(@PathVariable(name = "socialLoginType") SocialLoginType socialLoginType,
			HttpServletResponse response) {
		oauthService.request(socialLoginType, response);
	}

	@GetMapping("/auth/{socialLoginType}/callback")
	public String callback(@PathVariable(name = "socialLoginType") SocialLoginType socialLoginType, @RequestParam(name = "code") String code, HttpServletRequest request) {

		String email = oauthService.requestAccessToken(socialLoginType, code);
		Passport dto = oauthService.login(email);
		
		HttpSession session = request.getSession();
		session.setAttribute("user_email", email);
		
		if (dto == null) {
			// 여권등록
			System.out.println("등록된 유저 없음");
			return "redirect:/makepassport";
			
		} else {
			return "redirect:/viewpassport";
		}
		
	}

}
