<?php

namespace App\Http\Controllers;
use Yajra\Datatables\Facades\Datatables;

use Illuminate\Http\Request;
use App\Models\Customer;

class CustomerController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }
    
    public function index() {
        return view('add_customer');
    }
    
    public function view_customer() {
        $data = Customer::all();
        return view('all_customer', compact('data'));
    }

    public function store_customer(Request $r) {

        $r->validate([
            'name'=> 'required',
            'email'=> 'required',
            'phone'=> 'required',
            'address'=> 'required',
        ]);
        $d=array(
            'name'=> $r->name,
            'email'=> $r->email,
            'phone'=> $r->phone,
            'address'=> $r->address,
            'shoapname'=> $r->shoapname,
            'account_holder'=> $r->account_holder,
            'account_number'=> $r->account_number,
            'bank_name'=> $r->bank_name,
            'bank_branch'=> $r->bank_branch,
            'city'=> $r->city
        );
        Customer::create($d);
        return redirect('/all_customer')->with('success', 'Customer info save successfully');
    }

    public function update_customer(Request $r) {
        
        $r->validate([
            'name'=> 'required',
            'email'=> 'required',
            'phone'=> 'required',
            'address'=> 'required',
        ]);
        $d=array(
            'name'=> $r->name,
            'email'=> $r->email,
            'phone'=> $r->phone,
            'address'=> $r->address,
            'shoapname'=> $r->shoapname,
            'account_holder'=> $r->account_holder,
            'account_number'=> $r->account_number,
            'bank_name'=> $r->bank_name,
            'bank_branch'=> $r->bank_branch,
            'city'=> $r->city
        );
        Customer::where('id', $r->id)->update($d);
        return redirect('/all_customer')->with('success', 'Customer updated successfully');
    }

    public function delete_customer($id) {
        Customer::where('id', $id)->delete();
        return redirect('/all_customer')->with('success', 'Customer deleted successfully');
    }

    public function edit_customer($id) {
        $data = Customer::find($id);
        return view('/edit_customer', compact('data'));
    }
}
