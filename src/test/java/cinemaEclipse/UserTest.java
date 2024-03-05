package cinemaEclipse;

import org.hibernate.SessionFactory;

import com.emit.service.UserService2;
import com.emit.dao.UserDAO2;
import com.emit.bean.User2;

public class UserTest {
	

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UserService2 service = new UserService2();
		User2 user =service.getUserByEmail("dasfds");
		service.cambiaPassword(user,"zzz","666");
	}

}
