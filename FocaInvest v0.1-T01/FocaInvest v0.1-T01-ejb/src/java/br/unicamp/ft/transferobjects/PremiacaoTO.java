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
@Table(name = "T_Premiacao")
public class PremiacaoTO {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "C_PremiacaoID")
    private int premiacaoID;
    @Column(name = "C_PontoBrinde")
    private int pontoBrinde;
    @Column(name = "C_Nome")
    private String nome;
    
    public PremiacaoTO() {
    }

    public PremiacaoTO(String _nome, int _pontoBrinde) {
        this.nome = _nome;
        this.pontoBrinde = _pontoBrinde;
    }

    public void setPremiacaoID(int premiacaoID) {
        this.premiacaoID = premiacaoID;
    }

    public void setPontoBrinde(int pontoBrinde) {
        this.pontoBrinde = pontoBrinde;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getPremiacaoID() {
        return premiacaoID;
    }

    public int getPontoBrinde() {
        return pontoBrinde;
    }

    public String getNome() {
        return nome;
    }
}