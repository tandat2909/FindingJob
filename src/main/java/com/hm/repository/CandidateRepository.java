/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.hm.repository;

import com.hm.pojo.Candidate;
import java.util.List;

/**
 *
 * @author ANHMINH
 */
public interface CandidateRepository {
     boolean addCandidate(Candidate c);
    List<Candidate> getCandidate(int userID);
    Candidate getCandidateByID(int candidateID);
    boolean updateCandidate(Candidate c);
    List<Object[]> getListCandidateByCompany(int companyId);
    List<Object[]> getListCandidateByJob(int jobId , int companyId);
    List<Candidate[]> getListCandidate();
    List<Candidate[]> getListCandidateByCityMajorDegree(String city , String nameMajor , String degree);
    
}
