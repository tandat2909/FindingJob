package com.hm.pojo;

import com.hm.pojo.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-03T02:14:52")
@StaticMetamodel(Administator.class)
public class Administator_ { 

    public static volatile SingularAttribute<Administator, Integer> id;
    public static volatile SingularAttribute<Administator, String> fullname;
    public static volatile SingularAttribute<Administator, User> userID;
    public static volatile SingularAttribute<Administator, String> email;

}