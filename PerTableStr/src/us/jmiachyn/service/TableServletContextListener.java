/**
 *@author Jenya Miachyn
 *@version 1.0
 *@since 05.23.2015
 *  
 *  Custom listener class by implementing ServletContextListener, which run the code before the web application is started
 *  
*/
package us.jmiachyn.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;



import us.jmiachyn.persistance.GetElementData;
import us.jmiachyn.persistance.PeriodicElement;



@WebListener
public class TableServletContextListener implements ServletContextListener {

	
	private static ServletContext context;
	

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		
       context = sce.getServletContext();
        
        try {
                    	        	
        	        	 
 		//returns ArrayList of Elements   
		ArrayList<PeriodicElement> elementList = new GetElementData(context).getElements();
        	       	
        	
        	        	
        	
        	//String elementName = elementList.get(0).getElementAbbreviation();
            context.setAttribute("elementList", elementList); //Use setAttribute method to make this data available to everyone.
        } catch(Exception e) {
        	e.printStackTrace();
        }

	}

	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		
		

	}
	
	
		
}
