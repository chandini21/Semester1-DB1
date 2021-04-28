//
// import the include files necessary to access oracle.
//
import java.sql.*;
//import oracle.jdbc.*;

public class DBMS {

public static int stat;

    public static Connection openDB() {
      Connection connect = null;
      stat=0;         
     try { Class.forName("oracle.jdbc.driver.OracleDriver"); }
         //try { DriverManager.registerDriver(new oracle.jdbc.OracleDriver()); }

//
// Check to see if driver loaded (stat=1 if failed).
//  INSERT your login and pwd below in place of scott and tiger

      catch(Exception e) { stat=1; }
      try { connect = DriverManager.getConnection
             ("jdbc:oracle:thin:@localhost:1521:cse1", "scott", "tiger"); }
//
// Check to see if connection was made (stat=2 if failed).
//
      catch(Exception e) { if(stat==0) {stat=2;} }
      return connect;
   }

   public void close() { this.close(); }

   public static void main(String args[])
   {
      DBMS dbc = new DBMS();
      dbc.openDB();
      System.out.println("Status= "+stat);
   }  
}
