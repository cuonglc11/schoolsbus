<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
       
       return view('schoolsbus.home');
    }
    public function getInsert()
    {
        $subjects = DB::table('subjects')->get();
        $teacher = DB::table('teacher')->get();
        $time = DB::table('time_course')->get();
           
        return view('schoolsbus.createcourse', compact('teacher','subjects','time'));
    }
    public function postInsert(Request $re)
    {    
      
        $data =array('id_student'=>$re->id_hv,'id_subiect'=>$re->course ,'id_teacher'=>$re->teacher, 'id_time'=>$re->time);
        $insert = DB::table('course')->insert($data);
        
        return redirect('listcouse');
    }
    public function getListcouse()
    {
        $student =  Auth::user()->id;
        $data = DB::table('course')->join('users','course.id_student','=','users.id')->join('subjects','course.id_subiect','=','subjects.id')->join('teacher','course.id_teacher','=','teacher.id_teacher')->join('time_course','course.id_time','=','time_course.id_time')->where('id_student',$student)->get();
   
        return view('schoolsbus.listcouse' , compact('data'));
    }
    public  function getListbaigiang($id)
    {
        $data =  DB::table('lesson')->join('subjects','lesson.id_subjects','=','subjects.id')->where('id_subjects',$id)->get();

        return view('schoolsbus.listLesson',compact('data'));
    }
    public function getListChapter($id)
    {
        $data =  DB::table('chapter')->where('id_lesson',$id)->get();
         
        return  view('schoolsbus.ListChapter',compact('data'));
    }
    public function getContentChapter($id)
    {
        $data =  DB::table('content_chapter')->where('id_chapter',$id)->get();
        $comment =  DB::table('comment')->join('users','comment.user_comment','=','users.id')->where('id_chapter',$id)->get();

        return view('schoolsbus.ContentChapter',compact('data','comment'));

    }
    public function postContentChapter(Request $re , $id)
    {
        $student = Auth::user()->id;
        $data =array('user_comment'=>$student ,'content'=>$re->comment ,'id_chapter'=>$id);
        $insert = DB::table('comment')->insert($data);

        return back();
    }
    public function deleteCouse($id)
    {
       $deleteCouse = DB::table('course')->where('id_course', $id)->delete();
       
       return back();

    }

}
