package us.jmiachyn.persistance;

import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletContext;

public class ElementDao {
	
	private ServletContext context;
	private final String ELEMENT_LIST_ATTRIBUTE = "elementList";
	private final String ELEMENT_NAME_ATTRIBUTE = "elementName";
	private final String ELEMENT_ABBR_ATTRUBUTE = "elementAbbr";
	private PeriodicElement element;
	private ArrayList<PeriodicElement> elements;
	private ArrayList<String> elementName, elementAbbr;
	
	@SuppressWarnings("unchecked")
	public ElementDao(ServletContext context) {
		this.context = context;
		elementName = (ArrayList<String>) this.context.getAttribute(ELEMENT_NAME_ATTRIBUTE);
		elementAbbr = (ArrayList<String>) this.context.getAttribute(ELEMENT_ABBR_ATTRUBUTE);
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
	
	public PeriodicElement searchElement(String elementToSearch){
		
		String name;
		for (int i = 0; i < elementName.size(); i++){
			name = elementName.get(i);
				if (name.equalsIgnoreCase(elementToSearch))
						return this.getElement(i+1);
			
		}
			
		
			
			
		
		
		
		return null;
	}
	
	

	

}
