import java.sql.*;
//import com.mysql.jdbc.Driver; //dont think this import is needed.
import java.util.ArrayList;

public class DataManager
{
	private static String url = "jdbc:mysql://localhost/housingdb";
	private static String user = "alex"; 
	private static String pass = "toor";
	
	//constructor to replace the default values.
	public DataManager(String url, String user, String pass)
	{
		DataManager.url=url;
		DataManager.user=user;
		DataManager.pass=pass;
	}
	public DataManager(String user, String pass)
	{
		
		DataManager.user=user;
		DataManager.pass=pass;
	}
	
	//returns a connection to the database that can be used to run queries.
	public static Connection getConnection() throws SQLException
	{
		return DriverManager.getConnection(url, user, pass);
	}
	
	//I think this is a simpler format for our method calls that should work for our model API
	//Shows that this works
	public static void example()
	{
		try{
			Connection myConnection = getConnection(); //get connection
			Statement statement = myConnection.createStatement(); //create statement
			ResultSet result = statement.executeQuery("Select * From Staff;"); //run query
			
			while(result.next())
			{
				System.out.println(result.getString("fName"));
			}
                        
                        myConnection.close();
		}
		catch(SQLException ex)
		{
			ex.printStackTrace();
		}
	}
        
        //answers query1. Returns name of hall managers, hall, and phone
        public static ArrayList<String> query1()
        {
            ArrayList<String> toReturn = new ArrayList<String>();
            try{
                Connection myConnection = getConnection(); //open connection
                Statement statement = myConnection.createStatement(); //create statement
                //execute statement and get results
                ResultSet result = statement.executeQuery("Select Staff.fName, Staff.lName, Hall.phone, Hall.name From Staff join Hall on Staff.staffNo = Hall.managerNo;");
                
                //process results into strings
                while(result.next())
                {
                    String fName = result.getString("fName");
                    String lName = result.getString("lName");
                    String phone = result.getString("phone");
                    String hallName = result.getString("name");
                    
                    //create formatted string and add to toReturn list
                    String toAdd = "";
                    toAdd += "Hall: " + hallName + " | Manager: " + lName + ", " + fName + " | Phone: " + phone;
                    toReturn.add(toAdd);
                }
                
                myConnection.close(); //close connection
            }
            catch(SQLException ex)
            {
                ex.printStackTrace();
                return null;
            }
            
            return toReturn;
        }
        
        //returns results for query2. Returns student name, muNo, and lease details. 
        public static ArrayList<String> query2()
        {
            ArrayList<String> toReturn = new ArrayList<String>(); //list of strings toreturn 
            try
            {
                Connection myConnection = getConnection(); //get connection
                Statement statement = myConnection.createStatement(); //create statement
                ResultSet result = statement.executeQuery("Select l.duration, l.entryDate, l.exitDate, s.muNo, s.fName, s.lName From Student as s join Lease as l ON l.muNo = s.muNo;"); //run query

                //process results and create strings to return
                while (result.next())
                {
                    //get data
                    String fName = result.getString("fName");
                    String lName = result.getString("lName");
                    int muNo = result.getInt("muNo");
                    Date entryDate = result.getDate("entryDate");
                    Date exitDate = result.getDate("exitDate");
                    byte duration = result.getByte("duration");
                    
                    //create string
                    String toAdd = "";
                    toAdd += "MU No.: " + muNo + " | Name: " + lName + ", " + fName + " | Duration: " + duration;
                    toAdd += " | EntryDate: " + entryDate.toString() + " | ExitDate: " + exitDate.toString();
                    toReturn.add(toAdd);  //add string to list
                }

                myConnection.close(); //close connection
            } catch (SQLException ex)
            {
                ex.printStackTrace();
                return null;
            }
            
            return toReturn;
        }
        
