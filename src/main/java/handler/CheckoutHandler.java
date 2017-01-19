package handler;

import org.springframework.stereotype.Controller;

import model.Cart;

@Controller
public class CheckoutHandler {
public String cardPayment(Cart cart)
	
	{
	/*String name = cart1.getCardnumber();
		String date=cart1.getDate();
		String cvv=cart1.getCvv();
		*/
		
		return "true";
		
		/*
		System.out.println(name);
		
		if(name.equals("1234567890")&&date.equals("01/2018")&&cvv.equals("111"))
		
		{
			
			return "true";
		}
		else{
			return "false";
		}*/
	}
	
	 public String paymentMethod(Cart cart)
	 
	 {
		System.out.println("method");
		//cart1.setMethod("card");
		String method=cart.getMethod();
		System.out.println(method);
		if(method.equals("cod"))
		
		{
			
			return "cod";
		}
		
		else 
		
		{
			
			return "card";
		}
	
	 }
	
	
}