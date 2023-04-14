package com.hm.pojo;

import com.hm.pojo.CandidateMajor;
import com.hm.pojo.Category;
import com.hm.pojo.CompanyMajor;
import com.hm.pojo.JobMajor;
import com.hm.pojo.MajorCategory;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-03T02:14:52")
@StaticMetamodel(Major.class)
public class Major_ { 

    public static volatile SetAttribute<Major, JobMajor> jobMajorSet;
    public static volatile SetAttribute<Major, CandidateMajor> candidateMajorSet;
    public static volatile SingularAttribute<Major, String> name;
    public static volatile SetAttribute<Major, CompanyMajor> companyMajorSet;
    public static volatile SetAttribute<Major, MajorCategory> majorCategorySet;
    public static volatile SingularAttribute<Major, Integer> id;
    public static volatile SetAttribute<Major, Category> categorySet;

}