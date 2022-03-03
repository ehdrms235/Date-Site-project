package com.date.jum5.user.login.mapper;

import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.date.jum5.user.login.dao.LoginDao;
import com.date.jum5.user.login.vo.LoginVo;

@Repository
public class LoginServiceImpl implements LoginService{
	
	@Inject
	private LoginDao loginDao;

	//�α���
	@Override
	public LoginVo checkId(String pw) throws Exception {
		return loginDao.checkId(pw);
	}
	
	//���̵� ã��
	@Override
	public String forGot(String inputEmail) throws Exception{
		return loginDao.forGot(inputEmail);
	}
	
	//��й�ȣ ã��
	@Override
	public LoginVo forGotPw(LoginVo loginVo) throws Exception{
		return loginDao.forGotPw(loginVo);
	}

	@Override
	public String pwTranslator(String id) {
		// TODO Auto-generated method stub
		return loginDao.pwTranslator(id);
	}

	@Override
	public int idExist(String id) {
		return loginDao.idExist(id);
	}

	@Override
	public void changePw(Map<String, String> change) {
		loginDao.changePw(change);
	}

	@Override
	public String pwTranslatorDelete(String nickname) {
		// TODO Auto-generated method stub
		return loginDao.pwTranslatorDelete(nickname);
	}

	@Override
	public LoginVo editMember(String nickname) {
		return loginDao.editMember(nickname);
	}
	

	
	

}