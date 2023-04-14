<%-- 
    Document   : base
    Created on : Jul 24, 2022, 1:05:52 PM
    Author     : admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title"/>
        </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <style>
            * {
                margin: 0;
                padding: 0;
            }

            /*********** dung chung*******/
            /*****************************/
            .pe-3 {
                padding-right: 1rem !important;
            }
            .logo img{
                width: 70px;
                height: 50px;
            }
            .align-self-center {
                align-self: center !important;
            }

            .justify-content-start {
                justify-content: flex-start !important;
            }

            /*****************************/
            .below-nav {
                background-color: black;
                height: 50vh;
                padding: 88px 0 20px 0;
            }

            .nav-item {
                font-size: 16px;
                margin-left: 20px;
            }

            .main {
                background-color: #e9e9e9;
                padding-bottom: 50px;
                padding-top: 20px;
            }

            .navbar-bran {
                font-size: 35px;
                font-weight: 700;
            }

            .below-nav-list {
                padding: 0 48px 30px 48px;
            }

            .below-nav .below-nav-list>li {
                list-style: none;
                color: white;

                margin-top: 40px;
            }

            .below-nav .form-control {
                width: 65%;
                height: 45px;
                color: black;
                font-size: 18px;
                font-weight: 450;
            }

            .btn-primary {
                background-color: #D82727;
                font-size: 20px;
                font-weight: 600;
                border: none;
                padding: 10px 20px;
                margin-left: 10px;
                color: white;
            }

            .list-langue {
                padding: 0;
                margin-left: -15px;
            }

            .list-langue li {
                display: inline-block;
                margin-top: 0;
                margin-left: 15px;
                padding: 0;

            }

            a {
                text-decoration: none;
                color: white;

            }

            .list-langue>li>a:hover {
                background-color: white;
                color: black;
            }

            .card {
                margin-top: 20px;
                border: none;
                min-height: 306px;
            }

            .card:hover {
                box-shadow: 2px 2px 5px 1px gray;
            }

            .tittle-card {
                padding-bottom: -10px;
                padding-top: 60px;
                font-weight: 400;
            }

            .card-img-top {
                width: 170px;
                height: 170px;
                margin: auto;
                margin-top: 30px;
                margin-bottom: 20px;
                line-height: 170px;
            }

            .card-title {
                margin-top: 10px;
                font-size: 19px;
                height: 56px;
            }

            /****************/
            /********* footer***********/
            .footer {
                background-color: black;

            }

            .footer-list {
                padding: 0;
            }

            .footer-info-link li {
                list-style: none;
                font-size: 17px;
                margin-top: 5px;
                line-height: 30px;
                color: #929497;

            }

            .footer-info-link li a {
                color: #929497;
            }

            .footer-info-link li:hover a {
                color: white;
                border: 1px solid white;
                transition: all .2s;
                transform: scale(1.1);
            }

            .footer-info-link {
                margin-top: 20px;
            }

            .footer-tittle {
                font-size: 20px;
                color: #e1e1e4;
                letter-spacing: 0.02em;
                margin: 0 0 20px;

                font-weight: 400;
                /* line-height: 22px; */
                text-transform: uppercase;

            }

            .img-titlt-blog {
                width: 100%
            }

            /****************/
            /*******dropdownlist*******/
            /**************************/
            .btn-primary {
                font-size: 16px;
            }

            /**********blog************/
            .blog {
                margin-top: 20px;
            }

            .blog_description-content {
                padding-top: 10px;
                color: #727272;
                font-size: 13px;
            }

            .blog_description-title {

                margin-top: -5px;
                font-size: 20px;
                line-height: 20px;
                margin-bottom: 0;
                font-weight: normal;
            }

            .blog_read-more {
                margin-top: 30px;
            }

            .text-copyright {
                text-align: center;
            }

            .hr {
                border-top: 1px solid #fff;
            }

            ul.cat-menu {
                display: none;
                padding: 0;
                margin: 0;
                position: absolute;
            }

            .dropdown:hover .cat-menu {
                display: block;
            }

            .cat-menu-item--box {
                position: relative;
                padding-left: 20px;
                padding-right: 10px;
            }

            .arrowright-icon {
                position: absolute;
                top: 15px;
                right: 5px;
            }

            .dropdown-items {
                list-style: none;
                height: 40px;
                width: 230px;
                line-height: 40px;
                padding: 0;
                box-sizing: border-box;
                border-bottom: 1px solid #222021;
            }

            .dropdown-items:hover {
                color: #000 !important;
                background-color: rgb(211, 211, 211);
            }

            .dropdown-items:hover span {
                color: #000 !important;
            }

            .dropdown-items:hover>.cat-menu__sub-menu {
                display: flex;
            }

            .cat-menu__sub-menu {
                display: none;
                margin-left: 230px;
                position: absolute;
                width: 400px;
                top: 0;
                padding: 0 10px;
                list-style: none;
                box-sizing: border-box;
                background-color: #222021;
                border-left: 1px solid #222021;
                color: #ececec;
                min-width: fit-content;
                box-shadow: 8px 3px 15px rgb(0 0 0 / 50%);
            }

            .cat-menu__sub-menu>div {
                white-space: nowrap;
                display: flex;
                flex-direction: column;
                padding: 0 10px;
            }

            .cat-menu__sub-menu-item {
                text-decoration: none;
                color: #fff;
                display: block;
            }



            .cat-menu__sub-menu-item:hover:not(.view-all) {
                color: #3b3b3b !important;
                background-color: #eee;
                transition: all 0.2s ease;
            }

            /*** icon search*********/
            /************************/
            .search-form__keyword-section {
                /* z-index: 999; */
                position: relative;
                flex-grow: 1;
                display: flex;
                height: 45px;
                line-height: 45px;
                background: white;
                border: 1px solid #bebebe;
            }

            .input-group {
                position: relative;
                display: flex;
                flex-wrap: wrap;
                align-items: stretch;
                width: 100%;
            }

            .search-form__icon {
                padding-left: 10px;
                padding-right: 10px;

            }

            .form-control {
                margin-top: -1px;
                margin-right: -10px;
                border-left: none;
                border-right: none;
            }

            .search-form__keyword-section:hover .list-drop-search {
                display: block;
            }

            input {
                outline: none !important;
                box-shadow: none
            }

            .form-control:focus {
                outline: none;
                box-shadow: none
            }


            .svg-icon {
                display: flex;
                align-items: center;
            }

            /****box search*****/

            .ts-dropdown {
                color: #343a40;
                font-family: inherit;
                font-size: inherit;
                line-height: 1.5;
            }

            .w-100 {
                width: 100% !important;
            }

            .m-0 {
                margin: 0 !important;
            }

            .list-drop-search {
                border-top: 1px solid #000;
                display: none;
            }

            /****** login ***************/
            /****************************/
            /* body {font-family: Arial, Helvetica, sans-serif;} */

            /* Full-width input fields */
            .input_username,
            .input_password,
            .input_text {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
                border-radius: 10px;
            }

            /* Set a style for all buttons */
            .btn_login {
                background-color: rgba(44, 149, 255);
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                margin: 20px 0 0px 0;
                width: 100%;
            }

            button:hover {
                opacity: 0.8;
            }

            /* Extra styles for the cancel button */
            .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
            }

            /* Center the image and position the close button */
            .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
                position: relative;
            }

            img.avatar {
                width: 40%;
                border-radius: 50%;
            }

            .footer_login {
                padding: 16px;
            }

            span.psw {
                float: right;
                padding-top: 16px;

            }

            span.span_left {
                float: left;
            }

            span.psw a {
                color: rgb(87, 167, 248);
            }

            /* The Modal (background) */
            .modal {
                display: none;
                /* Hidden by default */
                position: fixed;
                /* Stay in place */
                z-index: 1;
                /* Sit on top */
                left: 0;
                top: 0;
                width: 100%;
                /* Full width */
                height: 100%;
                /* Full height */
                overflow: auto;
                /* Enable scroll if needed */
                background-color: rgb(0, 0, 0);
                /* Fallback color */
                background-color: rgba(0, 0, 0, 0.4);
                /* Black w/ opacity */
                padding-top: 60px;
            }

            /* Modal Content/Box */
            .modal-content {
                background-color: #fefefe;
                border-radius: 20px;
                padding: 20px 10px;
                margin: 5% auto 15% auto;
                /* 5% from the top, 15% from the bottom and centered */
                border: 1px solid #888;
                width: 45%;
                /* Could be more or less, depending on screen size */
                box-shadow: 1px 2px 2px 1px;
            }

            .below_btn_login {
                display: flex;
                justify-content: space-between;
            }

            .check_Account {
                margin-top: -10px;
            }

            /* The Close Button (x) */
            .close {
                position: absolute;
                right: 25px;
                top: 0;
                color: #000;
                font-size: 35px;
                font-weight: bold;
            }



            /* Add Zoom Animation */
            .animate {
                -webkit-animation: animatezoom 0.6s;
                animation: animatezoom 0.6s
            }

            @-webkit-keyframes animatezoom {
                from {
                    -webkit-transform: scale(0)
                }

                to {
                    -webkit-transform: scale(1)
                }
            }

            @keyframes animatezoom {
                from {
                    transform: scale(0)
                }

                to {
                    transform: scale(1)
                }
            }

            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 300px) {
                span.psw {
                    display: block;
                    float: none;
                }

                .cancelbtn {
                    width: 100%;
                }
            }

            .hr_signlog {
                /* margin-bottom: 30px;
                margin-top: -5px; */
                color: rgb(47, 48, 48);
                height: 20px;
            }

            /************ sigin_company************/
            .signin_company {

                padding-top: 80px;
            }
            .btn_login_company{
                margin: 0 !important;

            }
            /*********login_candidate***********/
            #login_section {
                padding-top: 55px;
                width: 100%;
                height: 100%;

            }
            .login_left{
                overflow: hidden;
                height: 100%;
            }
            .login_left-img {
                position: relative;
                background-color: rgba(1, 50, 83, 0.8);
                width: 100%;
                height: 100%;
            }

            .login_left-img img {
                opacity: .5;
                width: 100%;
                height: 100%;
            }

            .login_left-title {
                position: absolute;
                top: 200px;
                left: 140px;
            }

            .login_left-title h5,
            .login_left-title h4 {
                color: #fff;

            }

            .login_left-title h5 {
                font-size: 80px;
            }

            .login_left-title h4 {
                font-size: 48px;
            }
            .modal-content_login{
                width: 90%;
                padding: 0px 0 10px 40px;
            }
            .login_right{
                overflow: auto;
                height: auto
            }
            /********* signin***********/
            /***************************/
            .form-control_inputFile{
                margin-top: 5px;
                border: 1px solid #ccc;
                border-radius: 5px;

            }
            /******moreinfomation*********/

            .notification {
                width: 80%;
                margin-left: 60px;
                color: rgb(116, 115, 115);
                font-weight: 500;
            }

            .btn-dropdown {
                border: 1px solid #ccc;
                border-radius: 10px;
                background-color: white;
                text-align: left;
            }

            .input_date {
                width: 100%;
                border: 1px solid #ccc;
                border-radius: 10px;
                height: 50px;
                padding: 5px 10px;
                margin-top: 5px;
            }

            .form_moreinfo {
                box-shadow: 1px 2px 7px 3px #ccc;
                padding: 10px 20px;
                margin-top: 15px;
            }

            /*********choosemayor***********/
            .btn_choose_mayor {
                width: 200px;
                height: 60px;
                background-color: rgba(7, 140, 150, 0.4);
                color: white;
                text-align: center;
                line-height: 60px;
                border-radius: 20px;
                /* border: 1px solid rgba(8, 223, 238, 0.4); */

            }

            .btn_choose_mayor:hover {
                background-color: rgba(24, 222, 236, 0.4);
            }

            .btn_choose_mayor:focus {
                background-color: rgba(184, 239, 243, 0.4);
            }

            .oneline_choosemayor {
                margin-top: 20px;
                display: flex;
                justify-content: space-between;

                padding-left: 50px;
            }

            .btn_login_choosemayor {
                margin-left: 40px;
                width: 87%;
                border-radius: 10px;
            }

            /**********job-page************/
            .flex {
                display: flex;
            }

            .wp-container {
                max-width: 1380px;
                margin-top: 20px;
            }

            .btn_find_jobpage {
                line-height: 54px;
                margin-left: 10px;
                border-radius: 5px;
                color: #000;
                background-color: rgb(173, 223, 238);
                font-weight: 600;
                text-align: center;
                flex: 1;
            }

            .btn_find_jobpage button {
                font-weight: 600;
                color: #000;
            }

            .btn_drop_jobpage {
                height: 70px;
            }

            .select_job {
                flex: 2;
            }

            .select_city {
                flex: 2;
            }

            .list-link {
                list-style: none;
            }

            .list-link li {
                margin-left: 10px;
                padding: 0;
            }

            #list_job {
                margin-top: -20px;
                margin-bottom: 20px;
                padding-top: 65px
            }

            .detail-job ul {
                display: flex;
                padding: 0;
                margin-bottom: 0px;
            }

            .detail-job>ul>li {
                margin-right: 20px;
            }

            .title-job {
                color: #3e8ff8;
            }

            .company-name {
                color: #727272;
            }

            .content-job {
                display: flex;
                margin-left: 40px;
                border: 1px solid rgb(216, 240, 245);
                padding: 10px 20px;
                background-color: rgb(250, 254, 255);
                margin-top: 20px;
                border-radius: 10px;
            }

            .content-job:hover {
                box-shadow: 5px 5px 15px #888888;
            }

            .name-content {
                margin-left: 40px;
            }

            ul li {
                list-style: none;

            }

            .logo_company {
                width: 100px;
                height: 100%;
                margin-right: 20px;
                border: 0.5px solid #ccc;
                border-radius: 10px;
            }

            .job-content_icon {
                padding-bottom: 2px;
                margin-right: 3px;
                font-size: 25px;
                opacity: .5;
            }

            /********* ul right listjob******/
            .group-menu {
                border: 1px solid #ccc;
                margin-left: 20px;
                padding: 10px 20px 10px 20px;
                margin-top: 20px;
                border-radius: 5px;
            }

            .group-menu-tittle h2 {
                text-align: center;
                font-size: 1.5rem;
                font-weight: 400;
                padding-bottom: 20px;
                border-bottom: 2px solid #000;
            }

            .group-menu-list {
                padding-left: 10px;
            }

            .group-menu-items {
                list-style: none;
                border-bottom: 1px dashed #ccc;
                line-height: 48px;
                color: black !important;
            }

            .group-menu-items a {
                color: rgb(133, 132, 132) !important;
            }

            #detail-info-job {
                padding-top: 50px;
                margin-bottom: 30px;
                margin-left: -50px;
            }

            .ml--20 {
                margin-left: -20px;
            }

            .detail-job-content {
                padding: 10px 30px;
                box-shadow: 1px 3px 3px 3px #ccc;
                background-color: #fff;

            }

            .detail-job-main {
                margin-left: 55px;
            }

            /********* detail-job**********/
            .logo-name_company {
                display: flex;
                width: 100%;
            }

            .logo-name_company h5 {
                line-height: 80px;
            }

            .date_apply {
                padding: 0;
                margin-top: 15px;
            }

            .date_apply li {
                margin-right: 30px;
            }

            .section-btn_detailjob {
                margin-top: 20px;
                margin-bottom: 20px;
            }

            .btn_apply {
                background-color: #3e8ff8;
                padding: 10px 10px;
                text-align: center;
                width: 150px;
                color: white;
                border-radius: 10px;
            }

            .btn_share {
                background-color: #ffffff;
                border: 1px solid #ccc;
                border-radius: 10px;
                padding: 10px 10px;
                text-align: center;
                width: 150px;
                color: black;
                margin-left: 20px;
                font-weight: 600;
            }

            .detail-job-request>ul {
                display: flex;
                padding: 0;

            }

            .detail-job-request>ul>li {
                display: flex;
                flex-direction: column;
                flex: 1;
                position: relative;
                border-right: 1px solid #ccc;
                margin-right: 10px;
            }

            .detail-job-request>ul>li:last-child {
                border: none;
            }

            .detail-job-request>ul>li span:last-child {
                margin-top: 10px;
                font-weight: 600;
            }

            .detail-job-request>ul>li span:first-child {
                opacity: .5;
                font-weight: 600;
                font-size: 14px;
            }

            .detail-infomation-content ul {
                padding: 0;
            }

            .detail-infomation-content ul>li {
                display: flex;

            }

            .detail-infomation-content ul>li>span:first-child {
                font-size: 16px;
                font-weight: 500;
                opacity: .6;
                width: 50%;
            }

            .detail-infomation-content ul > li > span:first-child{
                width: 50%;
            }
            .detail-job-more {
                margin-top: 20px;
            }

            .contact-company {
                margin-top: 20px;
            }

            .contact-company>p {

                font-size: 14px;

            }

            .contact-company>p>span {
                opacity: .5;
            }
            .name-company > p:last-child{
                margin-top: -15px;
                color: #888;
                font-size: 14px;
                font-weight: 500;
            }
            .name-company > p:first-child{
                color: #000;
                font-size: 14px;
                font-weight: 500;
                margin-top: -5px;
            }
            .name-company{
                margin-left: -10px;
            }
            .list-thesame-job{
                padding-left: 15px;
                margin-top: -5px;
            }
            .list-thesame-job h5{
                margin-left: -10px;
            }
            .box-job{
                border: 1px solid #ccc;
                /* padding: 5px 5px; */
                border-radius: 5px;
                padding-left: 5px;
                padding-top: 5px;
                background-color: #fff;
                box-shadow: 1px 3px 3px 1px #ccc;
                margin-top: 10px;
                cursor: pointer;
            }
            .box-job:hover{
                background-color: rgb(247, 242, 242);
            }
            .box-job ul{
                margin-bottom: 2px;

                margin-top: -10px;

            }
            .box-job ul li{
                font-size: 13px;
            }
            .border-bottom{
                height: 5px;
                width: 100px;
                background-color: #3e8ff8;
                margin-left: -10px;
            }
            /********** detail company************/
            #info-company{
                height: 70vh;
                background-color: #fff;

            }
            .custom-1{
                border-bottom-left-radius: 20px;
                border-bottom-right-radius: 20px;
            }
            .info-company-img{
                background-image: url(https://cdn1.vieclam24h.vn/images/assets/img/generic_22.jpg);
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
                height: 50vh;
            }
            .info-company-contact{
                margin-left: 150px;
                position: relative;
            }
            .info-company-contact img{
                position: absolute;
                width: 120px;
                height: 120px;
                top: -20px;
                box-shadow: 4px 4px 9px #c5c5c5;
            }
            .info-company-contact_text{
                margin-left: 130px;
                padding-top: 30px;
            }
            .info-company-contact_text ul{
                padding: 0;
                display: flex;
                justify-content: space-between;
            }
            #detail-info-company{
                margin-left: 135px;
                margin-bottom: 20px;
            }
            .list-jobofcompany{
                margin-top: 10px;
            }
            .content-jobofcompany{
                background-color: #fff;
                border: 1px solid #ccc;
                border-radius: 10px;
                padding: 10px 10px;
                margin-top: 5px;
            }
            .content-jobofcompany h5{
                font-weight: 450;
            }
            .content-jobofcompany ul{
                padding: 0;
                padding-top: 10px;


            }
            .content-jobofcompany ul > li{
                flex: 1;
                font-weight: 500;
            }
            .content-jobofcompany ul > li > span{
                opacity: .7;
                font-weight: 400;
                margin-left: -5px;
            }
            .list-scroll{
                position: fixed;
                top: 450px;
            }
            .list-scroll ul{
                border-left: 4px solid #ccc;
                padding: 0;
            }
            .list-scroll ul li{
                margin-top: 10px;
                font-weight: 600;
                color: #000;
                height: 24px;

            }
            .list-scroll ul li a{
                padding-left: 5px;
                height: 30px;
                font-weight: 500;
                font-size: 18px;
            }
            .list-scroll ul li > a:active{
                border-left: 2px solid #3e8ff8;
                padding: -10px 0;
            }
            .list-scroll ul li > a:hover{
                border-left: 2px solid #3e8ff8;
                padding: -10px 0;
            }
            #advertising-company{
                margin-top: 50px;
            }
            #advertising-company h2{
                margin-bottom: 20px;
            }
            #contact-company{
                margin-top: 20px;
            }
            #contact-company span:last-child{
                font-weight: 500;
            }
            /************** create Recruitment **********/
            .radius-bg{
                border-bottom-left-radius: 20%;
                border-bottom-right-radius: 20%;

                background-color: rgb(116, 113, 113);
                background-position: center;
                background-size: cover;
                background-attachment: fixed;
            }
            .model-recruitment{
                width: 60%;
            }
            .mb-10{
                margin-bottom: 10px;
            }
            .w-40{
                width: 50%;
            }
            .label_fromTo{
                line-height: 57px;
                margin-right: 10px;
            }
            textarea{
                resize: none;
                outline: none;
            }
            /***************ListJobApply***********/
            .like_icon{
                top: 10px;
                right: 10px;
            }
            /***********create CV ***************/
            /************************************/
            .img-radius_50{
                border-radius: 50%;
                border: 1px solid #ccc;
                width: 150px;
                height: 150px;
                margin-left: 50px;
            }
            .info_user h5{
                /* padding: 5px 10px; */

                margin-top: 20px;
                font-weight: 650;



            }
            .left_CV{
                border-right: 1px solid #000;
                flex: 1;
            }
            .right_CV{
                border-left: 1px solid #000;
                flex: 1;
            }
            .info_user ul {
                padding: 0;
                margin-top: 10px;
            }
            .info_user .info_ul li{
                margin-top: 5px;
            }
            .custom-cv6-rating-box input[type="range"] {
                -webkit-appearance: none;
                display: inline-block !important;
                cursor: pointer;
                border: none;
                width: 145px;

            }
            .max-height-input-cv6 {
                width: 140px !important;
            }
            .info_user .computer_ul li,
            .info_user .English_ul li,
            .info_user .contactPerson_ul li
            .education_ul li{
                margin-top: 5px;
                display: flex;

            }
            .info_user .computer_ul li > span,
            .info_user .English_ul li > span,
            .info_user .contactPerson_ul li > span
            .education_ul li > span{
                flex: 1;
                margin-right: 10px;
            }
            .input_CV{
                border: none;
                font-size: 13px;
                text-align: left;
            }
            .right_CV h4{
                text-align: center;
                font-weight: 500;

            }
            .right_CV h5{
                text-align: center;
                margin-top: 50px;
            }
            .input_tittle{
                text-align: center;
            }
            .input_education{
                margin-left: 45px;
            }
            .education_ul{
                padding: 0;
                margin-left: 45px;
                margin-top: 10px;
            }
            /************comment-section*********/
            .radius-50{
                border-radius: 50%;
            }
            #comment-section{
                margin-top: 20px;
            }
            .content_comment{
                margin-top: 0px;
            }
            .name_content{
                padding: 5px 5px;
                border: 1px solid #f1efef;
                background-color: rgba(241, 241, 241,.7);
                border-radius: 10px;
                margin-left: 20px;
                padding: 5px 10px;
                max-width: 100%;
                width: 100%;
                min-width: 90%;
                word-wrap: break-word;
                box-shadow: 1px 5px 8px #f1efef;
            }

            .content_comment img{
                margin-left: 0;
            }

            .name_content .namecandidate{
                font-weight: 600;
                font-size: 14px;
            }
            .name_content .comment-text{
                margin-top: -15px;
                width: 100%;
                margin-bottom: 5px;
            }
            #input_comment{
                width: 100%;
                margin-left: 20px;
                outline: none;
                height: 50px;
                border: 1px solid #e4e2e2;
                background-color: rgb(241, 241, 241);
                resize: none;
                border-radius: 10px;
                box-shadow: 1px 5px 8px #e4e2e2;
                padding: 5px 10px;


            }

            .btn-post{

                padding: 10px 10px;
                border-radius: 10px;
                margin-top: 5px;
                border: 1px solid #e4e2e2;

                box-shadow: 1px 5px 8px #c5c5c5;
            }
            .react-time_ul{
                margin-left: 8.5%;
                padding: 0;
            }
            .react-time_ul li{
                margin-right: 15px;
                opacity: .7;

            }
            /********admin*************/
            .menu_admin{
                height: 100%;
                width: 250px;
                background-color:#000;
                position: fixed
            }
            .menu_admin img{
                width: 120px;
                height: 70px;
                margin-left: 30px;
            }
            .menu_admin ul{
                padding: 0;
                padding-left: 10px;
                margin-left: 45px;
                margin-top: 30px;
            }
            .menu_admin ul li{
                margin-top: 20px;
            }
            .menu_admin ul li:last-child{
                margin-top: 430px;
            }
            .main_admin{
                /* margin-left: -40px; */
            }
            .btn_admin_check{
                border: 1px solid #e9fbff;
                width: 100%;
                height: 120px;
                background-color: #e9fbff;
                color: rgb(134, 134, 134);
                padding: 10px 10px;
                margin-top: 20px;
                border-radius: 10px;
                margin-left: -10px;
                box-shadow: 1px 5px 8px #c5c5c5;
            }
            .chartJs{
                margin-left: 40px;
                margin-top: 20px;

            }
            .opa2{
                opacity: .6;
            }
            .job-content_icon_admin{
                padding-bottom: 2px;
                margin-right: 3px;
                font-size: 25px;

            }
            /************ rating detailcompany *************/

            .rate{
                margin-top: -15px;
                /*                margin-bottom: 20px;*/
            }
            /*            .rate {
                            float: left;
                            
                        }*/
            .rate:not(:checked) > input {
                position:absolute;
                top:-9999px;
            }
            .rate:not(:checked) > label {
                float:right;
                width:1em;
                overflow:hidden;
                white-space:nowrap;
                cursor:pointer;
                font-size:23px;
                color:#ccc;
            }
            .rate:not(:checked) > label:before {
                content: '★ ';
            }
            .rate > input:checked ~ label {
                color: #ffc700;
            }
            .rate:not(:checked) > label:hover,
            .rate:not(:checked) > label:hover ~ label {
                color: #deb217;
            }
            .rate > input:checked + label:hover,
            .rate > input:checked + label:hover ~ label,
            .rate > input:checked ~ label:hover,
            .rate > input:checked ~ label:hover ~ label,
            .rate > label:hover ~ input:checked ~ label {
                color: #c59b08;
            }
            /***********rate1***********/
            .rate1{
                margin-top: -15px;
                /*                margin-bottom: 20px;*/
            }
            /*            .rate {
                            float: left;
                            
                        }*/
            .rate1:not(:checked) > input {
                position:absolute;
                top:-9999px;
            }
            .rate1:not(:checked) > label {
                float:right;
                width:1em;
                overflow:hidden;
                white-space:nowrap;
                cursor:pointer;
                font-size:23px;
                color:#ccc;
            }
            .rate1:not(:checked) > label:before {
                content: '★ ';
            }
            .rate1 > input:checked ~ label {
                color: #ffc700;
            }
            .rate1:not(:checked) > label:hover,
            .rate1:not(:checked) > label:hover ~ label {
                color: #deb217;
            }
            .rate1 > input:checked + label:hover,
            .rate1 > input:checked + label:hover ~ label,
            .rate1 > input:checked ~ label:hover,
            .rate1 > input:checked ~ label:hover ~ label,
            .rate1 > label:hover ~ input:checked ~ label {
                color: #c59b08;
            }
            /***********rate2***********/
            .rate2{
                margin-top: -15px;
                /*                margin-bottom: 20px;*/
            }
            /*            .rate {
                            float: left;
                            
                        }*/
            .rate2:not(:checked) > input {
                position:absolute;
                top:-9999px;
            }
            .rate2:not(:checked) > label {
                float:right;
                width:1em;
                overflow:hidden;
                white-space:nowrap;
                cursor:pointer;
                font-size:23px;
                color:#ccc;
            }
            .rate2:not(:checked) > label:before {
                content: '★ ';
            }
            .rate2 > input:checked ~ label {
                color: #ffc700;
            }
            .rate2:not(:checked) > label:hover,
            .rate2:not(:checked) > label:hover ~ label {
                color: #deb217;
            }
            .rate2 > input:checked + label:hover,
            .rate2 > input:checked + label:hover ~ label,
            .rate2 > input:checked ~ label:hover,
            .rate2 > input:checked ~ label:hover ~ label,
            .rate2 > label:hover ~ input:checked ~ label {
                color: #c59b08;
            }
            /***********rate3***********/
            .rate3{
                margin-top: -15px;
                /*                margin-bottom: 20px;*/
            }
            /*            .rate {
                            float: left;
                            
                        }*/
            .rate3:not(:checked) > input {
                position:absolute;
                top:-9999px;
            }
            .rate3:not(:checked) > label {
                float:right;
                width:1em;
                overflow:hidden;
                white-space:nowrap;
                cursor:pointer;
                font-size:23px;
                color:#ccc;
            }
            .rate3:not(:checked) > label:before {
                content: '★ ';
            }
            .rate3 > input:checked ~ label {
                color: #ffc700;
            }
            .rate3:not(:checked) > label:hover,
            .rate3:not(:checked) > label:hover ~ label {
                color: #deb217;
            }
            .rate3 > input:checked + label:hover,
            .rate3 > input:checked + label:hover ~ label,
            .rate3 > input:checked ~ label:hover,
            .rate3 > input:checked ~ label:hover ~ label,
            .rate3 > label:hover ~ input:checked ~ label {
                color: #c59b08;
            }
            /***********rate4***********/
            .rate4{
                margin-top: -15px;
                /*                margin-bottom: 20px;*/
            }
            /*            .rate {
                            float: left;
                            
                        }*/
            .rate4:not(:checked) > input {
                position:absolute;
                top:-9999px;
            }
            .rate4:not(:checked) > label {
                float:right;
                width:1em;
                overflow:hidden;
                white-space:nowrap;
                cursor:pointer;
                font-size:23px;
                color:#ccc;
            }
            .rate4:not(:checked) > label:before {
                content: '★ ';
            }
            .rate4 > input:checked ~ label {
                color: #ffc700;
            }
            .rate4:not(:checked) > label:hover,
            .rate4:not(:checked) > label:hover ~ label {
                color: #deb217;
            }
            .rate4 > input:checked + label:hover,
            .rate4 > input:checked + label:hover ~ label,
            .rate4 > input:checked ~ label:hover,
            .rate4 > input:checked ~ label:hover ~ label,
            .rate4 > label:hover ~ input:checked ~ label {
                color: #c59b08;
            }
            /***********rate5***********/
            .rate5{
                margin-top: -15px;
                /*                margin-bottom: 20px;*/
            }
            /*            .rate {
                            float: left;
                            
                        }*/
            .rate5:not(:checked) > input {
                position:absolute;
                top:-9999px;
            }
            .rate5:not(:checked) > label {
                float:right;
                width:1em;
                overflow:hidden;
                white-space:nowrap;
                cursor:pointer;
                font-size:23px;
                color:#ccc;
            }
            .rate5:not(:checked) > label:before {
                content: '★ ';
            }
            .rate5 > input:checked ~ label {
                color: #ffc700;
            }
            .rate5:not(:checked) > label:hover,
            .rate5:not(:checked) > label:hover ~ label {
                color: #deb217;
            }
            .rate5 > input:checked + label:hover,
            .rate5 > input:checked + label:hover ~ label,
            .rate5 > input:checked ~ label:hover,
            .rate5 > input:checked ~ label:hover ~ label,
            .rate5 > label:hover ~ input:checked ~ label {
                color: #c59b08;
            }
            /***********rate6***********/
            .rate6{
                margin-top: -15px;
                /*                margin-bottom: 20px;*/
            }
            /*            .rate {
                            float: left;
                            
                        }*/
            .rate6:not(:checked) > input {
                position:absolute;
                top:-9999px;
            }
            .rate6:not(:checked) > label {
                float:right;
                width:1em;
                overflow:hidden;
                white-space:nowrap;
                cursor:pointer;
                font-size:23px;
                color:#ccc;
            }
            .rate6:not(:checked) > label:before {
                content: '★ ';
            }
            .rate6 > input:checked ~ label {
                color: #ffc700;
            }
            .rate6:not(:checked) > label:hover,
            .rate6:not(:checked) > label:hover ~ label {
                color: #deb217;
            }
            .rate6 > input:checked + label:hover,
            .rate6 > input:checked + label:hover ~ label,
            .rate6 > input:checked ~ label:hover,
            .rate6 > input:checked ~ label:hover ~ label,
            .rate6 > label:hover ~ input:checked ~ label {
                color: #c59b08;
            }
            
            /***** load star ***************/
            .name_content{
                position: relative;

            }
            .rating{
                position: absolute;
                top: 0px;
                right: 10px;

                height: 30px;

            }
            .btn_post_comment{
                position: absolute;
                top: 0;
                right: 13px;
            }
            /********* bonus header *****/
            .cat-menu_login{
                padding: 0;
            }
            .cat-menu_login > li{
                padding: 0px 10px;
            }
            /********* find jobpage *************/
            .p-2 {
                padding: .5rem;
            }

            .px-12 {
                padding-left: 3rem;
                padding-right: 3rem;
            }

            .py-8 {
                padding-top: 2rem;
                padding-bottom: 2rem;
            }

            .pb-14 {
                padding-bottom: 3.5rem;
            }

            .text_20 {
                font-size: 20px;
            }

            .text_34 {
                font-size: 34px;
            }

            .font-semibold {
                font-weight: 600;
            }

            .leading-6 {
                line-height: 15px;
            }

            .leading-10 {
                line-height: 25px;
            }

            .w-full {
                width: 100%;
            }

            .text-sm {
                font-size: .875rem;
                line-height: 1.25rem;
            }

            .rounded-lg {
                border-radius: 10px;
            }
            .content-listjob{
                padding-top: 60px;

            }
            .btn_find_jobpage{
                background-color: #000;

            }
            .btn_find_jobpage button{
                height: 100%;
                width: 100%;
                border: none;
                color: #fff;
            }
            .select_btn{
                width: 100%;
                height: 100%;

                font-size: 20px;


            }
            .select_city {
                margin-right: 10px;

            }
            .search_jobpage{

                background-color: #fff;
                border: 1px solid #ccc;
            }
            /********* detail cv ***********/
            #img_cv{
                height: auto;
                width: auto;
                /* background-color: #ccc; */
                text-align: center;

            }
            #img_cv img{
                height: 100vh;
                width: 100%;
            }
            /************** choose cv ***************/
            #choose_cv{
                margin-top: 40px;
            }
            .img_cv{
                margin-top: 20px;

            }
            .eye_btn{
                position: absolute;
                top: 0px;
                right: 0px;
                border: 1px solid #ccc;
                color: #000;
                cursor: pointer;
                text-align: center;
                background-color: #fff;
                width: 30px;
            }
            .img_cv img{
                width: 100%;
                height: auto;
                border: .5px solid rgb(240, 239, 239);
            }
            /************update index*******/
            .card-img-top{
                max-height: 170px;
                max-width: 170px;
                width: auto;
                height: auto;
            }
            .card-img{
                height: auto;
                width: auto;
                max-height: 170px;
                max-width: 170px;
                line-height: 200px;
                margin-bottom: 20px;
                margin-left: 18%;

            }
            .card-text{
                margin-top: 20px;
            }
            .pagination{

                margin-left: 47%;
                margin-top: 30px;
            }
            /************update detailjob**********/
            .logo_company_div{
                max-width: 150px;
                max-height: 150px;
                height: auto;
                width: auto;
                background-color: #fff;
                box-shadow: 4px 4px 9px #c5c5c5;

            }
            .logo_company{
                height: 100px;
                width: 100px;
            }
            .info-company-contact_text ul li{
                margin-right: 20px;
            }
            /***************update admin**********/
            .main_admin{
                margin-left: 40px;
            }
            .content-job_admin{
                margin-left: 10px;
            }
            .content-job_admin ul li{
                margin-right: 15px;
            }
            .check_job{
                margin-left: 25px;
            }
            /********** update job-page*********/
            
            .select_city select{
                
                border-radius: 10px;
            }
            .btn_find_jobpage{
                margin-left: 0px;
            }
            /*******upddate create cv**********/
            .rate,.rate1,.rate2,.rate3,.rate4,.rate5,.rate6{
                margin-left: -30%;
                margin-top: 4px;
            }
            /**********managa_company***********/
            .tittlejob_cv{
                margin-top: 10px;
                margin-bottom: 25px;
            }
            .action_btn{
                margin-left: 15px;
            }
            .action_btn a{
                margin-right: 5px;
                color: #000;
                
            }
            .action_btn a svg{
                font-size: 20px;
                width: 20px;
                height: 20px;
            }
            .action_btn a svg:hover{
                transform: scale(1.1);
                transition: all .5s;
            }
            #manage_job{
                margin-left: 40px;
                margin-top: 100px;
            }
            #manage_job h5{
                margin-left: 34%;
                margin-bottom: 30px;
            }
            #addjob{
                margin-top: 100px;
                margin-bottom: 50px;
            }
            .btn_addjob_manage{
                padding: 20px 40px;
                border: 1px solid #000;
                background-color: #000;
                color: #fff;
                text-align: center;
                margin-left: 35%;
                font-weight: 500;
            }
            .content-job_manageC{
                background-color: rgb(250 250 250);
                border: 1px solid rgb(238 241 241);
                box-shadow: 5px 10px 18px #dbd9d9
            }
            /***********alart***************/
            .alert {
                padding: 20px;
                background-color: #04AA6D;
                color: white;
                display: none;
                position: fixed;
                top: 30%;
                left: 30%;
            }

            .closebtn {
                margin-left: 15px;
                color: white;
                font-weight: bold;
                float: right;
                font-size: 22px;
                line-height: 20px;
                cursor: pointer;
                transition: 0.3s;
            }

            .closebtn:hover {
                color: black;
            }
            /**********input jobpage *********/
            .input-group_jobpage{
                border: 1px solid #000;
                
                
            }
            .form-input_jobpage{
                margin-bottom: -1px;
                border-top: 1px solid #000;
                border-bottom:  1px solid #000;
                border-right: none; 
                border-radius: 0px;
                
            }
            /***********info_primary**********/
            .form_updateinfo{
                width: 70%;
                margin-left: 15%;
            }
        </style>
    </head>
    <body>
        <tiles:insertAttribute name="header" />
        <tiles:insertAttribute name="belownav" />
        <tiles:insertAttribute name="content" />
        <tiles:insertAttribute name="footer" />
        
    </body>
</html>
