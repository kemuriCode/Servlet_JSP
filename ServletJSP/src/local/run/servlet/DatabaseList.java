package local.run.servlet;

import java.util.*;

public class DatabaseList {
	
	public DatabaseList() {
		
	}
	
	private ArrayList<Person> personDB = new ArrayList <Person>();
	
	private boolean dbIsFull = false;
	
	public void addPerson (Person person) {
	 
		if (personDB.size() < 5) personDB.add(person);
		else this.dbIsFull = true;
	}
	
	public Person getPerson (int temp) {
		return this.personDB.get(temp);
	}
	
	public boolean isDbFullQuestion() {
		return this.dbIsFull;
	}
	
	public <Person> ArrayList getPersonDB() {
		return this.personDB;
	}
	
}
