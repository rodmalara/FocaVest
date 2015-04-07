/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.transferobjects;

import java.util.ArrayList;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.Entity;

/**
 *
 * @author Matheus
 */
@Entity
@Table(name="T_Estabelecimento")
public class EstabelecimentoTO{
    private int estabelecimentoID;
    private int cnpj;
    private String nome;
    private String senha;
    private String email;
    private String telefone;
    private int role;
    //ArrayList<Evento> listEvento = new ArrayList<Evento>)();
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "C_EstabelecimentoID")
    public int getEstabelecimentoID() {
        return estabelecimentoID;
    }
    
    public void setEstabelecimentoID(int estabelecimentoID) {
        this.estabelecimentoID = estabelecimentoID;
    }

    @Column(name = "C_Cnpj")
    public int getCnpj() {
        return cnpj;
    }

    public void setCnpj(int cnpj) {
        this.cnpj = cnpj;
    }
    
    @Column(name ="C_Nome")
     public String getNome() {
        return nome;
    }
     
    public void setNome(String nome) {
        this.nome = nome;
    }

    @Column(name = "C_Senha")
    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    @Column(name = "C_Email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "C_Telefone")
    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }    
    
    @Column(name = "C_Role")
    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
}