package us.jmiachyn.persistance;

import java.io.Serializable;

public class PeriodicElement implements Element, Serializable {

    /**class to hold, define and return a Periodic Element's info

 * @author Yevhenii Miachyn, Chris Hardin
 *
 */
    
    private static final long serialVersionUID = -1811543223498648537L;
    private int atomicNumber;
    private String elementName;
    private String elementDescription;
    private String elementAbbreviation;
    private double atomicWeight;
    private boolean metallic;
    private String imageURI;
    private String isElementMetallic;

    
    public PeriodicElement(){
    	
    }
    
    //@return Element Name
    @Override
    public String getElementName() {
        return this.elementName;
    }

    //@return Image location
    @Override
    public String getImageURI() {
        return this.imageURI;
    }

    //@return Element Description
    @Override
    public String getElementDescription() {
        return this.elementDescription;
    }

    //@return Element Abbreviation
    public String getElementAbbreviation() {
        return this.elementAbbreviation;
    }

    //@return Atomic Number
    public int getAtomicNumber() {
        return this.atomicNumber;
    }

    //@return Atomic Weight
    public double getAtomicWeight() {
        return this.atomicWeight;
    }

   
    //Set Element Name
    //@param the Element's Name
    @Override
    public void setElementName(String elementName) {

    	this.elementName = elementName;

    }

    //Set Element Description
    //@param the Element's Description
    @Override
    public void setElementDescription(String description){
    	this.elementDescription = description;
    }

    //Set Image Location
    //@param the Image Location (relative to /images)
    @Override
    public void setImageURI(String imageURI) {

    	this.imageURI = imageURI;

    }

    //Set Element Abbreviation
    //@param The Element Abbreviation
    public void setElementAbbreviation(String abbreviation){
    	
    	this.elementAbbreviation = abbreviation;
    }

    //Set Element Atomic Nubmer
    //@param the Element's Atomic Number
    public void setAtomicNumber(int atomicNumber){
    	this.atomicNumber=atomicNumber;
    }

    //Set Element Atomic Weight
    //@param the Element's Atomci Weight
    public void setAtomicWeight(double atomicWeight){
    	
    	this.atomicWeight = atomicWeight;
    }

	/**
	 * @return the isMetallic
	 */
	public boolean isMetallic() {
		return metallic;
	}

	/**
	 * @param isMetallic the isMetallic to set
	 */
	public void setMetallic(boolean metallic) {
		this.metallic = metallic;
	}

	/**
	 * @return the isElementMetallic
	 */
	public String getIsElementMetallic() {
		return isElementMetallic;
	}

	/**
	 * @param isElementMetallic the isElementMetallic to set
	 */
	public void setIsElementMetallic(String isElementMetallic) {
		this.isElementMetallic = isElementMetallic;
	}


   


   
}
