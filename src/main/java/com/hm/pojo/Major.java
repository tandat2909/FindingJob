/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.pojo;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ANHMINH
 */
@Entity
@Table(name = "major")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Major.findAll", query = "SELECT m FROM Major m"),
    @NamedQuery(name = "Major.findById", query = "SELECT m FROM Major m WHERE m.id = :id"),
    @NamedQuery(name = "Major.findByName", query = "SELECT m FROM Major m WHERE m.name = :name")})
public class Major implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Size(max = 50)
    @Column(name = "Name")
    private String name;
    @OneToMany(mappedBy = "majorID")
    private Set<CompanyMajor> companyMajorSet;
    @OneToMany(mappedBy = "majorID")
    private Set<MajorCategory> majorCategorySet;
    @OneToMany(mappedBy = "majorID")
    private Set<JobMajor> jobMajorSet;
    @OneToMany(mappedBy = "majorID")
    private Set<CandidateMajor> candidateMajorSet;
    @OneToMany(mappedBy = "majorID")
    private Set<Category> categorySet;

    public Major() {
    }

    public Major(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @XmlTransient
    public Set<CompanyMajor> getCompanyMajorSet() {
        return companyMajorSet;
    }

    public void setCompanyMajorSet(Set<CompanyMajor> companyMajorSet) {
        this.companyMajorSet = companyMajorSet;
    }

    @XmlTransient
    public Set<MajorCategory> getMajorCategorySet() {
        return majorCategorySet;
    }

    public void setMajorCategorySet(Set<MajorCategory> majorCategorySet) {
        this.majorCategorySet = majorCategorySet;
    }

    @XmlTransient
    public Set<JobMajor> getJobMajorSet() {
        return jobMajorSet;
    }

    public void setJobMajorSet(Set<JobMajor> jobMajorSet) {
        this.jobMajorSet = jobMajorSet;
    }

    @XmlTransient
    public Set<CandidateMajor> getCandidateMajorSet() {
        return candidateMajorSet;
    }

    public void setCandidateMajorSet(Set<CandidateMajor> candidateMajorSet) {
        this.candidateMajorSet = candidateMajorSet;
    }

    @XmlTransient
    public Set<Category> getCategorySet() {
        return categorySet;
    }

    public void setCategorySet(Set<Category> categorySet) {
        this.categorySet = categorySet;
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
        if (!(object instanceof Major)) {
            return false;
        }
        Major other = (Major) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.hm.pojo.Major[ id=" + id + " ]";
    }
    
}
