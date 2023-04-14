package com.hm.pojo;

import com.hm.pojo.Job;
import com.hm.pojo.Major;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-03T02:14:52")
@StaticMetamodel(JobMajor.class)
public class JobMajor_ { 

    public static volatile SingularAttribute<JobMajor, Job> jobID;
    public static volatile SingularAttribute<JobMajor, Major> majorID;
    public static volatile SingularAttribute<JobMajor, Integer> id;
    public static volatile SingularAttribute<JobMajor, Double> point;

}