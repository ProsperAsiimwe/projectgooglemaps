  <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">

       <?php $this->load->view('map_components/content/maps/dynamic_map');?>
                        
                        <br/><br/><br/>
                        
                         <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Description</th>                                               
                                                <th>Photo</th>
                                                <th>Latitude</th>
                                                <th>Longitude</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($view_content as $view_content):?>
                                            <tr>
                                                <td><?php echo $view_content->description;?></td>
                                                <td><?php echo $view_content->photo;?></td>
                                                <td><?php echo $view_content->lat;?></td>   
                                                <td><?php echo $view_content->lng;?></td>   
                                            </tr>
                                            <?php endforeach;?>
                                                                                     
                                        </tbody>
                                    </table>

                
                    </div> <!-- container -->

                </div> <!-- content -->

                <footer class="footer text-right">
                    2016 - 2017 © .
                </footer>

            </div>