        //Shows lease details for all summer semester leases
        public static ArrayList<String> query3()
        {
            //Selection String
            String temp = "Select Lease.duration, Lease.entryDate, Lease.exitDate, Lease.muNo, Lease.placeNo, Lease.leaseNo "
                    + "From Lease Join Invoice on Lease.leaseNo = Invoice.leaseNo Where Invoice.semester = 'Summer';";
            
            ArrayList<String> toReturn = new ArrayList<String>(); //list of strings toreturn 
            try
            {
                Connection myConnection = getConnection(); //get connection
                Statement statement = myConnection.createStatement(); //create statement
                ResultSet result = statement.executeQuery(temp); //run query

                //process results and create strings to return
                while (result.next())
                {
                    //get data
                    int muNo = result.getInt("muNo");
                    Date entryDate = result.getDate("entryDate");
                    Date exitDate = result.getDate("exitDate");
                    byte duration = result.getByte("duration");
                    int placeNo = result.getInt("placeNo");
                    int leaseNo = result.getInt("leaseNo");
                    
                    //create string
                    String toAdd = "";
                    toAdd += "MU No.: " + muNo + " | LeaseNo: " + leaseNo + " | PlaceNo: " + placeNo + " | Duration: " + duration;
                    toAdd += " | EntryDate: " + entryDate.toString() + " | ExitDate: " + exitDate.toString();
                    toReturn.add(toAdd);  //add string to list
                }

                myConnection.close(); //close connection
            } catch (SQLException ex)
            {
                ex.printStackTrace();
                return null;
            }
            
            return toReturn;
        }
        
        //for a student with the given first and last name, returns the total amount they have paid for housing across all leases and invoice. 
        //is this supposed to be for just one lease or all of their leases?
        public static ArrayList<String> query4(String fName, String lName)
        {
            //create query string
            String temp = "Select Student.muNo, Student.fName, Student.lName, SUM(Invoice.paymentDue) as totalPaid " +
                    " From Student Join Lease on Student.muNo = Lease.muNo " +
                    " Join Invoice on Lease.leaseNo = Invoice.leaseNo " +
                    " Where datePaid IS NOT NULL AND fName = '" + fName + "' AND lName = '" + lName + "';";
            
            ArrayList<String> toReturn = new ArrayList<String>(); //list of strings toreturn 
            try
            {
                Connection myConnection = getConnection(); //get connection
                Statement statement = myConnection.createStatement(); //create statement
                ResultSet result = statement.executeQuery(temp); //run query

                //process results and create strings to return
                while (result.next())
                {
                    //get data
                    int muNo = result.getInt("muNo");
                    String firstName = result.getString("fName");
                    String lastName = result.getString("lName");
                    int totalPaid = result.getInt("totalPaid");
                    
                    
                    String toAdd = "";
                    if(lastName == null)
                    {
                        toAdd = "No Leases Found.";
                    }
                    //create string
                    else
                    {
                        toAdd += "MU No.: " + muNo + " | Name: " + lastName + ", " + firstName + " | TotalPaid: $" + totalPaid;
                    }
                    toReturn.add(toAdd);  //add string to list
                }

                myConnection.close(); //close connection
            } catch (SQLException ex)
            {
                ex.printStackTrace();
                return null;
            }
            
            return toReturn;
        }
        
