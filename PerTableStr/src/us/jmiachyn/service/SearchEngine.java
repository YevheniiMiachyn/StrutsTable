package us.jmiachyn.service;

import java.util.ArrayList;



import javax.servlet.ServletContext;

import org.apache.commons.lang3.*;

import us.jmiachyn.persistance.PeriodicElement;



public class SearchEngine {
	
	private ServletContext context;
	private final String ELEMENT_LIST_ATTRIBUTE = "elementList";
	private PeriodicElement element;
	private ArrayList<PeriodicElement> elements, foundElements;
	private String elementNameToSearch;
	
	@SuppressWarnings("unchecked")
	public SearchEngine(ServletContext context) {
		this.context = context;
		elements = (ArrayList<PeriodicElement>) this.context.getAttribute(ELEMENT_LIST_ATTRIBUTE);
		
	}
	
	/**Returns PeriodicElement basing on its Id
	 * 
	 * @param Id
	 * @return PeriodicElement
	 */

	public PeriodicElement getElement(int Id) {
		
		
		this.element = elements.get(Id-1);
						
		return element;
	}
	
	/**Return a list of possible elements basing on search criteria from a user or null if nothing was found
	 * 
	 * @param elementToSearch
	 * @return ArrayList <PeriodicElement>
	 */
	
	public ArrayList <PeriodicElement> searchElement(String elementToSearch){
		foundElements = new ArrayList<>();
		this.elementNameToSearch = elementToSearch.toLowerCase();
		
		String name;
		for (int i = 0; i < elements.size(); i++){
			name = elements.get(i).getElementName();
				if (name.equalsIgnoreCase(elementNameToSearch)){
					element = this.elements.get(i);
				foundElements.add(element);
						return foundElements;
				}
		}
		String abbr;
		
		for(int i=0; i < elements.size(); i++ ){
			
			abbr = elements.get(i).getElementAbbreviation();
				if(abbr.equalsIgnoreCase(elementNameToSearch)){
					element = this.elements.get(i);
				foundElements.add(element);
						return foundElements;
				}
		
		}
		
	
			findMatchingElements();
			
			if(!foundElements.isEmpty())
						return foundElements;
			else
						return null;
	}
	
	/**
	 * search for possible matching elements using Levenshtein distance algorithm 
	 * 
	 * 
	 */
	private void findMatchingElements(){
		String elemName;
		int score;
		for(int i=0; i < elements.size(); i++){
			element = elements.get(i);
			elemName = element.getElementName().toLowerCase();
			score = StringUtils.getLevenshteinDistance(elemName, elementNameToSearch,5);
			
			if(score >= 1 & elemName.startsWith(elementNameToSearch.substring(0, 1)))
				foundElements.add(element);
			else
				continue;
			
		}
		
		
	}
	
	

	

}
