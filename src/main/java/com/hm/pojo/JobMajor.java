/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ANHMINH
 */
@Entity
@Table(name = "job_major")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "JobMajor.findAll", query = "SELECT j FROM JobMajor j"),
    @NamedQuery(name = "JobMajor.findById", query = "SELECT j FROM JobMajor j WHERE j.id = :id"),
    @NamedQuery(name = "JobMajor.findByPoint", query = "SELECT j FROM JobMajor j WHERE j.point = :point")})
public class JobMajor implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "Point")
    private Double point;
    @JoinColumn(name = "Job_ID", referencedColumnName = "ID")
    @ManyToOne
    private Job jobID;
    @JoinColumn(name = "Major_ID", referencedColumnName = "ID")
    @ManyToOne
    private Major majorID;

    public JobMajor() {
    }

    public JobMajor(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Double getPoint() {
        return point;
    }

    public void setPoint(Double point) {
        this.point = point;
    }

    public Job getJobID() {
        return jobID;
    }

    public void setJobID(Job jobID) {
        this.jobID = jobID;
    }

    public Major getMajorID() {
        return majorID;
    }

    public void setMajorID(Major majorID) {
        this.majorID = majorID;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof JobMajor)) {
            return false;
        }
        JobMajor other = (JobMajor) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hm.pojo.JobMajor[ id=" + id + " ]";
    }
    
}
