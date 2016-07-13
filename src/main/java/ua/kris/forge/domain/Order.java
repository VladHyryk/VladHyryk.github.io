package ua.kris.forge.domain;

import javax.persistence.*;

@Entity
@Table (name = "userorder") //Таблица с перечнем брони из БД.
public class Order {
    @Id
    @Column(name = "id")
    @GeneratedValue
    private Integer id;
    @Column(name = "necksize")
    private Integer necksize;
    @Column(name = "chestsize")
    private Integer chestsize;
    @Column(name = "stomachmeasurement")
    private Integer stomachmeasurement;
    @Column(name = "waistsize")
    private Integer waistsize;
    @Column(name = "necktowaist")
    private Integer necktowaist;
    @Column(name = "sleevemeasurement")
    private Integer sleevemeasurement;
    @Column(name = "risemeasurement")
    private Integer risemeasurement;
    @Column(name = "inseamlength")
    private Integer inseamlength;
    @Column(name = "thighsize")
    private Integer thighsize;
    @Column(name = "calfsize")
    private Integer calfsize;
    @Column(name = "orderimg")
    private String orderimg;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNecksize() {
        return necksize;
    }

    public void setNecksize(Integer necksize) {
        this.necksize = necksize;
    }

    public Integer getChestsize() {
        return chestsize;
    }

    public void setChestsize(Integer chestsize) {
        this.chestsize = chestsize;
    }

    public Integer getStomachmeasurement() {
        return stomachmeasurement;
    }

    public void setStomachmeasurement(Integer stomachmeasurement) {
        this.stomachmeasurement = stomachmeasurement;
    }

    public Integer getWaistsize() {
        return waistsize;
    }

    public void setWaistsize(Integer waistsize) {
        this.waistsize = waistsize;
    }

    public Integer getNecktowaist() {
        return necktowaist;
    }

    public void setNecktowaist(Integer necktowaist) {
        this.necktowaist = necktowaist;
    }

    public Integer getSleevemeasurement() {
        return sleevemeasurement;
    }

    public void setSleevemeasurement(Integer sleevemeasurement) {
        this.sleevemeasurement = sleevemeasurement;
    }

    public Integer getRisemeasurement() {
        return risemeasurement;
    }

    public void setRisemeasurement(Integer risemeasurement) {
        this.risemeasurement = risemeasurement;
    }

    public Integer getInseamlength() {
        return inseamlength;
    }

    public void setInseamlength(Integer inseamlength) {
        this.inseamlength = inseamlength;
    }

    public Integer getThighsize() {
        return thighsize;
    }

    public void setThighsize(Integer thighsize) {
        this.thighsize = thighsize;
    }

    public Integer getCalfsize() {
        return calfsize;
    }

    public void setCalfsize(Integer calfsize) {
        this.calfsize = calfsize;
    }

    public String getOrderimg() {
        return orderimg;
    }

    public void setOrderimg(String orderimg) {
        this.orderimg = orderimg;
    }
}
