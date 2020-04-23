@extends('layouts.app')

@section('content')


@foreach($data as $data)
    <tr>
       
        <td><a href="{{  url('/listthreads/'.$data->id_exam) }}" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span>{{$data->name_exam}} </a></td>
        

    
    </tr>
        
     
    @endforeach 
@endsection