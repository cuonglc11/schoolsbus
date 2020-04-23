@extends('layouts.app')

@section('content')

<form method="post">
    <div class="form-group row">
                           

                            <div class="col-md-6">
                                <input id="name" type="hidden" class="form-control @error('name') is-invalid @enderror" name="id_hv" value="{{  Auth::user()->id }}">

                               
                            </div>
                        </div>
                        <div class="form-group row">
                          
                         <label for="password" class="col-md-4 col-form-label text-md-right">Course</label>
                          <div class="col-md-6">
                             <select required name="course" class="form-control">
                                            @foreach($subjects as $data)
                                            <option value="{{$data->id}}">{{$data-> name_subjets}}</option>
                                                @endforeach

                                        </select>
                                    </div>
                          </div>
                          <div class="form-group row">
                          
                         <label for="password" class="col-md-4 col-form-label text-md-right">Teacher</label>
                          <div class="col-md-6">
                             <select required name="teacher" class="form-control">
                                            @foreach($teacher as $data)
                                            <option value="{{$data->id_teacher}}">{{$data->name_teacher}}</option>
                                                @endforeach

                                        </select>
                                    </div>
                          </div>
                           <div class="form-group row">
                          
                         <label for="password" class="col-md-4 col-form-label text-md-right">Time</label>
                          <div class="col-md-6">
                             <select required name="time" class="form-control">
                                           
                                @foreach($time as $data)
                                 <option value="{{$data->id_time}}">{{$data->name_time}}</option>
                                                @endforeach

                                        </select>
                                    </div>
                          </div>

    <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <input type="submit" name="submit" value="Course registration" class="btn btn-primary">
                            </div>
                        </div>
    {{csrf_field()}}
    
</form>

@endsection
