package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.ConnectionFactory;
import entities.Cliente;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Breno
 */
public class ClienteDao {
    private Cliente cliente = new Cliente(); 
    private List<Cliente> clientes = new ArrayList<Cliente>();

    public boolean criaCliente(Cliente c) {
        try {
            Connection con = ConnectionFactory.openConnection();
            PreparedStatement pst;
            
            pst = con.prepareStatement("INSERT INTO `cliente` ( `nome`, `sobrenome`, `apelido`, `data_nascimento`, `registro`, `doc_unico`, `sexo`, `pessoa` )"
                    + " VALUES ( ?, ?, ?, ?, ?, ?, ?, ? ");
            
            pst.setString(1, c.getNome());
            pst.setString(2, c.getSobrenome());
            pst.setString(3, c.getApelido());
            pst.setString(4, c.getData_nascimento());
            pst.setString(5, c.getRegistro());
            pst.setString(6, c.getDoc_unico());
            pst.setString(7, c.getSexo());
            pst.setString(8, c.getPessoa());
                        
            pst.execute();
            con.close();
            
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDao.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    public List<Cliente> listClientes(){
        try {
            ResultSet rst;
            
            Connection con = ConnectionFactory.openConnection();
            PreparedStatement pst;
            
            pst = con.prepareStatement("SELECT * FROM `cliente`");
            
            rst = pst.executeQuery();
            
            while(rst.next()){
                cliente = new Cliente();
                cliente.setNome(rst.getString("nome"));
                cliente.setSobrenome(rst.getString("sobrenome"));
                cliente.setApelido(rst.getString("apelido"));
                cliente.setRegistro(rst.getString("registro"));
                cliente.setRegistro(rst.getString("doc_unico"));
                cliente.setRegistro(rst.getString("sexo"));
                cliente.setRegistro(rst.getString("pessoa"));
                clientes.add(cliente);
            }
            
            return clientes;
        } catch (SQLException ex) {
            Logger.getLogger(ClienteDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        
    }
}
