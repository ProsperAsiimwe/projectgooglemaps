<?php $this->load->view('dashboard_components/head');?>

<body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <a href="<?php echo base_url();?>" class="logo"><span>Mapping<span>Prototype</span></span><i class="zmdi zmdi-layers"></i></a>
                </div>

                <!-- Button mobile view to collapse sidebar menu -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container">

                        <!-- Page title -->
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                                <button class="button-menu-mobile open-left">
                                    <i class="zmdi zmdi-menu"></i>
                                </button>
                            </li>
                            <li>
                                <h4 class="page-title">Dashboard</h4>
                            </li>
                        </ul>

                        <!-- Right(Notification and Searchbox -->
                       

                    </div><!-- end container -->
                </div><!-- end navbar -->
            </div>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->
            
<?php $this->load->view('dashboard_components/leftSideBar');?>
            
            <!-- Left Sidebar End -->



            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
          
<?php $this->load->view('map_components/content/maincontent');?>            
            

            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


            <!-- Right Sidebar -->
           
            
            <!-- /Right-bar -->

        </div>
        <!-- END wrapper -->


<?php $this->load->view('dashboard_components/scripts');?>
      

    </body>

<!-- Mirrored from coderthemes.com/adminto_1.5/dark/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 22 Aug 2017 03:25:39 GMT -->
</html>