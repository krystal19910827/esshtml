package com.springMVC.model;

import java.sql.*;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Created by lenovo on 2018/2/23.
 */
public class dbquery {
    private static String driver;
    private static String url;
    private static String username;
    private static String password;

    static {
        driver = "oracle.jdbc.OracleDriver";
        url = "jdbc:oracle:thin:@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = TCP)(HOST = 10.128.21.88)(PORT = 15624)))(CONNECT_DATA =(SERVICE_NAME = essdb )))";
        username = "liujj";
        password = "liujj_123";
    }
    private Connection open() {
        try {
            Class.forName(driver);
            return DriverManager.getConnection(url, username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private void close(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    public List<Map> queryList(String querySQL) {
        Connection conn = this.open();
        List<Map> list = new LinkedList<Map>();
        try {
            Statement stmtStatement = conn.createStatement();
            ResultSet rs = stmtStatement.executeQuery(querySQL);
            ResultSetMetaData metaData = rs.getMetaData();
            int columns = metaData.getColumnCount();
            while (rs.next()) {
                Map map = new HashMap();
                for (int i =1; i<=columns; i++){
                    map.put(metaData.getColumnName(i),rs.getString(i));
                }
                list.add(map);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            this.close(conn);
        }
        return list;
    }
}
