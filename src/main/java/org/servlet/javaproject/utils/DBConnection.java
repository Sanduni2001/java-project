package org.servlet.javaproject.utils;

import java.sql.*;

public class DBConnection {
    static public Connection con = null;

    public static Connection getCon() throws Exception
    {
        if (con == null)
        {
            Class.forName ("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/cinema";
            con = DriverManager.getConnection(url, "root", "Saduni2001.06.30");
        }
        return con;
    }
}

