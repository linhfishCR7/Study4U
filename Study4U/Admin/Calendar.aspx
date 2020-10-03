<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/LayoutAdmin.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="Study4U.Admin.Calendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    </style>
     <link href="\Content\Admin\assets\libs\fullcalendar\fullcalendar.min.css" rel="stylesheet" type="text/css"/>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col-12">

            <div class="card-box">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="row">
                            <div class="col-md-12">
                                <a href="#" data-toggle="modal" data-target="#add-category" class="btn btn-lg btn-success btn-block waves-effect waves-light">
                                    <i class="mdi mdi-plus mr-1"></i>Create New
                                                    </a>
                                <div id="external-events" class="mt-3">
                                    <br>
                                    <p class="text-muted">Drag and drop your event or click in the calendar</p>
                                    <div class="external-event bg-primary" data-class="bg-primary">
                                        <i class="fa fa-move"></i>New Theme Release
                                                       
                                    </div>
                                    <div class="external-event bg-pink" data-class="bg-pink">
                                        <i class="fa fa-move"></i>My Event
                                                       
                                    </div>
                                    <div class="external-event bg-warning" data-class="bg-warning">
                                        <i class="fa fa-move"></i>Meet manager
                                                       
                                    </div>
                                    <div class="external-event bg-purple" data-class="bg-purple">
                                        <i class="fa fa-move"></i>Create New theme
                                                       
                                    </div>
                                </div>

                                <!-- checkbox -->
                                <div class="checkbox checkbox-custom mt-4">
                                    <input id="drop-remove" type="checkbox" />
                                    <label for="drop-remove">
                                        Remove after drop
                                                       
                                    </label>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- end col-->
                    <div class="col-lg-9">
                        <div id="calendar" class="mt-4 mt-lg-0"></div>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>

            <!-- BEGIN MODAL -->
            <div class="modal fade none-border" id="event-modal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Add New Event</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body p-3"></div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-success save-event waves-effect waves-light">Create event</button>
                            <button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Delete</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal Add Category -->
            <div class="modal fade none-border" id="add-category">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Add a category</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body p-3">
                            <form>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label class="control-label">Category Name</label>
                                        <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="control-label">Choose Category Color</label>
                                        <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
                                            <option value="success">Success</option>
                                            <option value="danger">Danger</option>
                                            <option value="info">Info</option>
                                            <option value="pink">Pink</option>
                                            <option value="primary">Primary</option>
                                            <option value="warning">Warning</option>
                                            <option value="inverse">Inverse</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Save</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END MODAL -->
        </div>
        <!-- end col-12 -->
    </div>
    <!-- end row -->

</asp:Content>
