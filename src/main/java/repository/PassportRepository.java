package repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import domain.Passport;

@Repository("passportrepository")
public interface PassportRepository extends JpaRepository<Passport, Integer> {

	@Query(value = "select * from passport where user_email=:email", nativeQuery = true)
	Passport findByEmail(@Param("email") String email);
	
	@Query(value = "select * from passport where passport_num=:passport_num",nativeQuery = true)
	Passport findById(@Param("passport_num") int passport_num);
	
}
