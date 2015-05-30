package us.jmiachyn.persistance;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;


import javax.servlet.ServletContext;

import org.apache.commons.lang3.CharSequenceUtils;
import org.apache.commons.lang3.StringUtils;



public class ElementDao {
	
	private ServletContext context;
	private final String ELEMENT_LIST_ATTRIBUTE = "elementList";
	private final String ELEMENT_NAME_ATTRIBUTE = "elementName";
	private final String ELEMENT_ABBR_ATTRUBUTE = "elementAbbr";
	private PeriodicElement element,elem;
	private ArrayList<PeriodicElement> elements, foundElements;
	private ArrayList<String> elementName, elementAbbr;
	
	@SuppressWarnings("unchecked")
	public ElementDao(ServletContext context) {
		this.context = context;
		elementName = (ArrayList<String>) this.context.getAttribute(ELEMENT_NAME_ATTRIBUTE);
		elementAbbr = (ArrayList<String>) this.context.getAttribute(ELEMENT_ABBR_ATTRUBUTE);
		elements = (ArrayList<PeriodicElement>) this.context.getAttribute(ELEMENT_LIST_ATTRIBUTE);
		foundElements = new ArrayList<>();
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
		
		String name;
		for (int i = 0; i < elementName.size(); i++){
			name = elementName.get(i);
				if (name.equalsIgnoreCase(elementToSearch)){
					element = this.getElement(i+1);
				foundElements.add(element);
						return foundElements;
				}
		}
		String abbr;
		
		for(int i=0; i < elementAbbr.size(); i++ ){
			
			abbr = elementAbbr.get(i);
				if(abbr.equalsIgnoreCase(elementToSearch)){
					elem = this.getElement(i+1);
				foundElements.add(elem);
						return foundElements;
				}
		
		}
		
		String matchingElement;
		ArrayList <Integer> elementIndex = new ArrayList<>();
		ListIterator<String> it = elementName.listIterator();
		int i=0;
		double score=0.0;
		while(it.hasNext()){
			
			
			matchingElement = it.next();
			i++;
			
			score = StringUtils.getJaroWinklerDistance(matchingElement, elementToSearch);
			
				
				if (score >= 0.8){
					elementIndex.add(i);
					
				}
				else continue;
			
			
		}
			
		if(!elementIndex.isEmpty()){
			
			for(Integer in : elementIndex){
				
				foundElements.add(elements.get(in));
				
			}
			return foundElements;
		}
			
			
		
		
		
		return null;
	}
	
	

	

}
