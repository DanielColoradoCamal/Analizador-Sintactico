/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package analizadorlexico;

import java.io.File;
import  static analizadorlexico.Tokens.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import jflex.exceptions.SilentExit;

public class AnalizadorLexico {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        try {
            jflex.Main.generate(args);
        } catch (SilentExit ex) {
            Logger.getLogger(AnalizadorLexico.class.getName()).log(Level.SEVERE, null, ex);
        }
       
       
       
    }
 
}
