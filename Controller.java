import javax.swing.JFrame;
import java.util.ArrayList;
import java.sql.*;

public class Controller
{
	//DataManager dataManager=new DataManager("jdbc:mysql://localhost/housingdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","password");

    public static void main(String[] args)
    {
        View myView = new View();
        myView.setVisible(true);
    }
}


