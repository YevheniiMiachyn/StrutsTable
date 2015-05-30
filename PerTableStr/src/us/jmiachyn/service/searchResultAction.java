package us.jmiachyn.service;

import java.util.ArrayList;

import javax.servlet.ServletContext;


import org.apache.commons.lang.StringUtils;
import org.apache.struts2.util.ServletContextAware;

import us.jmiachyn.persistance.ElementDao;
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
	
	@Override
	public void validate() {
		
		if(StringUtils.isEmpty(getSearchValue()) || StringUtils.isBlank(getSearchValue()))
			addFieldError(INPUT, "enter element to search");
		
		
	}
	
	
	public String execute(){
		
		listofFoundElements = new ElementDao(context).searchElement(searchValue);
	
		 if(listofFoundElements.size() == 1){
			 element = listofFoundElements.get(0);
		     return SUCCESS;
		 }
		 else if(listofFoundElements.size() > 1)
			 
			 return "success2";
		 else
			 return NONE;
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