        //Present a report on students who have not paid their invoices by a given date
        //Any Invoice paid after the given date or that are still null. That Student will be returned
        public static ArrayList<String> query5(Date deadline)
        {
            String temp = "Select DISTINCT s.muNo, s.fName, s.lName, s.street, s.city, s.zipCode, s.mobileNo, s.email, s.dob, s.gender, s.category, s.nationality, s.specialNeeds, s.additionalComments, s.currentStatus, s.major, s.minor "
                    + "From Student as s join Lease On s.muNo = Lease.muNo Join Invoice On Lease.leaseNo = Invoice.leaseNo "
                    + "Where Invoice.datePaid IS Null OR Invoice.datePaid >= Date('" + deadline.toString() + "');";
            
            ArrayList<String> toReturn = new ArrayList<String>(); //list of strings toreturn 
            try
            {
                Connection myConnection = getConnection(); //get connection
                Statement statement = myConnection.createStatement(); //create statement
                ResultSet result = statement.executeQuery(temp); //run query

                //process results and create strings to return
                while (result.next())
                {
                    //get data
                    int muNo = result.getInt("muNo");
                    String firstName = result.getString("fName");
                    String lastName = result.getString("lName");
                    String street = result.getString("street");
                    String city = result.getString("city");
                    String zipCode = result.getString("zipCode");
                    String mobilePhone = result.getString("mobileNo");
                    String email = result.getString("email");
                    Date dob = result.getDate("dob");
                    String gender = result.getString("gender");
                    String category = result.getString("category");
                    String specialNeeds = result.getString("specialNeeds");
                    String currentStatus = result.getString("currentStatus");
                   
                    //create string
                    String toAdd = "";
                    toAdd += "MU No.: " + muNo + " | Name: " + lastName + ", " + firstName;
                    toAdd += " | Address: " + street + " " + city + " " + zipCode;
                    toAdd += " | Phone: " + mobilePhone + " | Email: " + email;
                    toAdd += " | DOB: " + dob.toString() + " | Gender: " + gender;
                    toAdd += " | Category: " + category + " | Special Needs: " + specialNeeds;
                    toAdd += " | Current Status: " + currentStatus;
                    toReturn.add(toAdd);  //add string to list
                }

                myConnection.close(); //close connection
            } catch (SQLException ex)
            {
                ex.printStackTrace();
                return null;
            }
            
            return toReturn;
        }
        
        //Produce report on all flat inspections where the condition was 'bad'
        public static ArrayList<String> query6()
        {
            //create query string
            String temp = "Select f.street, f.city, f.zipcode, i.inspectionDate, i.roomCondition, i.comments, s.fName, s.lName "
                    + "From (Flat as f) Join (Inspection as i) ON f.flatNo = i.flatNo Join Staff as s ON i.staffNo = s.staffNo "
                    + "Where i.roomCondition = 'bad';";
            
            ArrayList<String> toReturn = new ArrayList<String>(); //list of strings toreturn 
            try
            {
                Connection myConnection = getConnection(); //get connection
                Statement statement = myConnection.createStatement(); //create statement
                ResultSet result = statement.executeQuery(temp); //run query

                //process results and create strings to return
                while (result.next())
                {
                    //get data
                    String fName = result.getString("fName");
                    String lName = result.getString("lName");
                    String street = result.getString("street");
                    String city = result.getString("city");
                    String zipCode = result.getString("zipCode");
                    Date inspectDate = result.getDate("inspectionDate");
                    String condition = result.getString("roomCondition");
                    String comments = result.getString("comments");
                    
                    
                    //create string
                    String toAdd = "";
                    toAdd += "Flat Address: " + street + " " + city + " " + zipCode;
                    toAdd += " | Date: " + inspectDate.toString() + " | Inspection By: " + lName + ", " + fName;
                    toAdd += " | Condition: " + condition + " | Comments: " + comments;
                    toReturn.add(toAdd);  //add string to list
                }

                myConnection.close(); //close connection
            } catch (SQLException ex)
            {
                ex.printStackTrace();
                return null;
            }
            
            return toReturn;
        }
        
        //gets a list of students with rooms in the hall with the given name
        //must ensure that only one lease has an exit date with date after current date.
        public static ArrayList<String> query7(String hallName)
        {
            Date today = new Date(System.currentTimeMillis());            
            
            //can remove distinct after actual data is input.
            String temp = "Select DISTINCT s.muNo, s.fName, s.lName, r.roomNo, r.placeNo "
                    + "From Student as s Join Lease as l ON s.muNo = l.muNo "
                    + "Join Room as r ON l.placeNo = r.placeNo "
                    + "Join Hall as h on r.hallNo = h.hallNo "
                    + "Where h.name = '" + hallName + "' AND l.exitDate >= " + today + ";";
            
            ArrayList<String> toReturn = new ArrayList<String>(); //list of strings toreturn 
            try
            {
                Connection myConnection = getConnection(); //get connection
                Statement statement = myConnection.createStatement(); //create statement
                ResultSet result = statement.executeQuery(temp); //run query

                //process results and create strings to return
                while (result.next())
                {
                    //get data
                    int muNo = result.getInt("muNo");
                    String firstName = result.getString("fName");
                    String lastName = result.getString("lName");
                    String roomNo = result.getString("roomNo");
                    int placeNo = result.getInt("placeNo");
                    
                    //create string
                    String toAdd = "";
                    toAdd += "MU No.: " + muNo + " | Name: " + lastName + ", " + firstName;
                    toAdd += " | RoomNo: " + roomNo + " | PlaceNo: " + placeNo;
                    toReturn.add(toAdd);  //add string to list
                }

                myConnection.close(); //close connection
            } catch (SQLException ex)
            {
                ex.printStackTrace();
                return null;
            }
            if(toReturn.size() == 0)
            {
                toReturn.add("Invalid Input.");
            }
            return toReturn;
        }
        
