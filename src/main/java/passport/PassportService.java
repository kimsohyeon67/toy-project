package passport;

import domain.PassportDTO;

public interface PassportService {

	public PassportDTO getPassport(String email);
	
	public PassportDTO findById(int passport_num);
}
