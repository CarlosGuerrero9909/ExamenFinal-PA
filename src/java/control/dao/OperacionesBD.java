/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package control.dao;

import control.conexion.Conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Usuario
 */
public class OperacionesBD {

	// atributos de clase necesarios para las operaciones
	private Connection con = null;
	private Statement st = null;
	private ResultSet rs = null;

	/**
	 * constructor para iniciar la conexion
	 */
	public OperacionesBD() {
		try {
			// iniciar conexion
			con = Conexion.getConexion();
		} catch (SQLException ex) {
			System.out.println("No se pudo realizar la conexion");
		}
	}

	/**
	 * metodo encargado de insertar datos a la BD que llegan como parametros
	 *
	 * @param n
	 * @param e
	 */
	public void insertarDatos(String n, String e) {
		// variable para control de codigo del cada vez que haya un ultimo registro
		int ultimo = 0;

		String consulta = "SELECT COUNT(*) FROM horoscopomes";

		try {
			// iniciar y crear statement a partir de la conexion
			st = con.createStatement();
			// iniciar resultSet para primero realizar una consulta de los codigos de cada registro
			// y despues asignar uno al registro que se va a insertar
			rs = st.executeQuery(consulta);

			// recorrer BD mientras haya un registro siguiente y asignarle un codigo al ultimo registro
			while (rs.next()) {
				ultimo = rs.getInt(1);
			}

			st = con.createStatement();

			// intruccion de insercion a la BD codigo-n-e
			String insercion = "INSERT INTO horoscopomes VALUES('" + (ultimo + 1) + "','" + n + "','" + e + "')";

			// insercion por parte del statement (update)
			st.executeUpdate(insercion);
		} catch (SQLException ex) {
			System.out.print("No se pudo realizar la insercion");
		}
	}

	/**
	 * metodo encargado de consultar datos del horoscopo del dia a la BD y retornarlos
	 *
	 * @return
	 */
	public String consultarHoroscopoDia(String signo) {
		// variable que se retornara como respuesta
		String rta = "";

		String consulta = "SELECT * FROM horoscopodia where signo like '" + signo + "'";

		try {
			// iniciar y crear statement a partir de la conexion
			st = con.createStatement();
			// iniciar resultSet con la respectiva consulta
			rs = st.executeQuery(consulta);
			
			// recorrer BD mientras haya un registro siguiente 
			while (rs.next()) {
				String prediccion;
				prediccion = rs.getString("prediccion");
				rta = prediccion + "<br>";
			}

		} catch (SQLException ex) {
			System.out.println("No se pudo realizar la consulta");
		}
		return rta;
	}
	
	/**
	 * metodo encargado de consultar datos del horoscopo del mes a la BD y retornarlos
	 *
	 * @return
	 */
	public String consultarHoroscopoMes(String signo) {
		// variable que se retornara como respuesta
		String rta = "";
		String consulta = "SELECT * FROM horoscopomes where signo like '" + signo + "'";

		try {
			// iniciar y crear statement a partir de la conexion
			st = con.createStatement();
			// iniciar resultSet con la respectiva consulta
			rs = st.executeQuery(consulta);
			
			// recorrer BD mientras haya un registro siguiente 
			while (rs.next()) {
				String prediccion;
				prediccion = rs.getString("prediccion");
				rta = prediccion + "<br>";
			}

		} catch (SQLException ex) {
			System.out.println("No se pudo realizar la consulta");
		}
		return rta;
	}
	
	/**
	 * metodo encargado de consultar datos del horoscopo del año a la BD y retornarlos
	 *
	 * @return
	 */
	public String consultarHoroscopoAño(String signo) {
		// variable que se retornara como respuesta
		String rta = "";
		String consulta = "SELECT * FROM horoscopoaño where signo like '" + signo + "'";

		try {
			// iniciar y crear statement a partir de la conexion
			st = con.createStatement();
			// iniciar resultSet con la respectiva consulta
			rs = st.executeQuery(consulta);
			
			// recorrer BD mientras haya un registro siguiente 
			while (rs.next()) {
				String prediccion;
				prediccion = rs.getString("prediccion");
				rta = prediccion + "<br>";
			}

		} catch (SQLException ex) {
			System.out.println("No se pudo realizar la consulta");
		}
		return rta;
	}

	/**
	 * metodo encargado de cerrar conexion a la BD
	 *
	 * @throws SQLException
	 */
	public void cerrarCnx() throws SQLException {
		rs.close();
		rs = null;
		st.close();
		st = null;
		con.close();
		con = null;
	}
}
