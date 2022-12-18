package passport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import domain.PassportDTO;
import repository.PassportRepository;

@Service("passportservice")
public class PassportServiceImpl implements PassportService {

	@Autowired
	PassportRepository passportRepository;
	
	@Override
	public PassportDTO getPassport(String email) {
		return passportRepository.findByEmail(email);
	}

	@Override
	public PassportDTO findById(int passport_num) {
		return passportRepository.findById(passport_num);
	}

	
}
