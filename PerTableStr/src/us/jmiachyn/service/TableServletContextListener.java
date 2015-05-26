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



import us.jmiachyn.persistance.PeriodicElement;



@WebListener
public class TableServletContextListener implements ServletContextListener {

	
	private static ServletContext context;
	private static PeriodicElement element;
	private static ArrayList<PeriodicElement> elementList;
	private static InputStream in;
	private static final String ELEMENT_LIST_PATH = "elementListPath";



	@Override
	public void contextInitialized(ServletContextEvent sce) {
		
       context = sce.getServletContext();
        
        try {
                    	        	
        	        	 
 		    elementList = new ArrayList<>();
        	       	
        	
        	loadElements();
        	
        	
        	String elementName = elementList.get(0).getElementAbbreviation();
            context.setAttribute("data", elementName); //Use setAttribute method to make this data available to everyone.
        } catch(Exception e) {
        	e.printStackTrace();
        }

	}

	
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		
		

	}
	
	/**Reads data from ElementList.csv file
	 * 
	 * @throws IOException
	 * @throws URISyntaxException
	 */
	private static void loadElements(){
	        	        		      
		 	String rawOutput="";// string with all info about element
		 	
                    try(BufferedReader reader = new BufferedReader(new InputStreamReader(context.getResourceAsStream(context.getInitParameter(ELEMENT_LIST_PATH)), StandardCharsets.UTF_8));
                    		
                    	
                    		) {
				
				
				while ((rawOutput = reader.readLine()) != null){

                                  					
					addValuesToPeriodicElement(rawOutput);
                                    
					
				}
			} catch  (IOException e) {
				
				e.printStackTrace();
			}
		  
	    }
	 
	 /**   parses string into individual values and puts them in ArrayList collection of 'PeriodicElement' objects
		 * 
		 * @param rawOutput String
		 */
	 private static void addValuesToPeriodicElement(String rawOutput){
		 
		    element = new PeriodicElement();
	               
	        String[] splitOutput = rawOutput.split(",");
	        	
	         
	        
	         element.setAtomicNumber(Integer.parseInt(splitOutput[0]));
	         element.setElementAbbreviation(splitOutput[1]);
	         element.setElementName(splitOutput[2]);
	         element.setAtomicWeight(Double.parseDouble(splitOutput[3]));
	         element.setElementDescription(splitOutput[4]);
	         element.setMetallic(Boolean.parseBoolean(splitOutput[5]));
	         element.setImageURI(splitOutput[6]);
	         
	         elementList.add(element);
	        		 
	 }
	 

	/**Returns List of Elements
	 * 
	 * @return elementList
	 */
		
		public static ArrayList<PeriodicElement> getElements(){
			   
			  return elementList;
		 }


		
}
