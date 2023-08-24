
import java.util.ArrayList;
import org.jpl7.*;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author JUAN
 */
public class Main {
    
    public static void main(String[] args) {
        
        String t1 = "consult('anemia.pl')";
        Query q1 = new Query(t1);
        System.out.println(t1+""+(q1.hasSolution()?"E":"F"));
        
        String t2 = "dameTratamiento('A. Ferrofenica', 'primera_infancia', X)";
        Query q2 = new Query(t2);
        
        String accion = q2.oneSolution().get("X").toString();
        System.out.println(accion);
        
        //String listaSintomas = "['fatiga', 'dolor de cabeza', 'debilidad']";

        // Elimina los corchetes '[' y ']' del inicio y el final de la cadena
        String valores = accion.substring(1, accion.length() - 1);

        // Divide la cadena en elementos individuales usando la coma como delimitador
        String[] elementos = valores.split(", ");

        // Crea un ArrayList y agrega cada valor a la lista
        ArrayList<String> lista = new ArrayList<>();
        for (String elemento : elementos) {
            // Elimina las comillas simples alrededor de cada valor
            String valor = elemento.replaceAll("'", "");
            lista.add(valor);
        }

        // Imprime la lista resultante
        System.out.println(lista);
        
        /*
        
        
        
        /*
        Query q = new Query("consult('anemia.pl')");
        System.out.println("Cargando archivo Prolog: " + (q.hasSolution() ? "Éxito" : "Fallo"));
        
        String listaSintomas = "['prueba', 'prueba2']";
        String poblacion = "prueba3";
        String consulta = "indicador_de_anemiaGeneral(" + listaSintomas + ", '" + poblacion + "')";
        
        Query query = new Query(consulta);
        
        // Verificar si la consulta tuvo éxito
        if (query.hasSolution()) {
            Term resultado = query.oneSolution().get("X");
            System.out.println("Resultado para indicador_de_anemiaGeneral: Verdadero");
        } else {
            System.out.println("Resultado para indicador_de_anemiaGeneral: Falso");
        }*/
        
        /*
        Query q = new Query("consult('anemia.pl')");
        System.out.println("Cargando archivo Prolog: " + (q.hasSolution() ? "Éxito" : "Fallo"));
        
        String listaSintomasl = "['fatiga', 'cansancio_rapido', 'mareos', 'alteración_de_sueño']";
        
        String listaSintomas = "['fatiga', 'cansancio_rapido', 'mareos', 'alteración_de_sueño', 'necesidad_indispensable_de_mover_piernas', 'sensación_de_cansancio', 'piel_seca', 'uña_quebradiza', 'uña_fragil', 'uña_palida', 'estreñimiento']";
        
        String poblacion = "infancia";
        String consulta = "dameLaEnfermedad(" + listaSintomas + ", '" + poblacion + "')";
        Query query = new Query(consulta);

        // Ejecutar la consulta
        query.hasSolution();

        // Consultar el resultado almacenado en la base de conocimientos
        Query consultaResultado = new Query("resultado_anemia(Resultado).");
        if (consultaResultado.hasSolution()) {
            Term resultado = consultaResultado.oneSolution().get("Resultado");
            System.out.println("Resultado: " + resultado);
        } else {
            System.out.println("No se encontró resultado.");
        }*/
    }
    
}
