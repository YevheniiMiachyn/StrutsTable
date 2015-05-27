package us.jmiachyn.persistance;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URISyntaxException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

import javax.servlet.ServletContext;



/**
 * @author Yevhenii Miachyn
 *
 * Class for reading data from ElementList.csv file and loading it to ArrayList collection of PeriodicElement objects
 */
public class GetElementData{
	 
	private static ServletContext context;
	private static PeriodicElement element;
	private static ArrayList<PeriodicElement> elementList;
	private static final String ELEMENT_LIST_PATH = "elementListPath";
	private static ArrayList <String> elementNames, elementAbbr;
	
	
	
	
	
		
	public GetElementData(ServletContext context) throws IOException, URISyntaxException{
		GetElementData.context = context;
		elementList = new ArrayList<>();
		elementNames = new ArrayList<>();
		elementAbbr = new ArrayList<>();
       	loadElements();
		 
		   
		   
	}
	
	

	/**Reads data from ElementList.csv file
	 * 
	 * @throws IOException
	 * @throws URISyntaxException
	 */
	private static void loadElements()
	            throws IOException, URISyntaxException {
	        	        		      
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
         elementAbbr.add(splitOutput[1]);//adds element's abbreviation into collection
         element.setElementName(splitOutput[2]);
         elementNames.add(splitOutput[2]);//adds element names into collection
         element.setAtomicWeight(Double.parseDouble(splitOutput[3]));
         element.setElementDescription(splitOutput[4]);
         element.setMetallic(Boolean.parseBoolean(splitOutput[5].toLowerCase()));
         if(element.isMetallic())
 			element.setIsElementMetallic("YES");
 			else
 			element.setIsElementMetallic("NO");	
         element.setImageURI(splitOutput[6]);
         
         elementList.add(element);
        		 
 }
	 

	
 	/**Returns List of Elements
	 * 
	 * @return elementList
	 */
		public ArrayList<PeriodicElement> getElements(){
			 
			 return elementList;
		 }



	public ArrayList<String> getElementNames() {
		return elementNames;
	}



	public ArrayList<String> getElementAbbr() {
		return elementAbbr;
	}
		
	

	

	}
