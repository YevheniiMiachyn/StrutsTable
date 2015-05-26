package us.jmiachyn.persistance;

import java.util.ArrayList;

import javax.servlet.ServletContext;

public class ElementDao {
	
	private ServletContext context;
	private final String ELEMENT_LIST_ATTRIBUTE = "elementList";
	private PeriodicElement element;
	
	public ElementDao(ServletContext context) {
		this.context = context;
		
	}
	
	/**Returns PeriodicElement basing on its Id
	 * 
	 * @param Id
	 * @return PeriodicElement
	 */

	public PeriodicElement getElement(int Id) {
		
		@SuppressWarnings("unchecked")
		ArrayList<PeriodicElement>	elements = (ArrayList<PeriodicElement>) this.context.getAttribute(ELEMENT_LIST_ATTRIBUTE);
		this.element = elements.get(Id-1);
		
		if(element.isMetallic())
			element.setIsElementMetallic("YES");
			else
			element.setIsElementMetallic("NO");	
		
				
		return element;
	}
	
	/**Return a list of possible elements basing on search criteria from a user or null if nothing was found
	 * 
	 * @param elementToSearch
	 * @return ArrayList <PeriodicElement>
	 */
	
	public ArrayList <PeriodicElement> searchElement(String elementToSearch){
		
		
		return null;
	}
	
	

	

}
