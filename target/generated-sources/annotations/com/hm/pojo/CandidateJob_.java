package com.hm.pojo;

import com.hm.pojo.Candidate;
import com.hm.pojo.CurriculumVitae;
import com.hm.pojo.Job;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-03T02:14:52")
@StaticMetamodel(CandidateJob.class)
public class CandidateJob_ { 

    public static volatile SingularAttribute<CandidateJob, CurriculumVitae> cvId;
    public static volatile SingularAttribute<CandidateJob, Job> jobID;
    public static volatile SingularAttribute<CandidateJob, Integer> isLiked;
    public static volatile SingularAttribute<CandidateJob, Date> appliedDate;
    public static volatile SingularAttribute<CandidateJob, Integer> isApplied;
    public static volatile SingularAttribute<CandidateJob, Integer> id;
    public static volatile SingularAttribute<CandidateJob, Candidate> candidateID;

}