<?php

namespace App\Http\Controllers;
use Yajra\Datatables\Facades\Datatables;

use Illuminate\Http\Request;
use App\Models\Attendance;
use DB;

class AttendanceController extends Controller {

    public function __construct() {
        $this->middleware('auth');
    }

    public function take_attendance() {
        $employee = DB::table('employees')->get();
        return view('take_attendance', compact('employee'));
    }

    
    public function insert_attendance(Request $request) {
        
        $date=$request->att_date;
        $att=DB::table('attendances')->where('att_date',$date)->first();
        if($att){
            return redirect('/all_attendance')->with('danger', 'Today attendance already taken');
        }else{
           foreach ($request->user_id as $id) {
            $data= [
                'user_id' => $id,
                'attendance' => $request->attendance[$id],
                'att_date' => $request->att_date,
                'att_year' => $request->att_year,
                'month' => $request->month,
                'edit_date' => date("d_m_y"),
            ];
            Attendance::create($data);
        }
        
        return redirect('/all_attendance')->with('success', 'Attendance info save successfully');
        }
        
    }

    public function all_attendance() {
        $all_att=DB::table('attendances')->select('edit_date')->groupBy('edit_date')->get();
        return view('all_attendance',compact('all_att'));
    }
    
    public function edit_attendance($edit_date){
        $date=DB::table('attendances')->where('edit_date',$edit_date)->first();
        $data = DB::table('attendances')->join('employees','attendances.user_id','employees.id')->where('edit_date',$edit_date)->get();
        return view('edit_attendance',compact('data','date'));
    }
    
    public function update_attendance(Request $request){
        foreach ($request->id as $id) {
            $data= [
                'attendance' => $request->attendance[$id],
                'att_date' => $request->att_date,
                'att_year' => $request->att_year,
                'month' => $request->month,
            ];
            $att=Attendance::where(['att_date'=>$request->att_date,'id'=>$id])->first();
            $att->update($data);
        }
        return redirect('/all_attendance')->with('success', 'Attendance successfully updated');
    }
    public function view_attendance($edit_date){
        $date=DB::table('attendances')->where('edit_date',$edit_date)->first();
        $data = DB::table('attendances')->join('employees','attendances.user_id','employees.id')->where('edit_date',$edit_date)->get();
        return view('view_attendance',compact('data','date'));
    }

}
