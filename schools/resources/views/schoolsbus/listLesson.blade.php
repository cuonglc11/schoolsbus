@extends('layouts.app')

@section('content')

<table class="table table-bordered" style="margin-top:20px;">               
<thead>
    <tr class="bg-primary">
        <th width="40%">Lesson</th>
        <th width="40%">Titile</th>
        
    </tr>
</thead>
<tbody>
    @foreach($data as $data)
    <tr>
        <td>{{$data->name_subjets}}</td>
        <td><a href="{{  url('/listChapter/'.$data->id_lesson) }}" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span>{{$data->name_lesson}} </a></td>
        

    
    </tr>
</tbody>
    @endforeach 
    
    @foreach($mon as $mon)
    <a href="{{url('/listExam/'.$mon->id)}}" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span>Final examination </a>

    @endforeach
@endsection