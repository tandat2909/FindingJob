package com.hm.pojo;

import com.hm.pojo.Candidate;
import com.hm.pojo.Category;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-03T02:14:52")
@StaticMetamodel(CandidateCategory.class)
public class CandidateCategory_ { 

    public static volatile SingularAttribute<CandidateCategory, Category> cateID;
    public static volatile SingularAttribute<CandidateCategory, Integer> id;
    public static volatile SingularAttribute<CandidateCategory, Candidate> candidateID;

}