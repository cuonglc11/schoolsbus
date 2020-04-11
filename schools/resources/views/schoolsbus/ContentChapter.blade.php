@extends('layouts.app')

@section('content')


  @foreach($data as $data)
    <tr>
       
      <iframe width="560" height="315" src="{{$data->link}}" frameborder="0" allow="accelerometer; autoplay; stencrypted-media; gyroscope; picture-in-picture" allowfullscreen style="padding: 0px;margin-left: 281px;"></iframe>
        

    
    </tr>
      <form method="post" action="">
      	  <div class="form-group row">
                          
             <label for="password" class="col-md-4 col-form-label text-md-right">Comment</label>
              <div class="col-md-6">
              <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="comment" placeholder="Comment">
                        </div>
              </div>

            <div class="form-group row mb-0">
				    <div class="col-md-6 offset-md-4">
				        <input type="submit" name="submit" value="Comment" class="btn btn-primary">
				    </div>
             </div>
             {{csrf_field()}}
      </form>

    @endforeach 
    <br>
      @foreach($comment as $data)
       <div class="form-group row">
                          
             <label for="password" class="col-md-4 col-form-label text-md-right">{{$data->name}} :</label>
              <div class="col-md-6">
                {{$data->content}}
                        </div>
              </div>

            <div class="form-group row mb-0">
            <div class="col-md-6 offset-md-4">
                {{$data->time_comment}}
            </div>
             </div>
      @endforeach
 
@endsection
