@extends('layouts.app')

@section('content')

<table class="table table-bordered" style="margin-top:20px;">               
<thead>
    <tr class="bg-primary">
        <th width="40%">Course</th>
        <th width="20%">Teacher teaching</th>
        <th width="30%">Time</th>
        <th width="10%">cancel course</th>
        
    </tr>
</thead>
<tbody>
    @foreach($data as $data)
    <tr>
        <td><a href="{{  url('/listbaigiang/'.$data->id) }}" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span> {{$data->name_subjets}}</a></td>
        <td>{{$data->name_teacher}}</td>
        <td>{{$data->name_time}}</td>
        <td><a href="{{  url('/deleteCourse/'.$data->id_course) }}" onclick="return confirm('cancel this course ?')" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span>Cancel Courses</a>
</td>                                        

    
    </tr>
    @endforeach
</tbody>
@endsection
