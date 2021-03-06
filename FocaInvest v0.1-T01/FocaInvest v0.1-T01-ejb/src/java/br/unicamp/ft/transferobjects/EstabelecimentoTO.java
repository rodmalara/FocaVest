/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.transferobjects;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.*;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
/**
 *
 * @author Matheus
 */
@Entity
@Table(name="T_Estabelecimento")
public class EstabelecimentoTO{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "C_EstabelecimentoID")
    private int estabelecimentoID;
    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "premiacaoID")
    private PremiacaoTO premiacaoTO;
    @Column(name = "C_Cnpj")
    private int cnpj;
    @Column(name ="C_Nome")
    private String nome;
    @Column(name = "C_Senha")
    private String senha;
    @Column(name = "C_Email")
    private String email;
    @Column(name = "C_Telefone")
    private String telefone;
    @Column(name = "C_Role")
    private int role;
    @Column(name = "C_Relevancia")
    private int relevancia;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<EventoTO> listEvento = new ArrayList<>();;
    @Column(name = "C_Descricao")
    private String descricao;
    @Column(name = "C_imgPath")
    private String imgPath;
    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private Set<PontosTO> listPontos = new HashSet<>();
    
    public EstabelecimentoTO(){
    }
    
    public EstabelecimentoTO(PremiacaoTO _premiacaoTO, int _cnpj, String _nome, String _senha, String _email, String _telefone, int _role, int _relevancia){
     this.premiacaoTO = _premiacaoTO;
     this.cnpj = _cnpj;
     this.nome = _nome;
     this.senha = _senha;
     this.email = _email;
     this.telefone = _telefone;
     this.role = _role;
     this.relevancia = _relevancia;
    }
    
    public int getEstabelecimentoID() {
        return estabelecimentoID;
    }
    
    public void setEstabelecimentoID(int estabelecimentoID) {
        this.estabelecimentoID = estabelecimentoID;
    }
    
    public int getCnpj() {
        return cnpj;
    }

    public void setCnpj(int cnpj) {
        this.cnpj = cnpj;
    }
    
     public String getNome() {
        return nome;
    }
     
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    
    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    /**
     * @return the premiacaoTO
     */
    public PremiacaoTO getPremiacaoTO() {
        return premiacaoTO;
    }

    /**
     * @param premiacaoTO the premiacaoTO to set
     */
    public void setPremiacaoTO(PremiacaoTO premiacaoTO) {
        this.premiacaoTO = premiacaoTO;
    }
    
    public void setRelevancia(int relevancia){
        this.relevancia = relevancia;
    }
    
    public int getRelevancia(){
        return this.relevancia;
    }

    /**
     * @return the listEvento
     */
    public List<EventoTO> getListEvento() {
        return listEvento;
    }

    /**
     * @param listEvento the listEvento to set
     */
    public void setListEvento(List<EventoTO> listEvento) {
        this.listEvento = listEvento;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Set<PontosTO> getListPontos() {
        return listPontos;
    }

    public void setListPontos(Set<PontosTO> listPontos) {
        this.listPontos = listPontos;
    }
    
    public void setImgPath(String _imgPath){
        this.imgPath = _imgPath;
    }
    
    public String getImgPath(){
        return this.imgPath;
    }
}