/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.transferobjects;

import java.util.ArrayList;
import java.util.List;
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
    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    List<EventoTO> listEvento;
    
    public EstabelecimentoTO(){
    }
    
    public EstabelecimentoTO(PremiacaoTO _premiacaoTO, int _cnpj, String _nome, String _senha, String _email, String _telefone, int _role){
     listEvento = new ArrayList<>();
     this.premiacaoTO = _premiacaoTO;
     this.cnpj = _cnpj;
     this.nome = _nome;
     this.senha = _senha;
     this.email = _email;
     this.telefone = _telefone;
     this.role = _role;
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
}