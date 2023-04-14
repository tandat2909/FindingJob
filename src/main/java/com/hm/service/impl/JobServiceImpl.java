/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.service.impl;

import com.hm.pojo.Job;
import com.hm.repository.JobRepository;
import com.hm.service.JobService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ANHMINH
 */
@Service
public class JobServiceImpl implements JobService {
    @Autowired
    private JobRepository jobRepository;
    @Override
    public boolean addJob(Job j) {
       return jobRepository.addJob(j);
    }
    @Override
    public List<Object[]> getListJobBymayor(int mayorID) {
        return this.jobRepository.getListJobBymayor(mayorID);
    }

    @Override
    public Object[] getDetailJobById(int i) {
        return this.jobRepository.getDetailJobById(i);
    }

    @Override
    public List<Object[]> getListJobByrecommend(int i, int i1) {
        return this.jobRepository.getListJobByrecommend(i, i1);
    }

    @Override
    public List<Job> getListJobByCompanyId(int i) {
        return this.jobRepository.getListJobByCompanyId(i);
    }

    @Override
    public List<Object[]> getListJobByCompanyId1(int i) {
        return this.jobRepository.getListJobByCompanyId1(i);
    }

    @Override
    public List<Object[]> getListJobByCompanyExpectCurrentJob(int i, int i1) {
        return this.jobRepository.getListJobByCompanyExpectCurrentJob(i , i1);
    }

    @Override
    public Job getNameJob(int i) {
        return this.jobRepository.getNameJob(i);
    }

    @Override
    public List<Object[]> getListJobByCandidate(int i) {
        return this.jobRepository.getListJobByCandidate(i);
    }

    @Override
    public List<Object[]> getListJobByCheckAdmin() {
        return this.jobRepository.getListJobByCheckAdmin();
    }
    @Override
    public List<Object[]> getListJobBymayorAndCity(int i, String string ,String kw) {
       return this.jobRepository.getListJobBymayorAndCity(i, string , kw);
    }
    @Override
    public List<Job> getListJobForManageCompany(int i) {
        return this.jobRepository.getListJobForManageCompany(i);
    }

    @Override
    public void checkJob(int jobID) {
        this.jobRepository.updateJob(jobID);
    }
    
}
