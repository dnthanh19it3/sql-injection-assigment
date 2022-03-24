<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class LoginController extends Controller
{
    function loginView(){
        return view('loginform');
    }
    function loginPost(Request $request){

        $validated = $request->validate([
            'uname' => ['required', 'regex:/^([a-z]|[A-Z]|[0-9]){4,16}$/i'],
            'psw' => ['required', 'regex:/^([a-z]|[A-Z]|[0-9]){4,32}$/i'],
        ]);

        $login = DB::table('table_logindata')->where($validated)->first();

        if($login){
            session('logged', 1);
            session('uname', $login->uname);
            return "Bạn đã đăng nhập thành công!";
        } else {
            $request->session()->flash('error', 'Tên đăng nhập hoặc mật khẩu không đúng! Vui lòng kiểm tra lại!');
            return back();
        }
    }
}
