

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Decrypt")
public class Decrypt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public char Decryption(String en_msg){
        int en=Integer.parseInt(en_msg);
        char de_msg;
        if(en!=0) {
    	de_msg=(char)((((en/10)-1)*5+(en%10))+96);
        return de_msg;
        }
        else {
        	de_msg='z';
        	return de_msg;
        }
    }
       
  
    public Decrypt() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String qno=request.getParameter("qno");
		String encode=request.getParameter("encode");
        try (BufferedReader br = new BufferedReader(new FileReader("C:\\Users\\Harsh Panjwani\\eclipse-workspace\\Debugging\\WebContent\\"+qno+".txt"))) {
            String line;
            while ((line = br.readLine()) != null) {
            	if(line.equalsIgnoreCase(encode)) {
            		String de_cod="";
            		int len,a;
            		String ch="";
            		encode=encode.toLowerCase();
            		len=encode.length();
            		for(a=0;a<len;a++){
            		if(encode.charAt(a)!=' '){		
                                ch=ch.concat(encode.charAt(a)+"");
                            }
                            else{
                                de_cod=de_cod.concat(Decryption(ch)+"");
                                ch="";
                            }
                            }
            		request.setAttribute("de",de_cod);
    		        RequestDispatcher rd=request.getRequestDispatcher("main.jsp");  
    		        rd.include(request, response);
            	}
            	else {
            		
            	}
            }
        }
        catch (FileNotFoundException fe)
        {
            System.out.println("File not found");
        }
	}
}
