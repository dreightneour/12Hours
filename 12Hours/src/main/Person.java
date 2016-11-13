package main;

public class Person {
	
	String name;
	String party;
	String country;
	int origin;
	int length;
	
	public Person(String name, String country, String party)
	{
		this.name = name;
		this.country = country;
		this.party = party;
	}
	
	public Person(String name, String country, String party, int origin, int length)
	{
		this.name = name;
		this.country = country;
		this.party = party;
		this.origin = origin;
		this.length = length;
	}
	
	public void setOrigin(int in)
	{
		origin = in;
	}
	
	public void setTime(int in)
	{
		length = in;
	}
	
	public int getOrigin()
	{
		return origin;
	}
	
	public int getLength()
	{
		return length;
	}
	
	public String getName()
	{
		return name;
	}
	
	public String getCountry()
	{
		return country;
	}
	
	public String getParty()
	{
		return party;
	}
}
