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
                    <h3>Add Customer
                        <a href="{{route('all_customer')}}" class="pull-right btn btn-info btn-sm">View All</a>
                    </h3>
                </div>
                <div class="panel-body">
                    <div class="col-md-12">
                        <form action="{{ url('/store_customer') }}" method="post">
                            @csrf
                            <div class="col-sm-12">
                                <div class="form-row mb-4">
                                    <div class="col-sm-6">
                                        <label><strong>Name</strong></label>
                                        <input type="text" name="name" class="form-control" value="{{old('name')}}" placeholder="Type your name..">
                                        @error('name')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-sm-6">
                                        <label><strong>Email</strong></label>
                                        <input type="email" name="email" id="email" class="form-control" placeholder="email">
                                        @error('email')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <div class="col-sm-6">
                                        <label><strong>Phone</strong></label>
                                        <input type="text" name="phone" class="form-control" value="{{old('phone')}}" placeholder="Type your phone..">
                                        @error('phone')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-sm-6">
                                        <label><strong>Shop Name</strong></label>
                                        <input type="text" name="shoapname" id="experiance" class="form-control" placeholder="Shoapname">
                                        @error('shoapname')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <div class="col-sm-6">
                                        <label><strong>Account Holder</strong></label>
                                        <input type="text" name="account_holder" class="form-control" placeholder="account holder">
                                        @error('account_holder')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-sm-6">
                                        <label><strong>Account Number</strong></label>
                                        <input type="text" name="account_number" class="form-control" placeholder="account_number">
                                        @error('account_number')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <div class="col-sm-6">
                                        <label><strong>Bank Name</strong></label>
                                        <input type="text" name="bank_name" class="form-control" placeholder="bank name">
                                        @error('bank_name')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <div class="col-sm-6">
                                        <label><strong>Bank Branch</strong></label>
                                        <input type="text" name="bank_branch" class="form-control" placeholder="bank branch">
                                        @error('bank_branch')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <div class="col-sm-6">
                                        <label><strong>Address</strong></label>
                                        <textarea name="address" class="form-control"></textarea>
                                    </div>
                                    <div class="col-sm-6">
                                        <label><strong>City</strong></label>
                                        <input type="text" id="city" name="city" class="form-control" placeholder="city">
                                        @error('city')
                                        <div class="alert alert-danger">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-row mb-4">
                                    <div class="col-sm-12">
                                        <input type="submit" name="btn" class="btn btn-primary" value="Submit">
                                    </div>
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
