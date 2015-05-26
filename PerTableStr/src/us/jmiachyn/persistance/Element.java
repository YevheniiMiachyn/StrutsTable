
package us.jmiachyn.persistance;


/**interface for creating JavaBean class that contains data 
 * for requested element of periodic table
 * @author Yevhenii Miachyn, Chris Hardin
 *
 */
	public interface Element {

			
		
	/**
	 * @return the elementName
	 */
	public String getElementName() ;
	/**
	 * @return the imageURI
	 */
	public String getImageURI() ;
	/**
	 * @return the elementDescription
	 */
	public String getElementDescription() ;
	/**
	 * @param elementName the elementName to set
	 */
	public void setElementName(String elementName);
	/**
	 * @param imageURI the imageURI to set
	 */
	public void setImageURI(String imageURI);
	/**
	 * @param elementDescription the elementDescription to set
	 */
	public void setElementDescription(String elementDescription);
	
	
	
}
