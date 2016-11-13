package main;

public class District {
	private int number;
	private int days;
	private int pop;
	private int top;
	private int pct;
	private int money;
	
	public District(int number, int days, int pop, int top, int pct, int money)
	{
		this.number = number;
		this.days = days;
		this.pop = pop;
		this. top = top;
		this.pct = pct;
		this.money = money;
	}
	public int getNumber()
	{
		return number;
	}
	
	public int getDays()
	{
		return days;
	}
	
	public int getPop()
	{
		return pop;
	}
	
	public int getTop()
	{
		return top;
	}
	
	public int getPct()
	{
		return pct;
	}
	
	public int getMoney()
	{
		return money;
	}
}
