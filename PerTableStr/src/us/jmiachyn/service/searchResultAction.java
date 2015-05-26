package us.jmiachyn.service;

import java.util.ArrayList;

import javax.servlet.ServletContext;

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
	private ArrayList <PeriodicElement> elementList;
	
	
	public String execute(){
		
		 elementList = new ElementDao(context).searchElement(searchValue);
	
		 if(elementList != null)
		     return SUCCESS;
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




	public ArrayList<PeriodicElement> getElementList() {
		return elementList;
	}



}
