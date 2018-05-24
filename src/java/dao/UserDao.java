package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.ConnectionFactory;
/**
 *
 * @author internet
 */
public class UserDao {
    
    public boolean userLogin(String name, String passwd){
        try {
            Connection con = ConnectionFactory.openConnection();
            ResultSet rSet;            
            PreparedStatement pst;
            
            pst = con.prepareStatement("SELECT * FROM `usuario` WHERE `nome` = ? and `senha` = ? ");
            pst.setString(1, name);
            pst.setString(2, passwd);
            
            rSet = pst.executeQuery();
            
            return rSet.next();
                       
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    public boolean registerUser(String name, String passwd){
        try {
            Connection con = ConnectionFactory.openConnection();
            PreparedStatement pst;
            
            pst = con.prepareStatement("INSERT INTO `usuario`( `nome`, `senha`) VALUES ?, ? ");
            pst.setString(1, name);
            pst.setString(2, passwd);
            pst.execute();
            con.close();
            
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
}
