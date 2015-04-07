/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.transferobjects;

import java.util.ArrayList;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

/**
 *
 * @author Matheus
 */
public class ConsumidorTO {
    private int consumidorID;
    private String nome;
    private String senha;
    private String email;
    private String telefone;
    private String rg;
    private String cpf;
    private int role;
    
    @ManyToMany(fetch = FetchType.LAZY)
    private ArrayList<EventoTO> ListaReservas = new ArrayList<EventoTO> ();
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "C_ConsumidorID")
    public int getConsumidorID() {
        return consumidorID;
    }

   public void setConsumidorID(int consumidorID) {
        this.consumidorID = consumidorID;
    }
    
    @Column(name = "C_Nome")
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

    @Column(name = "C_Rg")
    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    @Column(name = "C_Cpf")
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    @Column(name = "C_Role")
    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    } 
}
