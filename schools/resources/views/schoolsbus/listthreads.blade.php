@extends('layouts.app')

@section('content')
 <form method="post">
     @foreach($data as $data )
     <h3>{{$data->threads}}</h3>
    
    <input type="radio" id="male" name="{{$data->id_threads}}" value="{{$data->a}}">
     <label for="male">{{$data->a}}</label><br>
     <input type="radio" id="male" name="{{$data->id_threads}}" value="{{$data->b}}">
     <label for="male">{{$data->b}}</label><br>
     <input type="radio" id="male" name="{{$data->id_threads}}" value="{{$data->b}}">
     <label for="male">{{$data->c}}</label><br>
     <input type="hidden" name="id" value="{{$data->id_threads}}">
     <input type="hidden" name="dapan" value="{{$data->answer}}">

     
     @endforeach
       <button type="submit" class="btn btn-primary">Trả Lời</button>
 {{csrf_field()}}
  </form>



@endsection
