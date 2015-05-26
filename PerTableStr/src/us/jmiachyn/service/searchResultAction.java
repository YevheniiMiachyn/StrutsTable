package us.jmiachyn.service;

import javax.servlet.ServletContext;

import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

public class searchResultAction extends ActionSupport implements ServletContextAware {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -2995079796565209370L;
	private ServletContext context;
	private String searchValue;
	
	
	public String execute(){
		
		//TO-DO code to search possible elements basing on user input and displaying page with a list of named links
		//pointed on detailed info about elements  
		
		return SUCCESS;
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

}
