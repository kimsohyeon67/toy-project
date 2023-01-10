package passport;

import domain.Passport;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PassportController {

	@Autowired
	PassportService passportService;

	@GetMapping("/passport")
	public ModelAndView makePassport(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		String user_email = "";

		if (session.getAttribute("user_email") != null) {
			user_email = (String) session.getAttribute("user_email");
		}

		// 수정 시
		if (request.getParameter("passport_num") != null) {
			int passport_num = Integer.parseInt(request.getParameter("passport_num"));
			Passport passportDto = passportService.findById(passport_num);
			if (passportDto != null) {
				mv.addObject("passport_dto", passportDto);
			} else {
				mv.setViewName("error");
			}
		}
		mv.setViewName("passport/make_passport");
		return mv;
	}


	@PostMapping("/passport")
	public String makePassportProcess(Passport dto, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String user_email = "";

		if (session.getAttribute("user_email") != null) {
			user_email = (String) session.getAttribute("user_email");

			if (user_email.equals("")) {
				return "error";
			}

			dto.setUser_email(user_email);

			Passport result = passportService.savePassport(dto);

		} else {
			return "error";
		}
		return "";
	}

	@GetMapping("/passport/{passport_num}/info")
	public ModelAndView getPassport(@PathVariable int passport_num, HttpServletRequest request) {

		HttpSession session = request.getSession();
		String user_email = "";
		ModelAndView mv = new ModelAndView();

		if (session.getAttribute("user_email") != null) {
			user_email = (String) session.getAttribute("user_email");
		}

		Passport passportDto = passportService.findById(passport_num);

		if (passportDto != null) {
			if (passportDto.getUser_email().equals(user_email)) {
				// 내 여권
				System.out.println("내 여권");
			}

			mv.setViewName("passport/view_passport");
			mv.addObject("passport_dto", passportDto);
		} else {
			mv.setViewName("error");
		}

		return mv;
	}

	@PostMapping("/passport/{passport_num}")
	public ModelAndView updatePassport(@PathVariable int passport_num, HttpServletRequest request) {

		HttpSession session = request.getSession();
		String user_email = "";
		ModelAndView mv = new ModelAndView();

		if (session.getAttribute("user_email") != null) {
			user_email = (String) session.getAttribute("user_email");
		}

		Passport passportDto = passportService.findById(passport_num);

		if (passportDto != null) {
			if (passportDto.getUser_email().equals(user_email)) {
				// 내 여권
				System.out.println("내 여권");
			}

			mv.setViewName("passport/view_passport");
			mv.addObject("passport_dto", passportDto);
		} else {
			mv.setViewName("error");
		}

		return mv;
	}

	@GetMapping("/passport/{passport_num}")
	public ModelAndView updatePassport(@PathVariable int passport_num, Passport dto,
		HttpServletRequest request) {

		HttpSession session = request.getSession();
		String user_email = "";
		ModelAndView mv = new ModelAndView();

		if (session.getAttribute("user_email") != null) {
			user_email = (String) session.getAttribute("user_email");
		}

		Passport passportDto = passportService.findById(passport_num);

		if (passportDto != null && !user_email.equals("")) {
			if (passportDto.getUser_email().equals(user_email)) {
				// 내 여권
				System.out.println("내 여권");
			}

			mv.setViewName("passport/make_passport");
			mv.addObject("passport_dto", passportDto);
		} else {
			mv.setViewName("error");
		}

		return mv;
	}

}
