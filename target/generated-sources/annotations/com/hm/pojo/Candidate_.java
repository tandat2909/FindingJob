package com.hm.pojo;

import com.hm.pojo.CandidateCategory;
import com.hm.pojo.CandidateCompany;
import com.hm.pojo.CandidateJob;
import com.hm.pojo.Comment;
import com.hm.pojo.CurriculumVitae;
import com.hm.pojo.Major;
import com.hm.pojo.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-03T02:14:52")
@StaticMetamodel(Candidate.class)
public class Candidate_ { 

    public static volatile SetAttribute<Candidate, Comment> commentList;
    public static volatile SingularAttribute<Candidate, String> city;
    public static volatile SetAttribute<Candidate, CandidateJob> candidateJobSet;
    public static volatile SetAttribute<Candidate, CandidateCompany> candidateCompanySet;
    public static volatile SingularAttribute<Candidate, String> sex;
    public static volatile SingularAttribute<Candidate, String> degree;
    public static volatile SetAttribute<Candidate, CandidateCategory> candidateCategorySet;
    public static volatile SingularAttribute<Candidate, String> description;
    public static volatile SingularAttribute<Candidate, Date> dateOfBirth;
    public static volatile SingularAttribute<Candidate, String> avatar;
    public static volatile SingularAttribute<Candidate, User> userID;
    public static volatile SetAttribute<Candidate, Major> majors;
    public static volatile SingularAttribute<Candidate, String> major;
    public static volatile SingularAttribute<Candidate, String> phone;
    public static volatile SingularAttribute<Candidate, Integer> id;
    public static volatile SingularAttribute<Candidate, String> fullname;
    public static volatile SetAttribute<Candidate, CurriculumVitae> curriculumVitaeSet;
    public static volatile SingularAttribute<Candidate, String> email;

}