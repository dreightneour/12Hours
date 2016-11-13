package main;

public class Person {
	
	String name;
	String party;
	String country;
	String password;
	int origin;
	int length;
	
	public Person(String name, String country, String party, String password)
	{
		this.name = name;
		this.country = country;
		this.party = party;
		this.password = password;
	}
	
	public Person(String name, String country, String party, String password, int origin, int length)
	{
		this.name = name;
		this.country = country;
		this.party = party;
		this.origin = origin;
		this.length = length;
		this.password = password;
	}
	
	public void setOrigin(int in)
	{
		origin = in;
	}
	
	public String getPass()
	{
		return password;
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
