<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Setting;
use DB;

class SettingController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }
    
    public function index() {
        $setting=DB::table('settings')->first();
        return view('setting', compact('setting'));
    }
    public function update_setting(Request $r){


        $file=$r->file('company_logo');
        $file->move('upload/company',time().'_'.$file->getClientOriginalName());

        $r->validate([
            'company_name' => 'required',
            'company_address' => 'required',
            'company_email' => 'required',
            'company_phone' => 'required',
            'company_city' => 'required',
            'company_zip_code' => 'required',
            'company_country' => 'required',
        ]);
        Setting::where('id', $r->id)->update(array(
            'company_name' => $r->company_name,
            'company_address' => $r->company_address,
            'company_email' => $r->company_email,
            'company_phone' => $r->company_phone,
            'company_logo' => time().'_'.$file->getClientOriginalName(),
            'company_city' => $r->company_city,
            'company_zip_code' => $r->company_zip_code,
            'company_country' => $r->company_country,
        ));
        return redirect('/setting')->with('success', 'Setting updated successfully');
    }
}
