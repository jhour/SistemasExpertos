/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package GUI;

import java.util.ArrayList;
import org.jpl7.Query;

/**
 *
 * @author JUAN
 */
public class GUITratamiento extends javax.swing.JFrame {

    /**
     * Creates new form GUITratamiento
     */
    public GUITratamiento(String nombre, String poblacion, String diagnostico) {
        initComponents();
        this.nombre = nombre;
        this.poblacion = poblacion;
        this.diagnostico = diagnostico;
        this.txtName.setText("RESULTADO DE: "+nombre);
        this.txtPoblacion.setText("POBLACION: "+poblacion);
        this.txtDiagnostico.setText("DIAGNOSTICO: "+diagnostico);
        
        cargarTabla();
        cargarTratamiento();
        
        this.setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txtName = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tabla = new javax.swing.JTable();
        txtPoblacion = new javax.swing.JLabel();
        txtDiagnostico = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        txtTratamiento = new javax.swing.JTextArea();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));

        jPanel2.setBackground(new java.awt.Color(59, 131, 189));

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("ALERTA DE ANEMIA");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1, javax.swing.GroupLayout.DEFAULT_SIZE, 63, Short.MAX_VALUE)
                .addContainerGap())
        );

        txtName.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtName.setForeground(new java.awt.Color(51, 51, 255));
        txtName.setText("RESULTADO DE: ");

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 16)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(208, 0, 0));
        jLabel3.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel3.setText("Platos que debe de comer:");

        jLabel4.setFont(new java.awt.Font("Tahoma", 0, 16)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(208, 0, 0));
        jLabel4.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel4.setText("Tratamiento con suplementos:");

        tabla.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Nº", "Plato"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(tabla);
        if (tabla.getColumnModel().getColumnCount() > 0) {
            tabla.getColumnModel().getColumn(0).setResizable(false);
            tabla.getColumnModel().getColumn(0).setPreferredWidth(50);
            tabla.getColumnModel().getColumn(1).setResizable(false);
            tabla.getColumnModel().getColumn(1).setPreferredWidth(325);
        }

        txtPoblacion.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtPoblacion.setForeground(new java.awt.Color(51, 51, 255));
        txtPoblacion.setText("POBLACION: ");

        txtDiagnostico.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        txtDiagnostico.setForeground(new java.awt.Color(51, 51, 255));
        txtDiagnostico.setText("Diagnostico:");

        txtTratamiento.setColumns(20);
        txtTratamiento.setForeground(new java.awt.Color(51, 51, 255));
        txtTratamiento.setRows(5);
        jScrollPane2.setViewportView(txtTratamiento);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(txtName, javax.swing.GroupLayout.PREFERRED_SIZE, 189, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(9, 9, 9))
                    .addComponent(jLabel3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, 380, Short.MAX_VALUE)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(txtPoblacion, javax.swing.GroupLayout.PREFERRED_SIZE, 173, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(txtDiagnostico, javax.swing.GroupLayout.PREFERRED_SIZE, 175, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jScrollPane2))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtName)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtPoblacion)
                    .addComponent(txtDiagnostico))
                .addGap(14, 14, 14)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 153, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 22, Short.MAX_VALUE)
                .addComponent(jLabel4)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 81, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(26, 26, 26))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void cargarTabla(){
        String t1 = "consult('anemia.pl')";
        Query q1 = new Query(t1);
        System.out.println(t1+""+(q1.hasSolution()?"E":"F"));
        
        
        String t2 = "dameAlimento("+diagnostico+", X)";
        Query q2 = new Query(t2);
        
        String accion = q2.oneSolution().get("X").toString();
        System.out.println("acicion: "+accion);
        
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
        
        String matriz[][] = new String[lista.size()][2];
        for (int i = 0; i < lista.size(); i++) {
            for(int j = 0; j < 2; j++){
                matriz[i][0] = String.valueOf(i+1);
                matriz[i][1] = lista.get(i).toString();
            }
        }
        
        tabla.setModel(new javax.swing.table.DefaultTableModel(
            matriz,
            new String [] {
                "Nº", "Plato"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(tabla);
        if (tabla.getColumnModel().getColumnCount() > 0) {
            tabla.getColumnModel().getColumn(0).setResizable(false);
            tabla.getColumnModel().getColumn(0).setPreferredWidth(50);
            tabla.getColumnModel().getColumn(1).setResizable(false);
            tabla.getColumnModel().getColumn(1).setPreferredWidth(325);
        }
    }
    
    private void cargarTratamiento(){
        String t1 = "consult('anemia.pl')";
        Query q1 = new Query(t1);
        System.out.println(t1+""+(q1.hasSolution()?"E":"F"));
        
        //String t2 = "dameTratamiento('A. Ferrofenica', 'primera_infancia', X)";
        String t2 = "dameTratamiento("+diagnostico+", '"+poblacion+"', X)";
        Query q2 = new Query(t2);
        
        String accion = q2.oneSolution().get("X").toString();
        //this.txtTratamiento.setText(accion);
        System.out.println(accion);
        
        String valores = accion.substring(1, accion.length() - 1);

        // Divide la cadena en elementos individuales usando la coma como delimitador
        String[] elementos = valores.split(", ");
        String aux = "";
        // Crea un ArrayList y agrega cada valor a la lista
        ArrayList<String> lista = new ArrayList<>();
        for (String elemento : elementos) {
            // Elimina las comillas simples alrededor de cada valor
            String valor = elemento.replaceAll("'", "");
            lista.add(valor);
            aux += valor + "\n";
        }

        // Imprime la lista resultante
        System.out.println(lista);
        this.txtTratamiento.setText(aux);
        
        
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable tabla;
    private javax.swing.JLabel txtDiagnostico;
    private javax.swing.JLabel txtName;
    private javax.swing.JLabel txtPoblacion;
    private javax.swing.JTextArea txtTratamiento;
    // End of variables declaration//GEN-END:variables
    public String nombre = "";
    public String poblacion = "";
    public String diagnostico = "";
}
