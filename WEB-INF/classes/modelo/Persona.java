package modelo;
import java.io.*;

//javaBeans

public class Persona implements Serializable{
	private String nombre;
	private int edad;
	
	// constructor vacio necesario  
	public Persona(){
		nombre = "nn";
		edad = 0;
	};
	
	public Persona(String nombre, int edad){
		this.nombre = nombre;
		this.edad = edad;
	};
	
	public void setNombre(String nombre){
		this.nombre = nombre;
	};
	
	public void setEdad(int edad){
		this.edad = edad;
	};
	
	public String getNombre(){
		return this.nombre;
	};
	
	public int getEdad(){
		return this.edad;
	};
	public String toString(){
		return (nombre + "" + edad);
	}

}