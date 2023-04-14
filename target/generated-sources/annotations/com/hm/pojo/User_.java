package com.hm.pojo;

import com.hm.pojo.Administator;
import com.hm.pojo.Candidate;
import com.hm.pojo.Company;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-03T02:14:52")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> password;
    public static volatile SingularAttribute<User, Candidate> candidate;
    public static volatile SetAttribute<User, Administator> administatorSet;
    public static volatile SingularAttribute<User, Company> company;
    public static volatile SingularAttribute<User, Integer> id;
    public static volatile SingularAttribute<User, String> userRole;
    public static volatile SingularAttribute<User, String> username;
    public static volatile SingularAttribute<User, Date> registerDate;

}