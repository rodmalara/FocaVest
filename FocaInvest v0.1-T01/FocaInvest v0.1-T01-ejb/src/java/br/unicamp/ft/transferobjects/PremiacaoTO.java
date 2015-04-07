/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.transferobjects;

/**
 *
 * @author Matheus
 */
 
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.*;
 
/**
*
* @author Matheus
*/
 
@Entity
@Table(name="T_Premiacao")
public class PremiacaoTO {
    
   private int premiacaoID;
   private int pontoBrinde;
   private String nome;
   private int estabelecimentoID;
   private int consumidorID;
    
    public void setPremiacaoID(int premiacaoID) {
        this.premiacaoID = premiacaoID;
    }

    public void setPontoBrinde(int pontoBrinde) {
        this.pontoBrinde = pontoBrinde;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "C_PremiacaoID")
    public int getPremiacaoID() {
        return premiacaoID;
    }

    @ManyToOne
    @JoinColumn(name = "C_EstabelecimentoID")
    public int getEstabelecimentoID() {
        return estabelecimentoID;
    }

    @ManyToOne
    @JoinColumn(name = "C_ConsumidorID")
    public int getConsumidorID() {
        return consumidorID;
    }

    public void setConsumidorID(int consumidorID) {
        this.consumidorID = consumidorID;
    }

    public void setEstabelecimentoID(int estabelecimentoID) {
        this.estabelecimentoID = estabelecimentoID;
    }

    @Column(name = "C_PontoBrinde")
    public int getPontoBrinde() {
        return pontoBrinde;
    }

    @Column(name = "C_Nome")
    public String getNome() {
        return nome;
    }
}
