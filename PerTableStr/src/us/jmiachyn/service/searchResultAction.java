package us.jmiachyn.service;

import java.util.ArrayList;

import javax.servlet.ServletContext;


import org.apache.commons.lang.StringUtils;
import org.apache.struts2.util.ServletContextAware;

import us.jmiachyn.persistance.PeriodicElement;

import com.opensymphony.xwork2.ActionSupport;

public class searchResultAction extends ActionSupport implements ServletContextAware {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2995079796565209370L;
	private ServletContext context;
	private String searchValue;
	private PeriodicElement element;
	private ArrayList<PeriodicElement> listofFoundElements;
	private static final String SUCCESS2 = "success2";
	
	@Override
	public void validate() {
		
		if(StringUtils.isEmpty(searchValue)|| StringUtils.isBlank(searchValue) || StringUtils.isNumeric(searchValue))
			addFieldError("searchValue", "Enter element name to search");
		
		
	}
	
	
	public String execute(){
		
		listofFoundElements = new SearchEngine(context).searchElement(searchValue);
	
		if(listofFoundElements == null)
			return NONE;
		
		else if(listofFoundElements.size() == 1 ){
			 
			 for(PeriodicElement elarg : listofFoundElements)
				  element = elarg;
		     return SUCCESS;
		 }
		 else if(listofFoundElements.size() > 1)
						 
			 return SUCCESS2;
		
		 else return NONE;
		 
	}
	
	
	

	@Override
	public void setServletContext(ServletContext context) {
		this.context = context;
				
		
	}




	public String getSearchValue() {
		return searchValue;
	}




	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}




	public PeriodicElement getElement() {
		return element;
	}


	public ArrayList<PeriodicElement> getListofFoundElements() {
		return listofFoundElements;
	}




	


}
