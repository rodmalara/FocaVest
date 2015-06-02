/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.unicamp.ft.transferobjects;

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
@Table(name = "T_Pontos_Estabelecimento_Consumidor")
public class PontosTO {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "C_pontosID")
  private int pontosID;
  @ManyToOne
  @JoinColumn(name = "C_consumidorID")
  private ConsumidorTO consumidorTO;
  @ManyToOne
  @JoinColumn(name = "C_estabelecimentoID")
  private EstabelecimentoTO estabelecimentoTO;
  @Column(name = "C_totalPontos")
  private int totalPontos;

  public PontosTO(){}
  
  public PontosTO(EstabelecimentoTO _estabelecimentoTO, ConsumidorTO _consumidorTO,
  int _totalPontos){
      this.estabelecimentoTO = _estabelecimentoTO;
      this.consumidorTO = _consumidorTO;
      this.totalPontos = _totalPontos;
  }
  
    public int getPontosID() {
        return pontosID;
    }

    public void setPontosID(int pontosID) {
        this.pontosID = pontosID;
    }

    public ConsumidorTO getConsumidorTO() {
        return consumidorTO;
    }

    public void setConsumidorTO(ConsumidorTO consumidorTO) {
        this.consumidorTO = consumidorTO;
    }

    public EstabelecimentoTO getEstabelecimentoTO() {
        return estabelecimentoTO;
    }

    public void setEstabelecimentoTO(EstabelecimentoTO estabelecimentoTO) {
        this.estabelecimentoTO = estabelecimentoTO;
    }

    public int getTotalPontos() {
        return totalPontos;
    }

    public void setTotalPontos(int totalPontos) {
        this.totalPontos = totalPontos;
    }

  
  
}
