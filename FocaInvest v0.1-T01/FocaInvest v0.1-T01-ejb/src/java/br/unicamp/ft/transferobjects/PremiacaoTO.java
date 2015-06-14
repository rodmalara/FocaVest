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
import java.util.Date;
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
    @Temporal(TemporalType.DATE)
    @Column(name = "C_DataInicio")
    private Date dataInicio;
    @Temporal(TemporalType.DATE)
    @Column(name = "C_DataFinal")
    private Date dataFinal;
    @ManyToOne
    @JoinColumn(name = "estabelecimentoID")
    private EstabelecimentoTO estabelecimentoTO;
    @Column(name = "C_imgPath")
    private String imgPath;
    
    public PremiacaoTO() {
    }

    public PremiacaoTO(EstabelecimentoTO estabelecimentoTO, int pontoBrinde, String nome, Date dataInicio, Date dataFinal, String imgPath) {
        this.pontoBrinde = pontoBrinde;
        this.nome = nome;
        this.dataInicio = (Date) dataInicio;
        this.dataFinal = (Date) dataFinal;
        this.estabelecimentoTO = estabelecimentoTO;
        this.imgPath = imgPath;
    }



    public Date getDataInicio() {
        return dataInicio;
    }

    public void setDataInicio(Date dataInicio) {
        this.dataInicio = dataInicio;
    }

    public Date getDataFinal() {
        return dataFinal;
    }

    public void setDataFinal(Date dataFinal) {
        this.dataFinal = dataFinal;
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
    
    public void setImgPath(String _imgPath){
        this.imgPath = _imgPath;
    }
    
    public String getImgPath(){
        return this.imgPath;
    }
}