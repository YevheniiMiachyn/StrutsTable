package us.jmiachyn.service;


import javax.servlet.ServletContext;

import org.apache.struts2.util.ServletContextAware;

import us.jmiachyn.persistance.PeriodicElement;

import com.opensymphony.xwork2.ActionSupport;

public class DetailsAction extends ActionSupport implements ServletContextAware {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 297474423681939764L;
	private int ID;
	private ServletContext context;
	
	private PeriodicElement element;
	
	
	@Override
	public String execute(){
		
	this.element = new SearchEngine(context).getElement(ID);	
	
		return SUCCESS;
	}


	public int getID() {
		return ID;
	}


	public void setID(int iD) {
		ID = iD;
	}


	@Override
	public void setServletContext(ServletContext servletContext) {
		this.context = servletContext;
		
	}


	public PeriodicElement getElement() {
		return element;
	}



}
