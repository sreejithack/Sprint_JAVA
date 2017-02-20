package pkgspring3;

import java.sql.SQLException;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import pkgdbconnection3.*;
import pkguserBeans.UserBean;
@RestController
public class HelloController  {
	
	
		@RequestMapping(value = "/facebook",method=RequestMethod.GET)
		public String init(Model model)
		{
			return "facebook";
			
		}
		/*
		@RequestMapping(value="/home", method= RequestMethod.POST)
		public String DB_insert1(Model model)
		{
			model.addAttribute("msg", "home page");
			return "home";
		}
		@RequestMapping(value="/facebook", method= RequestMethod.GET)
		public String DB_insert2(Model model)
		{
			model.addAttribute("msg", "home page");
			return "facebook";
		}
		
		
		@RequestMapping(value="/hello",method=RequestMethod.GET)
		public String test(Model model)
		{
		Db_insert db1=new Db_insert();
		//db1.insert("sree", "ck", "ck@gmail.com", "casper", 234567);
		return "hello";
		}*/
		// Registration
		@RequestMapping(value="/Registration", method= RequestMethod.POST)
		public String facebook(@Validated @ModelAttribute("userBean") UserBean userBean ,BindingResult result,ModelMap model) throws SQLException {
		      
		String fname =userBean.getFname();
		       Db_insert obj =new Db_insert();
		       boolean y=obj.insert(userBean.getFname(), userBean.getLname(),userBean.getNumber(), userBean.getEmail(), userBean.getPwd());
		       System.out.println("register="+y);
		       if(y==false)
		       {
		        model.addAttribute("fname", userBean.getFname());
		        model.addAttribute("lname", userBean.getLname());
		        model.addAttribute("number", userBean.getNumber());
		        model.addAttribute("email", userBean.getEmail());
		       	model.addAttribute("pswd", userBean.getPwd());
		       	
		       	return "welcome";
		       }
		       else
		       {
		       	model.addAttribute("error", "Registration Failed");
		       	return "hello";
		       }
		//login
		       

		}
}
