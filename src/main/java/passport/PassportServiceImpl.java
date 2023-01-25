package passport;

import domain.Passport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.PassportRepository;

@Service("passportservice")
public class PassportServiceImpl implements PassportService {

    @Autowired
    PassportRepository passportRepository;

    @Override
    public Passport getPassport(String email) {
        return passportRepository.findByEmail(email);
    }

    @Override
    public Passport findById(int passport_num) {
        return passportRepository.findById(passport_num);
    }

    @Override
    public Passport savePassport(Passport dto) {
        return passportRepository.save(dto);
    }

}
