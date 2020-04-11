@extends('layouts.app')

@section('content')


  @foreach($data as $data)
    <tr>
       
        <td><a href="{{  url('/contentchapter/'.$data->id_chapter) }}" class="btn btn-warning"><span class="glyphicon glyphicon-edit"></span>{{$data->titile}} </a></td>
        

    
    </tr>
        
     
    @endforeach 
 
@endsection
