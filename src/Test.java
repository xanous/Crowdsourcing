import com.domain.User;
import com.service.UserService;
import com.util.Hibernate;



public class Test {

public static void main(String[] args) {
		
		UserService us=new UserService();
		User user=us.getClientByLogin("oualidbn");
		Hibernate.getSessionFactory().close();
		
	}

	
	
}
