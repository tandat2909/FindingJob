package com.hm.pojo;

import com.hm.pojo.Candidate;
import com.hm.pojo.Company;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-03T02:14:52")
@StaticMetamodel(CandidateCompany.class)
public class CandidateCompany_ { 

    public static volatile SingularAttribute<CandidateCompany, Company> companyID;
    public static volatile SingularAttribute<CandidateCompany, Integer> id;
    public static volatile SingularAttribute<CandidateCompany, Candidate> candidateID;

}