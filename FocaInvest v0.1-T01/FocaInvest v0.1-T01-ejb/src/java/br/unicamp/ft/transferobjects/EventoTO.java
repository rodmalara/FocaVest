/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.transferobjects;

import java.text.ParseException;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author Matheus
 */
@Entity
@Table(name="T_Evento")
public class EventoTO {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "C_EventoID")
    private int eventoID;
    @Column(name = "C_Nome")
    private String nome;
    @Column(name = "C_Descricao")
    private String descricao;
    @Column(name = "C_QtdPessoa")
    private int qtdPessoa;
    @Temporal(TemporalType.DATE)
    @Column(name = "C_Data")
    private Date data;
    @Column(name = "C_Preco")
    private float preco;
    @ManyToOne
    @JoinColumn(name = "estabelecimentoID")
    private EstabelecimentoTO estabelecimentoTO;

    
    public EventoTO(){
       
    }
    
    public EventoTO(EstabelecimentoTO estabelecimentoTO, String nome, String descricao, int qtdPessoa, Float preco, Date data) throws ParseException {
        //DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
        //Date typedata = (java.util.Date)formatter.parse(data);  
        
        this.nome = nome;
        this.descricao = descricao;
        this.qtdPessoa = qtdPessoa;
        //this.data = typedata;
        this.data = (Date) data;
        this.preco = preco;
        this.estabelecimentoTO = estabelecimentoTO;
    }
    

    public EventoTO(Object object) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     * @return the estabelecimentoTO
     */
    public EstabelecimentoTO getEstabelecimentoTO() {
        return estabelecimentoTO;
    }

    /**
     * @param estabelecimentoTO the estabelecimentoTO to set
     */
    public void setEstabelecimentoTO(EstabelecimentoTO estabelecimentoTO) {
        this.estabelecimentoTO = estabelecimentoTO;
    }
    
    public int getEventoID() {
        return eventoID;
    }

    public void setEventoID(int eventoID) {
        this.eventoID = eventoID;
    }
        
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    
    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getQtdPessoa() {
        return qtdPessoa;
    }

    public void setQtdPessoa(int qtdPessoa) {
        this.qtdPessoa = qtdPessoa;
    }

    
    public Date getData() {
        return data;
    }

    public void setData(Date Data) {
        this.data = Data;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }
}

