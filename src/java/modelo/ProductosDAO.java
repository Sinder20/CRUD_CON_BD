
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author deleo
 */
public class ProductosDAO {
    
    Connection conexion;
    
    public ProductosDAO(){
        Conexion con = new Conexion();
        conexion = con.getConexion();
    }
    
    public List<Productos> listarProductos(){
    
        PreparedStatement ps;
        ResultSet rs;
        
        List<Productos> lista = new ArrayList<>();
        
        try{
        
            ps = conexion.prepareStatement("SELECT codigo, nombre, marca, categoria, precio, existencia FROM productos");
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                int codigo = rs.getInt("codigo");
                String nombre = rs.getString("nombre");
                String marca = rs.getString("marca");
                String categoria = rs.getString("categoria");
                Double precio = rs.getDouble("precio");
                int existencia = rs.getInt("existencia");
                
                Productos producto = new Productos(codigo, existencia, nombre, marca, categoria, precio);
                lista.add(producto);
            }
            
            return lista;
            
        } catch(SQLException e){
            System.out.println(e.toString());
            return null;
        }
    
    }
    
    public Productos mostrarProducto(int _codigo){
    
        PreparedStatement ps;
        ResultSet rs;
        
        Productos producto = null;
        
        try{
        
            ps = conexion.prepareStatement("SELECT codigo, nombre, marca, categoria, precio, existencia FROM productos WHERE codigo=?");
            ps.setInt(1, _codigo);
            rs = ps.executeQuery();
            
            while(rs.next()){
                
                int codigo = rs.getInt("codigo");
                String nombre = rs.getString("nombre");
                String marca = rs.getString("marca");
                String categoria = rs.getString("categoria");
                Double precio = rs.getDouble("precio");
                int existencia = rs.getInt("existencia");
                
                producto = new Productos(codigo, existencia, nombre, marca, categoria, precio);
            }
            
            return producto;
            
        } catch(SQLException e){
            System.out.println(e.toString());
            return null;
        }
    
    }
    
    public boolean insertar(Productos producto){
    
        PreparedStatement ps;
        
        try{
        
            ps = conexion.prepareStatement("INSERT INTO productos (nombre, marca, categoria, precio, existencia) VALUE (?,?,?,?,?)");
            ps.setString(1, producto.getNombre());
            ps.setString(2, producto.getMarca());
            ps.setString(3, producto.getCategoria());
            ps.setDouble(4, producto.getPrecio());
            ps.setInt(5, producto.getExistencia());
            ps.execute();
            return true;
            
            
        } catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    
    }
    
    public boolean actualizar(Productos producto){
    
        PreparedStatement ps;
        
        try{
        
            ps = conexion.prepareStatement("UPDATE productos SET nombre=?, marca=?, categoria=?, precio=?, existencia=? WHERE codigo=? ");
            ps.setString(1, producto.getNombre());
            ps.setString(2, producto.getMarca());
            ps.setString(3, producto.getCategoria());
            ps.setDouble(4, producto.getPrecio());
            ps.setInt(5, producto.getExistencia());
            ps.setInt(6, producto.getCodigo());
            ps.execute();
            return true;
            
            
        } catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    
    }
    
    public boolean eliminar(int _codigo){
    
        PreparedStatement ps;
        
        try{
        
            ps = conexion.prepareStatement("DELETE FROM productos WHERE codigo=? ");
            ps.setInt(1, _codigo);
            ps.execute();
            return true;
            
            
        } catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    
    }
    
}
