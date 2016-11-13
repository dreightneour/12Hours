package main;

import java.util.ArrayList;
import java.util.Random;

public class Login {

	String user;
	String pass;
	ArrayList<Nodes> node;
	Random rand;
	public Login(String user, String pass)
	{
		this.user = user;
		this.pass = pass;
		encrypt();
	}
	
	private double encrypt()
	{
		node = new ArrayList<Nodes>();
		node.add(new Nodes());
		rand = new Random();
		rand.setSeed(user.hashCode());
		int sizeInputs = rand.nextInt(25);
		int hash = pass.hashCode();
		for(int i = 0; i < sizeInputs; i++)
		{
			node.add(new Nodes(hash%sizeInputs));
			hash /= sizeInputs;
		}
		int sizeMiddle = rand.nextInt(50);
		for(int i = 0; i < sizeMiddle; i++)
		{
			node.add(new Nodes());
		}
		node.remove(0);
		node.add(new Nodes());
		for(int i = 0; i < sizeInputs; i++)
		{
			for(int j = 0; j < sizeMiddle; j++)
			{
				node.get(j).setWeight(node.get(j).getWeight() + (node.get(i).getWeight() * rand.nextDouble()));
			}
		}
		for(int j = 0; j < sizeMiddle; j++)
		{
			node.get(j).setWeight(1/(1+Math.pow(Math.E,-4.9*node.get(j).getWeight())));
			
		}
		for(int j = 0; j < sizeMiddle; j++)
		{
			node.get(node.size() - 1).setWeight(node.get(node.size()-1).getWeight() + (node.get(j).getWeight() * rand.nextDouble()));
		}
		System.out.println(node.get(node.size() - 1).getWeight());
		return node.get(node.size() - 1).getWeight();
	}
}
