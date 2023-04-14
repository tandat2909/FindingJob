package com.hm.pojo;

import com.hm.pojo.CandidateJob;
import com.hm.pojo.Company;
import com.hm.pojo.JobCategory;
import com.hm.pojo.Major;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-03T02:14:52")
@StaticMetamodel(Job.class)
public class Job_ { 

    public static volatile SingularAttribute<Job, String> degreeRequired;
    public static volatile SingularAttribute<Job, Date> endDate;
    public static volatile SingularAttribute<Job, String> city;
    public static volatile SingularAttribute<Job, Integer> probationaryPeriod;
    public static volatile SingularAttribute<Job, String> description;
    public static volatile SingularAttribute<Job, String> type;
    public static volatile SingularAttribute<Job, String> sexRequired;
    public static volatile SingularAttribute<Job, Company> companyID;
    public static volatile SetAttribute<Job, Major> majors;
    public static volatile SingularAttribute<Job, Integer> isContinute;
    public static volatile SingularAttribute<Job, Integer> experienceRequired;
    public static volatile SingularAttribute<Job, Integer> id;
    public static volatile SingularAttribute<Job, Integer> ageTo;
    public static volatile SingularAttribute<Job, Long> salaryTo;
    public static volatile SingularAttribute<Job, Integer> quantity;
    public static volatile SingularAttribute<Job, String> address;
    public static volatile SetAttribute<Job, CandidateJob> candidateJobSet;
    public static volatile SingularAttribute<Job, Integer> isChecked;
    public static volatile SingularAttribute<Job, Long> salaryFrom;
    public static volatile SingularAttribute<Job, String> benefit;
    public static volatile SingularAttribute<Job, Date> createdDate;
    public static volatile SingularAttribute<Job, String> name;
    public static volatile SingularAttribute<Job, Integer> ageFrom;
    public static volatile SingularAttribute<Job, String> position;
    public static volatile SetAttribute<Job, JobCategory> jobCategorySet;

}