/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.unicamp.ft.transferobjects;

import br.unicamp.ft.dao.ConsumidorDAO;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.MappedSuperclass;
import javax.persistence.Table;

/**
 *
 * @author Matheus
 */
@Entity
@Table(name = "T_Consumidor")
public class ConsumidorTO {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "C_ConsumidorID")
    private int consumidorID;
    @Column(name = "C_Nome")
    private String nome;
    @Column(name = "C_Senha")
    private String senha;
    @Column(name = "C_Email")
    private String email;
    @Column(name = "C_Telefone")
    private String telefone;
    @Column(name = "C_Rg")
    private String rg;
    @Column(name = "C_Cpf")
    private String cpf;
    @Column(name = "C_Role")
    private int role;
    @ManyToMany
    @JoinTable(name = "T_Consumidor_Evento", joinColumns
            = {
                @JoinColumn(name = "consumidorID")}, inverseJoinColumns
            = {
                @JoinColumn(name = "eventoID")})
    private Set<EventoTO> ListaReservas;

    public ConsumidorTO() {
        this.ListaReservas = new HashSet<>();
    }

    public ConsumidorTO(String _nome, String _senha, String _email, String _telefone, String _rg, String _cpf, int _role) {
        this.ListaReservas = new HashSet<>();
        this.nome = _nome;
        this.senha = _senha;
        this.email = _email;
        this.telefone = _telefone;
        this.rg = _rg;
        this.cpf = _cpf;
        this.role = _role;
    }

    public int getConsumidorID() {
        return consumidorID;
    }

    public void setConsumidorID(int consumidorID) {
        this.consumidorID = consumidorID;
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

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
}
