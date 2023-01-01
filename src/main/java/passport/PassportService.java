package passport;

import domain.Passport;

public interface PassportService {

	public Passport getPassport(String email);
	
	public Passport findById(int passport_num);
	
	public Passport savePassport(Passport dto);
}
