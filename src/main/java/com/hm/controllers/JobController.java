/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.hm.controllers;

import com.hm.pojo.Candidate;
import com.hm.pojo.CandidateJob;
import com.hm.pojo.Job;
import com.hm.pojo.JobMajor;
import com.hm.pojo.User;
import com.hm.service.CandidateService;
import com.hm.service.CompanyService;
import com.hm.service.CurriculumVitaeService;
import com.hm.service.JobService;
import com.hm.service.MajorService;
import com.hm.service.UserService;
import java.security.Principal;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ANHMINH
 */
@Controller
public class JobController {

    @Autowired
    private JobService jobService;
    @Autowired
    private MajorService majorService;
    @Autowired
    private UserService userDetailService;
    @Autowired
    private CurriculumVitaeService curriculumVitaeService;


    @GetMapping("/job-detail/{jobId}/{majorId}")
    public String detailjobView(Model model , @PathVariable(value = "jobId") int jobId , @PathVariable(value = "majorId") int majorId,Principal principal) {
        model.addAttribute("detailJob", this.jobService.getDetailJobById(jobId));
        model.addAttribute("majorname", this.majorService.getnameOfMajor(majorId));
        model.addAttribute("listmajorname", this.majorService.getnameOfMajorByJob(jobId));
        model.addAttribute("jobpageRecommened", this.jobService.getListJobByrecommend(jobId, majorId));
        if(principal != null){
            User u = this.userDetailService.getUserByUsername(principal.getName()).get(0);
            if(u.getUserRole().equals("ROLE_USER")){
                model.addAttribute("candidate", u.getCandidate());
                CandidateJob cj = curriculumVitaeService.getApply(jobId, u.getCandidate().getId());
                if(cj == null)
                    model.addAttribute("candidateJob", new CandidateJob());
                else
                    model.addAttribute("candidateJob", cj);
            }
            
        }
        return "job_detail";
    }


    @GetMapping("/company/create-job")
    public String creatJobView(Model model, Principal principal) {
        if (principal == null) {
            return "redirect:/login";
        }
        User u = userDetailService.getUserByUsername(principal.getName()).get(0);
        if(u.getCompany().getIsChecked() == 0){
             return "index";
        }
        model.addAttribute("job", new Job());
        model.addAttribute("majorList", this.majorService.getListMajor());
        return "job_create";
    }

    @PostMapping("/company/create-job")
    public String createJob(Model model, @ModelAttribute(value = "job") @Valid Job job, Principal principal,
            BindingResult r) {
        if (r.hasErrors()) {
            return "job_create";
        }
        User u = userDetailService.getUserByUsername(principal.getName()).get(0);
        job.setCompanyID(u.getCompany());
        job.setCreatedDate(new Date());
        job.setIsChecked(0);
        if (jobService.addJob(job) == true) {
            return ("index");
        }

        return "job_create";
    }
    //HOANG
    @RequestMapping("/job-page")
    public String jobpageView(Model model) {
        model.addAttribute("jobpage", this.jobService.getListJobBymayor(1));
        
        model.addAttribute("majorname", this.majorService.getnameOfMajor(1));
        model.addAttribute("listNameMajor", this.majorService.getListMajor());
        
        return "job_page";
    }
    @GetMapping("/job-page/{majorId}")
    public String jobpage(Model model , @PathVariable(value = "majorId") int MajorId) {
        model.addAttribute("jobpage", this.jobService.getListJobBymayor(MajorId));
        model.addAttribute("majorname", this.majorService.getnameOfMajor(MajorId));
        model.addAttribute("listNameMajor", this.majorService.getListMajor());
        
        return "job_page";
    }
    @GetMapping("/job-page/{majorId}/{city}/{kw}")
    public String jobpage(Model model , @PathVariable(value = "majorId") int MajorId 
                            ,@PathVariable(value = "city") String city
                            ,@PathVariable(value = "kw") String KW) {
        model.addAttribute("jobpage", this.jobService.getListJobBymayorAndCity(MajorId,city,KW));
        model.addAttribute("majorname", this.majorService.getnameOfMajor(MajorId));
        model.addAttribute("listNameMajor", this.majorService.getListMajor());
        
        return "job_page";
    }
}
