<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employee;

class EmpController extends Controller {

    public function __construct() {
        $this->middleware('auth');
    }

    public function index() {
        return view('add_employee');
    }

    public function view_employee() {
        $data = Employee::all();
        return view('all_employee', compact('data'));
    }

    public function store(Request $r) {
        $r->validate([
            'name' => 'required|max:255',
            'email' => 'required',
            'phone' => 'required',
            'photo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'address' => 'required',
            'experiance' => 'required',
            'salary' => 'required',
            'vacation' => 'required',
            'city' => 'required'
        ]);
        $file=$r->file('photo');
        $file->move('upload',time().'_'.$file->getClientOriginalName());
        $d=array(
            'name' => $r->name,
            'email' => $r->email,
            'phone' => $r->phone,
            'photo' => time().'_'.$file->getClientOriginalName(),
            'address' => $r->address,
            'experiance' => $r->experiance,
            'salary' => $r->salary,
            'vacation' => $r->vacation,
            'city' => $r->city
        );
        
        Employee::create($d);
        return redirect('/all_employee')->with('success', 'Employee info save successfully');
    }

    public function update(Request $r) {
        $r->validate([
            'name' => 'required|max:255',
            'email' => 'required',
            'phone' => 'required',
            'photo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'address' => 'required',
            'experiance' => 'required',
            'salary' => 'required',
            'vacation' => 'required',
            'city' => 'required'
        ]);
        
        $file=$r->file('photo');
        $file->move('upload',time().'_'.$file->getClientOriginalName());
        $d=array(
            'name' => $r->name,
            'email' => $r->email,
            'phone' => $r->phone,
            'photo' => time().'_'.$file->getClientOriginalName(),
            'address' => $r->address,
            'experiance' => $r->experiance,
            'salary' => $r->salary,
            'vacation' => $r->vacation,
            'city' => $r->city
        );
        Employee::where('id', $r->id)->update($d);
        return redirect('/all_employee')->with('success', 'Employee updated successfully');
    }

    public function delete($id) {
        Employee::where('id', $id)->delete();
        return redirect('/all_employee')->with('success', 'Employee deleted successfully');
    }

    public function edit($id) {
        $data = Employee::find($id);
        return view('/edit', compact('data'));
    }

}