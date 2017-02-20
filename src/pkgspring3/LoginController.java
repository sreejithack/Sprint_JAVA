package pkgspring3;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pkgdbconnection3.Db_insert;
import pkguserBeans.*;


	@Controller
	public class LoginController {
		@RequestMapping(value="/login",method = RequestMethod.POST)
		public String submit(Model model, @ModelAttribute("loginBean") LoginBean loginBean) throws SQLException 
		{
			Db_insert obj =new Db_insert();
			
			ResultSet x=obj.store(loginBean.getUname(), loginBean.getPswd());
			System.out.println("x="+x);
			if(x.next())
			{
				//model.addAttribute("uname", loginBean.getUname());
				//model.addAttribute("pswd",loginBean.getPswd());
				model.addAttribute("fname", x.getString("first_name"));
				return "home";
			}
			else
			
			{
				model.addAttribute("error", "Login Failed");
				return "error1";
			}
			
		}
			
			//System.out.println(loginBean.getUname());
			
			
		/*	if (loginBean != null && loginBean.getUname() != null & loginBean.getPswd() != null) 
			{
				if (loginBean.getUname().equals() && loginBean.getPswd().equals()) 
				{
					model.addAttribute("msg", loginBean.getUname());
					
					return "home";
				} 
				else 
				{
					model.addAttribute("error", "Invalid Details");
					return "error1";
				}
			} 
			else 
			{
				model.addAttribute("error", "Please enter Details");
				return "login";
			}*/
			
		
		
}
