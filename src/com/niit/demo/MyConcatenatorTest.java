package com.niit.demo;

import static org.junit.Assert.*;

import org.junit.Test;

public class MyConcatenatorTest {

	@Test
	public void testConcaenate()
	{
		String concatenated = MyConcatenator.concatenate("Java","JUnit","Mockito","Jmeter");
		assertEquals("Java,JUnit,Mockito,Jmeter", concatenated);
	}

}