        //  Present a report listing the details of all students currently on the waiting list for accommodation; that is; who were not placed.
        public static ArrayList<String> query8(){
    		ArrayList<String> toReturn=new ArrayList<String>();
    		StringBuilder sb=new StringBuilder(800);
    		Connection con=null;
    		String sql="select * from student where currentStatus = 'not';";
    		//ParkingLot tempLot=new ParkingLot();
    		try{
    			con= getConnection();
    			Statement st=con.createStatement();
    			ResultSet set=st.executeQuery(sql);
    			while(set.next()) {
    				int muNo=set.getInt("muNo");
    				int advisorNo=set.getInt("advisorNo");
    				String fName=set.getString("fname");
    				String lName=set.getString("lname");
    				String street = set.getString("street");
    				Date dOB= set.getDate("DOB");
    				String city=set.getString("city");
    				int zipCode = set.getInt("zipCode");
    				String mobileNo = set.getString("mobileNo");
    				String email = set.getString("email");
    				String gender = set.getString("gender");
    				String category = set.getString("category");
    				String nationality = set.getString("nationality");
    				String specialNeeds = set.getString("specialNeeds");
    				String additionalComments = set.getString("additionalComments");
    				String currentStatus = set.getString("currentStatus");
    				String major = set.getString("major");
    				String minor = set.getString("minor");
    				sb.append("muNo: "+ muNo);
    				sb.append(" | advisorNo: "+advisorNo);
    				sb.append(" | name: "+ fName+" "+lName);
    				sb.append(" | street: "+ street);
    				sb.append(" | city: "+city);
    				sb.append(" | zipCode: "+zipCode);
    				sb.append(" | mobileNo: "+mobileNo);
    				sb.append(" | email: "+ email);
    				sb.append(" | DOB: "+dOB);
    				sb.append(" | gender: "+gender);
    				sb.append(" | category: "+category);
    				sb.append(" | nationality: "+nationality);
    				sb.append(" | specialNeeds: "+specialNeeds);
    				sb.append(" | additionalComments: "+additionalComments);
    				sb.append(" | currentStatus: "+currentStatus);
    				sb.append(" | major: "+major);
    				sb.append(" | minor: "+minor);
    				
    				toReturn.add(sb.toString());
    				sb.setLength(0);
    				
    				
    			}
    			
    			
    			con.close();
    		}catch(Exception ex){
    			ex.printStackTrace();
    			return toReturn;
    		}
    		return toReturn;
    	}
        // Display the total number of students in each student category.
        //select count(category) as categoryCount, category from student group by category;
        public static ArrayList<String> query9(){
    		ArrayList<String> toReturn=new ArrayList<String>();
    		StringBuilder sb=new StringBuilder(800);
    		Connection con=null;
    		String sql="select count(category) as categoryCount, category from student group by category;";
    		//ParkingLot tempLot=new ParkingLot();
    		try{
    			con= getConnection();
    			Statement st=con.createStatement();
    			ResultSet set=st.executeQuery(sql);
    			while(set.next()) {
    				String category = set.getString("category");
    				int numberInCategory = set.getInt("categoryCount");
    				sb.append("Category: "+ category);
    				sb.append(" | Has: "+numberInCategory+" Students");
    				toReturn.add(sb.toString());
    				sb.setLength(0);
    			}
    			
    			
    			con.close();
    		}catch(Exception ex){
    			ex.printStackTrace();
    			return toReturn;
    		}
    		return toReturn;
    	}
    	
