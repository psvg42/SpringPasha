package com.my.app.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Connector {

	private static Connector instance = null;

	String driverName = "com.mysql.jdbc.Driver";

	// Create a connection to the database
	private static String serverName = "localhost:3306";
	private static String mydatabase = "news";
	private static String url = "jdbc:mysql://" + serverName + "/" + mydatabase;
	private static String username = "root";
	private static String password = "root";

	private Connector() {
		try {
			Class.forName(driverName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connector getConnect() {
		if (instance == null)
			instance = new Connector();
		return instance;
	}

	public void addNews(News news) {
		Connection connection = null;
		try {
			// Название драйвера
			connection = DriverManager.getConnection(url, username, password);
			System.out.println("is connect to DB" + connection);

			String query = "INSERT INTO `news`.`news` (`title`, `text`,`date`) VALUES ( '"
					+ news.getTitle()
					+ "', '"
					+ news.getText()
					+ "','"
					+ new java.sql.Date(news.getDate().getTime())+ "')";
			;
			
			System.out.println("Query = " + query);
			Statement stmt = connection.createStatement();

			stmt.execute(query);
			connection.close();
		} // end try
		catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public List<News> getNews() {
		Connection connection = null;
		List<News> news = new ArrayList<News>();
		try {
			// Название драйвера
			connection = DriverManager.getConnection(url, username, password);
			System.out.println("is connect to DB" + connection);

			String query = "Select * FROM news";
			Statement stmt = connection.createStatement();

			ResultSet rs = stmt.executeQuery(query);

			while (rs.next()) {
				String title = rs.getString(2);
				String text = rs.getString(3);
				Date date = new Date(rs.getDate(4).getTime());
				news.add(new News(title, text, date));
			}

			connection.close();
		} // end try
		catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return news;
	}
}
