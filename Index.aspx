<%@ Page Title="" Language="C#" MasterPageFile="~/QHSite.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="Server">
    <style>
        .carousel-inner > .item > img, .carousel-inner > .item > a > img
        {
            width: 100%;
            margin: auto;
        }
    </style>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="Images/Carousel_1.jpg">
            </div>
            <div class="item">
                <img src="Images/Carousel_2.jpg">
            </div>
            <div class="item">
                <img src="Images/Carousel_3.jpg">
            </div>
            <div class="item">
                <img src="Images/Carousel_4.jpg">
            </div>
        </div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                Previous</span> </a><a class="right carousel-control" href="#myCarousel" role="button"
                    data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
                    </span><span class="sr-only">Next</span> </a>
    </div>
    <div class="container">
        <div class="col-md-12">
            <h3 class="page-header">
                About Us <small></small>
            </h3>
            <p>
                About Quality Hats</p>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>
</asp:Content>

