/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.hm.repository;

import com.hm.pojo.Major;
import java.util.List;

/**
 *
 * @author ANHMINH
 */
public interface MajorRepository {
    List<Major> getListMajor();
    List<Object[]> getnameOfMajorByJob(int jobId);
    Major getnameOfMajor(int majorID);
}
