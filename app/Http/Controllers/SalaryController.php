<?php

namespace App\Http\Controllers;
use Yajra\Datatables\Facades\Datatables;

use Illuminate\Http\Request;
use DB;

class SalaryController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }
    
    public function index() {
        return view('add_advanced_salary');
    }

    public function store_advanced_salary(Request $r) {

        $r->validate([
            'emp_id' => 'required',
            'date' => 'required',
            'advanced_salary' => 'required'
        ]);
        $data=array();
        $data['emp_id']=$r->emp_id;
        $data['date']=$r->date;
        $data['advanced_salary']=$r->advanced_salary;
        DB::table('advancesalaries')->insert($data);
        return redirect('/all_advanced_salary')->with('success', 'Advanced Salary successfully paid');
    }
    
    public function view_advanced_salary() {
        $data=DB::table('advancesalaries')
                ->join('employees','advancesalaries.emp_id','employees.id')
                ->select('advancesalaries.*','employees.name','employees.salary','employees.phone')
                ->orderBy('id','DESC')
                ->get();
        return view('all_advanced_salary',compact('data'));
    }
    
    
    public function pay_salary() {
//        $month=date("F", strtotime('-1 month'));
//        $data=DB::table('advancesalaries')
//                ->join('employees','advancesalaries.emp_id','employees.id')
//                ->select('advancesalaries.*','employees.name','employees.salary','employees.phone')
//                ->where('date',$month)
//                ->get();
//        return view('pay_salary',compact('data'));
        $employee=DB::table('employees')->get();
        return view('pay_salary',compact('employee'));
        
    }
}
