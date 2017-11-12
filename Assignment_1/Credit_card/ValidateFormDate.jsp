<%-- 
    Document   : ValidateFormDate
    Created on : Nov 10, 2017, 12:07:23 PM
    Author     : dutta
--%>


<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
       

        <%
            
            
             try{
                 String Credit_card = request.getParameter("Credit_card");
            session.setAttribute("SessionCard", Credit_card);
            String Name = request.getParameter("Name");
            session.setAttribute("SessionName", Name);
            if (Credit_card == "")
    {
        response.sendRedirect("http://localhost:8080/Credit_card_validation/Fail.jsp");
        
    }
            else{
             int sum = 0;
                boolean alternate = false;
                for (int i = Credit_card.length() - 1; i >= 0; i--)
                {
                        int n = Integer.parseInt(Credit_card.substring(i, i + 1));
                        if (alternate)
                        {
                                n *= 2;
                                if (n > 9)
                                {
                                        n = (n % 10) + 1;
                                }
                        }
                        sum += n;
                        alternate = !alternate;
                }
               
                String s = request.getParameter("PIN");
                String date = request.getParameter("Exp_date");
                String result = null;
	        String result2 = null;
	        String FinalResult= null;
	        String CurrentDate = date, TomorrowDate;
                String amount = request.getParameter("Amount");
                session.setAttribute("SessionAmount", amount);
	        int amt = Integer.parseInt(amount);
                int l=s.length();
                    if(l>4){
                            result = "Fail";
                            }
                    else if(l<4){
                            result = "fail";
                                }
                    else{
                        int flag=0;
                     /* loop for checking whether there are repeated digits */
                    for(int i=0;i<l-1;i++)
                                {
                            for(int j=i+1;j<l;j++)
                                    {
                                if(s.charAt(i)==s.charAt(j)) //if any digits match, then we know it is not a Unique Number
                                        {
                                        flag=1;
                                        break;
                                        }
                                    }
                                }

                            if(flag==0)
                            result = "P";
                            else
                            result = "f";
                        }
                    if(result =="P"){
                        SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");    	
                        Date usersDate = format.parse(CurrentDate);    	
                        int difference = usersDate.getDate() - new Date().getDate();    	
                        if(difference >= 1){
                        result2 = "pass";
    		
                                           }
                    else{
                        result2 = "fail";
    		
                        }
                        if(result2 == "pass"){
                            if(amt <500){
                            FinalResult= "Done";
                                        }
                            else{
				FinalResult = "Not Done";
                                }
                        }
                        else{
                            FinalResult = "Not Done";
                            }
                    }else{
                        FinalResult ="Not Done";
                         }
    if (sum%10 == 0 && FinalResult =="Done"){
        response.sendRedirect("http://localhost:8080/Credit_card_validation/ProcessCreditRequest.jsp");
    }
    else {
        response.sendRedirect("http://localhost:8080/Credit_card_validation/Fail.jsp");
    }
                    }
                
}
             catch(Exception e){
//                        out.println(e);
                        response.sendRedirect("http://localhost:8080/Credit_card_validation/Fail.jsp");
                        }
            
            %>
    </body>
</html>
