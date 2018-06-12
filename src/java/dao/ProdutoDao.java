package dao;


import entities.Produto;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.ConnectionFactory;

/**
 *
 * @author Breno
 */
public class ProdutoDao {
    private Produto produto = new Produto();
    private List<Produto> produtos = new ArrayList<Produto>();
    
    public int cadastraCliente(Produto produto){
        
        try {
            Connection con = ConnectionFactory.openConnection();
            java.sql.PreparedStatement pst;
            ResultSet rst;
            pst = con.prepareStatement("INSERT INTO `produto` (`name`, `descricao`, `marca`, `grupo`, `subgrupo`, `codigo`, `codigofabricante`, `ncm`, `peso`, `acrescimo` , `custo` ) VALUES ( ?,?,?,?,?,?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            
            pst.setString(1, produto.getName());
            pst.setString(2, produto.getDescricao());
            pst.setString(3, produto.getMarca());
            pst.setString(4, produto.getGrupo());
            pst.setString(5, produto.getSubgrupo());
            pst.setInt(6, produto.getCodigo());
            pst.setInt(7, produto.getCodigoFabricante());
            pst.setString(8, produto.getNcm());
            pst.setString(9, produto.getPeso());
            pst.setString(10, produto.getAcrescimo());
            pst.setString(11, produto.getCusto());
            pst.executeUpdate();
            rst = pst.getGeneratedKeys();
            
            if(rst.next()){
                return rst.getInt(1);
            }
            return 0;
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDao.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
    }
}
