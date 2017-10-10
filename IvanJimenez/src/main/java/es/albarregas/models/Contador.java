/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.models;

import java.io.Serializable;

/**
 *
 * @author Ivan
 */
public class Contador implements Serializable{
    
    private int contador;
    
    public void setContador(int c){
        contador=c;
    }
    public int getContador(){
        return contador;
    }
    
}
