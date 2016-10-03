/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pweb.data;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;
import pweb.business.Libro;

/**
 *
 * @author Fortress of Solitude
 */
public class LibroDB {
    
    public static Libro getLibro(String codigo, String filepath) {
        try 
        {
            File file = new File(filepath);
            BufferedReader in = new BufferedReader(
                                new FileReader(file));

            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                String codigoLibro = t.nextToken();
                if (codigo.equalsIgnoreCase(codigoLibro)) {
                    
                    String titulo = t.nextToken();                    
                    String autor = t.nextToken();
                    String genero = t.nextToken();
                    String precioAsString = t.nextToken();
                    double precio = Double.parseDouble(precioAsString);
                    
                    Libro l = new Libro();
                    l.setCodigo(codigo);
                    l.setTitulo(titulo);                    
                    l.setAutor(autor);
                    l.setGenero(genero);
                    l.setPrecio(precio);
                    in.close();
                    return l;
                }
                line = in.readLine();
            }
            in.close();
            return null;
        } catch (IOException e) {
            System.err.println(e);
            return null;
        }
    }
    
    public static ArrayList<Libro> getLibros(String filepath) {
        ArrayList<Libro> libros = new ArrayList<Libro>();
        
        File file = new File(filepath);
        try 
        {
            BufferedReader in = new BufferedReader(
                                new FileReader(file));

            String line = in.readLine();
            while (line != null) 
            {
                StringTokenizer t = new StringTokenizer(line, "|");
                String codigo = t.nextToken();
                String titulo = t.nextToken();
                String autor = t.nextToken();
                String genero = t.nextToken();
                
                String precioAsString = t.nextToken();
                double precio = Double.parseDouble(precioAsString);
                
                Libro l = new Libro();
                l.setCodigo(codigo);
                l.setTitulo(titulo);
                l.setAutor(autor);
                l.setGenero(genero);
                l.setPrecio(precio);                
                
                libros.add(l);
                line = in.readLine();
            }
            in.close();
            return libros;
        } catch (IOException e) {
            System.err.println(e);
            return null;
        }
    }
    
}
