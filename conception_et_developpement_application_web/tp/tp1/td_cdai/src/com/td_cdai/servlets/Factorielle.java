package com.td_cdai.servlets;

import java.math.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Factorielle extends HttpServlet{
	
	public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
		String paramAuteur = request.getParameter( "fact" );
		String message = paramAuteur;
		request.setAttribute( "fact", message );

		this.getServletContext().getRequestDispatcher( "/WEB-INF/factorielle.jsp" ).forward( request, response );
	}

    private static Integer minus(Integer a,Integer b){
         Integer c=a ;
         Integer d=-b;
            c=c+d;
         return c;
     }

    public static Integer Factorielle(long n) throws IllegalArgumentException{
        Integer fact=1;
        Integer N  = (int) (long) n;
        
        if(n<=0){
            return 1;
        }else{
            if(n>=5410){
                throw new IllegalArgumentException("N trop grand (calcul long) : "+n);
            }else{
                return Factorielle(n-1)*(N);
            }
            
        }
    }
    
    
}
