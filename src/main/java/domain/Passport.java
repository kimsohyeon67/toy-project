package domain;


import jakarta.persistence.*;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.NoArgsConstructor;

@Entity
@EnableJpaAuditing
@NoArgsConstructor
@EntityListeners(AuditingEntityListener.class)
public class Passport {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "passport_num")
	int passport_num;
	
	@Column(name="user_email", length = 40)
	String user_email;
	
	@Column(name="nickname",length = 10)
	String nickname;

	@Column(name="gender",length = 1)
	String gender;

	@Column(name="hair")
	int hair;
	
	@Column(name = "face")
	int face;
	
	@Column(name = "icon")
	int icon;
	
	@Column(name = "case_color")
	int case_color;

	@Column(name = "mbti", length = 4)
	String mbti;

	@Column(name = "self_intro", length = 20)
	String self_intro;

	@Override
	public String toString() {
		return passport_num+" "+user_email+
				" "+nickname+" "+gender+" "+
				hair+" "+face+" "+icon+" "+case_color+" "
				+mbti + self_intro;
	}

	public int getPassport_num() {
		return passport_num;
	}

	public void setPassport_num(int passport_num) {
		this.passport_num = passport_num;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getHair() {
		return hair;
	}

	public void setHair(int hair) {
		this.hair = hair;
	}

	public int getFace() {
		return face;
	}

	public void setFace(int face) {
		this.face = face;
	}

	public int getIcon() {
		return icon;
	}

	public void setIcon(int icon) {
		this.icon = icon;
	}

	public int getCase_color() {
		return case_color;
	}

	public void setCase_color(int case_color) {
		this.case_color = case_color;
	}

	public String getMbti() {
		return mbti;
	}

	public void setMbti(String mbti) {
		this.mbti = mbti;
	}

	public String getSelf_intro() {
		return self_intro;
	}

	public void setSelf_intro(String self_intro) {
		this.self_intro = self_intro;
	}
	
}
