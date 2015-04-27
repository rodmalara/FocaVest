/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package HibernateStudies.OneToOne;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Matheus
 */
@Entity
@Table(name = "Pessoa")
public class Pessoa{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "pessoa_id")
    private int pessoaID;  
    @Column(name = "nome")
    private String nome;
    
    public Pessoa(){}
    
    public Pessoa(String _nome){
        this.nome = _nome;
    }

    /**
     * @return the pessoaID
     */
    public int getPessoaID() {
        return pessoaID;
    }

    /**
     * @param pessoaID the pessoaID to set
     */
    public void setPessoaID(int pessoaID) {
        this.pessoaID = pessoaID;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    
}
