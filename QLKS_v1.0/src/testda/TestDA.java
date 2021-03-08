/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package testda;
import database.connectDatabase;
import java.sql.*;
/**
 *
 * @author LeThien
 */
public class TestDA {


    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
        // TODO code application logic here
        for(int i=1;i<=50;i++){
            System.out.print("Jphong"+i+", ");
        }
        connectDatabase connect = new  connectDatabase ();
        ResultSet rs = connect.ExcuteQueryGetTable("Select MATD from THUC_DON");
        while (rs.next()){
            String MATD = rs.getString("MATD");
            System.out.println(MATD);
        }
    }
    
}
