package us.jmiachyn.persistance.test;

import static org.junit.Assert.*;

import java.util.ArrayList;

import org.apache.commons.lang3.StringUtils;
import org.junit.Test;

public class ElementDaoTest {

	@Test
	public void testSearchElement() {
		
		ArrayList<String> namesToTest = new ArrayList<String>();
		namesToTest.add("Aluminium");
		namesToTest.add("Alumisium");
		namesToTest.add("Bor");
		namesToTest.add("Borium");
		
		String elemName;
		int score;
		
			
			elemName = namesToTest.get(0);
			score = StringUtils.getLevenshteinDistance(elemName, "Alumnum");
			assertEquals(2, score);
		
		
		
		
	}

}