        //Present a report of the names and MU numbers for all students who have not supplied details of their next-of-kin.
        //select fname, lname, student.muNo from student, (select * from (select student.muNo, nextOfKinNo from student left join nextofkin on student.muNo=nextofkin.muNo) as newTable where nextOfKinNo is null) as NullTable where nullTable.muNo=student.muNo;
        public static ArrayList<String> query10(){
    		ArrayList<String> toReturn=new ArrayList<String>();
    		StringBuilder sb=new StringBuilder(800);
    		Connection con=null;
    		String sql="select fname, lname, student.muNo from student, (select * from (select student.muNo, nextOfKinNo from student left join nextofkin on student.muNo=nextofkin.muNo) as newTable where nextOfKinNo is null) as NullTable where nullTable.muNo=student.muNo;";
    		//ParkingLot tempLot=new ParkingLot();
    		try{
    			con= getConnection();
    			Statement st=con.createStatement();
    			ResultSet set=st.executeQuery(sql);
    			while(set.next()) {
    				String fName = set.getString("fName");
    				String lName = set.getString("lName");
    				int muNo = set.getInt("muNo");
    				sb.append("muNo: "+muNo);
    				sb.append(" | Name: "+ fName+" "+lName);
    				toReturn.add(sb.toString());
    				sb.setLength(0);
    			}
    			
    			
    			con.close();
    		}catch(Exception ex){
    			ex.printStackTrace();
    			return toReturn;
    		}
    		return toReturn;
    	}
        //Display the name and internal telephone number of the Advisor for a particular student
        //select advisor.fname, advisor.lname, advisor.internalphone from student join advisor on student.advisorNo=advisor.advisorNo where muNo="+muNo+";"
        public static ArrayList<String> query11(int muNo){
    		ArrayList<String> toReturn=new ArrayList<String>();
    		StringBuilder sb=new StringBuilder(800);
    		Connection con=null;
    		String sql="select advisor.fname, advisor.lname, advisor.internalphone from student join advisor on student.advisorNo=advisor.advisorNo where muNo="+muNo+";";
    		//ParkingLot tempLot=new ParkingLot();
    		try{
    			con= getConnection();
    			Statement st=con.createStatement();
    			ResultSet set=st.executeQuery(sql);
    			while(set.next()) {
    				String fName = set.getString("fName");
    				String lName = set.getString("lName");
    				String internalPhone = set.getString("internalphone");
    				sb.append("Name: "+ fName+" "+lName);
    				sb.append(" | internalPhone: "+internalPhone);
    				toReturn.add(sb.toString());
    				sb.setLength(0);
    			}
    			
    			
    			con.close();
    		}
                catch(Exception ex){
                    
    			//ex.printStackTrace();
    			return toReturn;
    		}
                
                if(toReturn.size() == 0)
                {
                    toReturn.add("No Student Found with muNo: " + muNo);
                }
                
    		return toReturn;
    	}
        //Display the minimum, maximum, and average monthly rent for rooms in residence halls.
        //select distinct hall.hallNo, hall.name, average, minimum, maximum from hall, (select hallNo,avg(monthlyrate) as average, min(monthlyRate) as minimum, max(monthlyRate) as maximum from room where hallNo is not null group by hallNo) as newTable;
        public static ArrayList<String> query12(){
    		ArrayList<String> toReturn=new ArrayList<String>();
    		StringBuilder sb=new StringBuilder(800);
    		Connection con=null;
    		String sql="Select Hall.hallNo, Hall.name, Min(monthlyRate) as min , Max(monthlyRate) as max, AVG(monthlyRate) as avg From Hall Join Room On Hall.hallNo = Room.hallNo Group by Hall.hallNo;";
    		//ParkingLot tempLot=new ParkingLot();
    		try{
    			con= getConnection();
    			Statement st=con.createStatement();
    			ResultSet set=st.executeQuery(sql);
    			while(set.next()) {
    				int hallNo = set.getInt("hallNo");
    				String name = set.getString("name");
    				double average = set.getDouble("avg");
    				double minimum = set.getDouble("min");
    				double maximum = set.getDouble("max");
    				sb.append("hallNo: "+ hallNo);
    				sb.append(" | name: "+name);
    				sb.append(" | average: "+average);
    				sb.append(" | minimum: "+minimum);
    				sb.append(" | maximum: "+maximum);
    				toReturn.add(sb.toString());
    				sb.setLength(0);
    			}
    			
    			
    			con.close();
    		}catch(Exception ex){
    			ex.printStackTrace();
    			return toReturn;
    		}
    		return toReturn;
    	}
        //Display the total number of places in each residence hall.
        //select distinct hall.name, hall.hallNo, placesInHall from hall, (select hallNo,count(placeNo) as placesInHall from room where hallNo is not null group by hallNo) as newTable;
        public static ArrayList<String> query13(){
    		ArrayList<String> toReturn=new ArrayList<String>();
    		StringBuilder sb=new StringBuilder(800);
    		Connection con=null;
    		String sql="select distinct hall.name, hall.hallNo, placesInHall from hall, (select hallNo,count(placeNo) as placesInHall from room where hallNo is not null group by hallNo) as newTable;";
    		//ParkingLot tempLot=new ParkingLot();
    		try{
    			con= getConnection();
    			Statement st=con.createStatement();
    			ResultSet set=st.executeQuery(sql);
    			while(set.next()) {
    				String name = set.getString("name");
    				String hallNo = set.getString("hallNo");
    				String placesInHall = set.getString("placesInHall");
    				sb.append("Name: "+ name);
    				sb.append(" | hallNo: "+hallNo);
    				sb.append(" | has "+ placesInHall+" places.");
    				toReturn.add(sb.toString());
    				sb.setLength(0);
    			}
    			
    			
    			con.close();
    		}catch(Exception ex){
    			ex.printStackTrace();
    			return toReturn;
    		}
    		return toReturn;
    	}
        
