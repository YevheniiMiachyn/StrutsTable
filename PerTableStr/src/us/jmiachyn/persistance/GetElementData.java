package us.jmiachyn.persistance;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;

import javax.servlet.ServletContext;



/**
 * @author Yevhenii Miachyn, Chris Hardin
 *
 * Class for reading data from ElementList.csv file and loading it to ArrayList collection of PeriodicElement objects
 */
public class GetElementData{
	 
	private PeriodicElement element;
	private File file;
	private ArrayList<PeriodicElement> elementList;
	private ServletContext servletContext;
	
	
	
	
		
	public GetElementData(ServletContext context) throws IOException, URISyntaxException{
		this.servletContext = context;
			
		String elementListPath = (String) servletContext.getRealPath(servletContext.getInitParameter("elementListPath"));
					   
		   file = new File(elementListPath);
		   elementList = new ArrayList<>();
		  
		   
		   
	}
	
		

	/**Reads data from ElementList.csv file
	 * 
	 * @throws IOException
	 * @throws URISyntaxException
	 */
	private void loadElements()
	            throws IOException, URISyntaxException {
	        	        		      
		 	String rawOutput="";// string with all info about element

                    try(BufferedReader reader = new BufferedReader(new FileReader(file))) {
				
				
				while ((rawOutput = reader.readLine()) != null){

                                   					
					this.addValuesToPeriodicElement(rawOutput);
                                    
					
				}
			} catch  (IOException e) {
				
				e.printStackTrace();
			}
		  
	    }
	 
	 /**   parses string into individual values and puts them in ArrayList collection of 'PeriodicElement' objects
		 * 
		 * @param rawOutput String
		 */
	 private void addValuesToPeriodicElement(String rawOutput){
		 
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
	 

	
		
		public ArrayList<PeriodicElement> getElements() throws IOException, URISyntaxException{
			 this.loadElements();
			 return this.elementList;
		 }
		
	

	

	}
