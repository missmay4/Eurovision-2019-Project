package com.eurovision.API;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CountryController {

    @RequestMapping("/country")
    public Country greeting() {
    	ArrayList<String> countries = new ArrayList<> ();
    	
    	DBconnection postgres = new DBconnection();
    	Connection conn = postgres.connect();
    	
    	Statement st;
		try {
			st = conn.createStatement();
			ResultSet rs = st.executeQuery("SELECT name FROM country");
	    	while (rs.next())
	    	{
	    	    System.out.print("Column 1 returned ");
	    	    countries.add(rs.getString(1));
	    	    System.out.println(rs.getString(1));
	    	}
	    	rs.close();
	    	st.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
   	
        return new Country(countries);
    }
}