        //what does this do?
        //Gets Staff members who are 60 years or older
        public static ArrayList<String> query14(){
    		ArrayList<String> toReturn=new ArrayList<String>();
    		StringBuilder sb=new StringBuilder(800);
    		Connection con=null;
    		String sql="select * from staff inner join (select TIMESTAMPDIFF(YEAR, dob, CURDATE()) AS age,staffNo from staff) as r on staff.staffno = r.staffno where age >59;";
    		//ParkingLot tempLot=new ParkingLot();
    		try{
    			con= getConnection();
    			Statement st=con.createStatement();
    			ResultSet set=st.executeQuery(sql);
    			while(set.next()) {
    				int staffNo=set.getInt("staffNo");
    				int hallNo=set.getInt("hallNo");
    				String fName=set.getString("fname");
    				String lName=set.getString("lname");
    				int age=set.getInt("age");
    				sb.append("staffNo: "+ staffNo);
    				sb.append(" | hallNo: "+hallNo);
    				sb.append(" | name: "+ fName+" "+lName);
    				sb.append(" | age: "+age);
    				toReturn.add(sb.toString());
    				sb.setLength(0);
    				
    				
    			}
    			
    			
    			con.close();
    		}catch(Exception ex){
    			ex.printStackTrace();
    			return toReturn;
    		}
    		return toReturn;
    	}
    	
	public static String query15(int lotNo) {
		int toReturn=-1;
		Connection con=null;
		String sql="select * from ParkingLot where lotNo="+lotNo;
		//ParkingLot tempLot=new ParkingLot();
		try{
			con= getConnection();
			Statement st=con.createStatement();
			ResultSet set=st.executeQuery(sql);
			set.next();
			int id=set.getInt("lotNo");
			int lotSpaces=set.getInt("maxSpaces");
			int spacesAvailable=set.getInt("spacesAvailable");
			if(id==lotNo)
			toReturn=lotSpaces-spacesAvailable;
			
			con.close();
		}catch(Exception ex){
			//ex.printStackTrace();
			return "Lot Not Found";
		}
		return "Lot No: " + lotNo + " Registered Vehicles: " + toReturn;
	}
}
