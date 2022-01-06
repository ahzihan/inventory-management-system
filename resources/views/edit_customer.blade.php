@extends('layouts.app')
@section('content')
<div class="content-page">
    <!-- Start content -->
    <div class="content">
        <div class="container">

            <!-- Page-Title -->
            <div class="row">
                <div class="col-sm-12">
                    <h4 class="pull-left page-title">Welcome !</h4>
                    <ol class="breadcrumb pull-right">
                        <li><a href="#">Customer</a></li>
                        <li class="active">Dashboard</li>
                    </ol>
                </div>
            </div>

            <!-- Start Widget -->
            <div class='panel panel-default'>
                <div class="panel-heading">
                    <h3>Update Customer
                        <a href="{{route('all_customer')}}" class="pull-right btn btn-info btn-sm">View All</a>
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="col-md-12">
                        <form action="{{url('/update_customer/'.$data->id)}}" method="post">
                            @csrf
                            <div class="form-row mb-4">
                                <div class="col-sm-6">
                                    <lable><strong>Name</strong></lable>
                                    <input type="text" name="name" class="form-control" value="{{$data->name}}">
                                    @error('name')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="col-sm-6">
                                    <lable><strong>Email</strong></lable>
                                    <input type="email" name="email" class="form-control" value="{{$data->email}}">
                                    @error('email')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-row mb-4">
                                <div class="col-sm-6">
                                    <lable><strong>Phone</strong></lable>
                                    <input type="text" name="phone" class="form-control" value="{{$data->phone}}">
                                    @error('phone')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="col-sm-6">
                                    <lable><strong>Shop name</strong></lable>
                                    <input type="text" name="shoapname" class="form-control" value="{{$data->shoapname}}">
                                    @error('shoapname')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-row mb-4">
                                <div class="col-sm-6">
                                    <lable><strong>Account Holder</strong></lable>
                                    <input type="text" name="account_holder" class="form-control" value="{{$data->account_holder}}">
                                    @error('account_holder')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="col-sm-6">
                                    <lable><strong>Account Number</strong></lable>
                                    <input type="text" name="account_number" class="form-control" value="{{$data->account_number}}">
                                    @error('account_number')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-row mb-4">
                                <div class="col-sm-6">
                                    <lable><strong>Bank Name</strong></lable>
                                    <input type="text" name="bank_name" class="form-control" value="{{$data->bank_name}}">
                                    @error('bank_name')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                                <div class="col-sm-6">
                                    <lable><strong>Bank Branch</strong></lable>
                                    <input type="text" name="bank_branch" class="form-control" value="{{$data->bank_branch}}">
                                    @error('bank_branch')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-row mb-4">
                                <div class="col-sm-6">
                                    <lable><strong>Address</strong></lable>
                                    <textarea name="address" class="form-control">{{$data->address}}</textarea>
                                </div>
                                <div class="col-sm-6">
                                    <lable><strong>City</strong></lable>
                                    <input type="text" name="city" class="form-control" value="{{$data->city}}">
                                    @error('city')
                                    <div class="alert alert-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            <div class="form-row mb-4">
                                <div class="col-sm-12">
                                    <input type="submit" name="btn" class="btn btn-primary" value="Update">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
