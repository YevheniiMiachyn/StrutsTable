/**
 *@author Jenya Miachyn
 *@version 1.0
 *@since 05.23.2015
 *  
 *  Custom listener class by implementing ServletContextListener, which run the code before the web application is started
 *  Loads data from file and put resulted collection as application scope attribute
 *  
*/
package us.jmiachyn.service;

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
	private ArrayList<PeriodicElement> elementList;
		

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		
       context = sce.getServletContext();
        
        try {
                    	        	
        GetElementData data = new GetElementData(context);	        	 
 		elementList = data.getElements();
 		
		
        	       	
              	
		//Use setAttribute method to make this data available to everyone.	
        context.setAttribute("elementList", elementList);
                
        } catch(Exception e) {
        	e.printStackTrace();
        }

	}

	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		
		System.gc();

	}
	
	
		
}
