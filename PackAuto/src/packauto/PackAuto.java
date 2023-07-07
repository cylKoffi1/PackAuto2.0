/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package packauto;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

/**
 *
 * @author cylko
 */
public class PackAuto {
public class ConexionBD {
    String filename= null;
    public static String path;
     Connection conn=null;
       
    public static Connection Conexion(){
       try {
    	 //Chargement du pilote JDBC pour MYSQL puis creation de la connection
    	   //DriverManager.registerDriver(new com.mysql.jdbc.Driver());
    	// ou bien 
          Class.forName("com.mysql.cj.jdbc.Driver)");
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sweetloc","root","");
				if (conn!=null)
	System.out.println("Connexion à la base de données a été établie avec succès");
				 else 
				System.out.println("Problème de connexion à la base");
						
       return conn;
       
       }catch(Exception e) {
           System.out.println("--> SQLException : " + e) ;
           
       return null;
       }
    }
    public void filen() {
        try {

            JFileChooser chooser = new JFileChooser();
            chooser.setDialogTitle("Choisir une image png");
            chooser.setApproveButtonText("Ajouter une image");
            chooser.showOpenDialog(null);
            File f = chooser.getSelectedFile();
            filename = f.getAbsolutePath();
            this.path = (filename);
        } catch (Exception e) {
            System.out.println(e);
            JOptionPane.showMessageDialog(null," Veuiler choisir une image ");;
        }
      
}
     public String getp(){
    
    return path;     
        
    }
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    }
    
}}
