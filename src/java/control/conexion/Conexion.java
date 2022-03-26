/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package control.conexion;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Usuario
 */
public class Conexion {
	
	// atributos de clase necesarios para crear la conexion
	private static Connection cn = null;
	private static Driver driver = new org.apache.derby.jdbc.ClientDriver();
	private static String URLBD = "jdbc:derby://localhost:1527/horoscopodb";
	private static String usuario = "horoscopodb";
	private static String contrasena = "horoscopodb";
	
	/**
	 * metodo encargado de obtener conexion
	 * @return
	 * @throws SQLException 
	 */
	public static Connection getConexion() throws SQLException {
		// registrar driver
		DriverManager.registerDriver(driver);
		// obtener conexion del driver registrado
		cn = DriverManager.getConnection(URLBD, usuario, contrasena);
		//retornar la conexion
		return cn;
	}
}
