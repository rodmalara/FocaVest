/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.transferobjects;

import br.unicamp.ft.transferobjects.ConsumidorTO;
import java.util.ArrayList;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Matheus
 */
@Entity
@Table(name="T_EventoTO")
public class EventoTO {
    private int eventoID;
    private String nome;
    private String descricao;
    private int qtdPessoa;
    private Date data;
    private float preco;
   
    @ManyToOne
    @JoinColumn(name = "C_EstabelecimentoID")
    private int estabelecimentoID;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "C_EventoID")
    public int getEventoID() {
        return eventoID;
    }

    public void setEventoID(int eventoID) {
        this.eventoID = eventoID;
    }
    
    @Column(name = "C_Nome")
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    @Column(name = "C_Descricao")
    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    @Column(name = "C_QtdPessoa")
    public int getQtdPessoa() {
        return qtdPessoa;
    }

    public void setQtdPessoa(int qtdPessoa) {
        this.qtdPessoa = qtdPessoa;
    }

    @Column(name = "C_Data")
    public Date getData() {
        return data;
    }

    public void setData(Date Data) {
        this.data = Data;
    }

    @Column(name = "C_Preco")
    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }
    
    // METODOS
    public void cadastrarEvento()
    {
        
    }
            
    public void alterarEvento()
    {
        
    }
    
    public void consultarEvento()
    {
        
    }
    
    public void deletarEvento()
    {
        
    }
    
    public void inserePessoa()
    {
        
    }
    
    public void removePessoa()
    {
        
    }
    
    public void consultarPessoa()
    {
        
    }
}

