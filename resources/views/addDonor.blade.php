@extends('layouts.sidebar')
			@section('main')
				<div class="container-fluid p-0">
					<div class="row">
						<div class="col-12 col-lg-12 col-xxl-9 d-flex">
							<div class="card flex-fill">
								<div class="card-header">

									<h3 class="">Add Plasma Donor Details</h3>
                                    <div class="text-end"><a href="donorsList"><button class="btn btn-danger"><i class="fa fa-arrow-left" aria-hidden="true"></i>
                                    Back</button></a></div>
								</div>
                                <div class="card-body">
                                    <form action="saveDonor"  method="post" class="p-5 border border-2 rounded"> 
                                        @csrf
                                        <div class="form-group mb-3">
                                            <label for="name" class="form-label fw-bold">Name<span class="text-danger">*</span></label>
                                            <input type="text" class="form-control" name="dname" id="name" placeholder="Your Name">
                                            @if ($errors->has('dname'))
                                                <span class="text-danger">{{ $errors->first('dname') }}</span>
                                            @endif
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="gender" class="form-label fw-bold">Gender<span class="text-danger">*</span></label>
                                            <ul class="list-unstyled list-inline">
                                                <li class="list-inline-item"><input type="radio" class="m-1" name="gender" value="male" id="gender"><label>Male</label></li>
                                                <li class="list-inline-item"><input type="radio" class="m-1" name="gender" value="female" id="gender"><label>Female</label></li>
                                                <li class="list-inline-item"><input type="radio" class="m-1" name="gender" value="other" id="gender"><label>Other</label></li>
                                            </ul>
                                            @if ($errors->has('gender'))
                                                <span class="text-danger">{{ $errors->first('gender') }}</span>
                                            @endif
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="age" class="form-label fw-bold">Age<span class="text-danger">*</span></label>
                                            <input type="number" class="form-control" onblur="myFunction()" name="age" id="age" placeholder="Your Age">
                                            @if ($errors->has('age'))
                                                <span class="text-danger">{{ $errors->first('age') }}</span>
                                            @endif
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="blood-group" class="form-label fw-bold">Blood Group<span class="text-danger">*</span></label>
                                            <ul class="list-unstyled list-inline">
                                                <li class="list-inline-item"><input type="radio" class="m-1" name="blood_group" value="O+" id="blood_group"><label>O+</label></li>
                                                <li class="list-inline-item"><input type="radio" class="m-1" name="blood_group" value="O-" id="blood_group"><label>O-</label></li>
                                                <li class="list-inline-item"><input type="radio" class="m-1" name="blood_group" value="A+" id="blood_group"><label>A+</label></li>
                                                <li class="list-inline-item"><input type="radio" class="m-1" name="blood_group" value="A-" id="blood_group"><label>A-</label></li>
                                                <li class="list-inline-item"><input type="radio" class="m-1" name="blood_group" value="B+" id="blood_group"><label>B+</label></li>
                                                <li class="list-inline-item"><input type="radio" class="m-1" name="blood_group" value="B-" id="blood_group"><label>B-</label></li>
                                                <li class="list-inline-item"><input type="radio" class="m-" name="blood_group" value="AB+" id="blood_group"><label>AB+</label></li>
                                                <li class="list-inline-item"><input type="radio" class="m-1" name="blood_group" value="AB-" id="blood_group"><label>AB-</label></li>
                                            </ul>   
                                            @if ($errors->has('blood_group'))
                                                <span class="text-danger">{{ $errors->first('blood_group') }}</span>
                                            @endif 
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="pdate" class="form-label fw-bold">Date of Covid-19 Positive<span class="text-danger">*</span></label>
                                            <input type="date" class="form-control" name="positive_date" id="pdate">
                                            @if ($errors->has('positive_date'))
                                                <span class="text-danger">{{ $errors->first('positive_date') }}</span>
                                            @endif 
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="ndate" class="form-label fw-bold">Date of Covid-19 Negative<span class="text-danger">*</span></label>
                                            <input type="date" class="form-control" name="negative_date" id="ndate">
                                            @if ($errors->has('negative_date'))
                                                <span class="text-danger">{{ $errors->first('negative_date') }}</span>
                                            @endif 
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="state" class="form-label fw-bold">State<span class="text-danger">*</span></label>
                                            <select  id="state-dd" name="state_id" class="form-control">
                                                <option value="">Select State</option>
                                                @foreach ($states as $state)
                                                <option value="{{$state->state_id}}">
                                                    {{$state->sname}}
                                                </option>
                                                @endforeach
                                            </select>
                                            @if ($errors->has('state_id'))
                                                <span class="text-danger">{{ $errors->first('state_id') }}</span>
                                            @endif 
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="city"  class="form-label fw-bold">City<span class="text-danger">*</span></label>
                                            <select id="city" class="form-control" name="city_id">
                                                <option>Select City</option>
                                            </select>
                                            @if ($errors->has('city_id'))
                                                <span class="text-danger">{{ $errors->first('city_id') }}</span>
                                            @endif 
                                        </div>
                                        <div class="form-group mb-3">
                                            <label for="phone-number" class="form-label fw-bold">Phone Number<span class="text-danger">*</span></label>
                                            <input type="number" class="form-control" name="phone" id="phone" placeholder="Your Phone Number">
                                            @if ($errors->has('phone'))
                                                <span class="text-danger">{{ $errors->first('phone') }}</span>
                                            @endif 
                                        </div>
                                        <button type="submit" name="submit" class="btn btn-lg btn-success">Submit</button>
                                    </form>
                                </div>
							</div>
						</div>
						
					</div>

				</div>


                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                <script>
                    $(document).ready(function () {
                    
                        $('#state-dd').on('change', function () {
                            var idState = this.value;
                            // alert(idState)
                            $("#city").html('');
                            $.ajax({
                                url: "{{url('fetchdonor-cities')}}",
                                type: "POST",
                                data: {
                                    state_id: idState,
                                    _token: '{{csrf_token()}}'
                                },
                                dataType: 'json',
                                success: function (res) {
                                    $('#city').html('<option value="">Select City</option>');
                                    $.each(res.cities, function (key, value) {
                                        $("#city").append('<option value="' + value
                                            .city_id + '">' + value.cname + '</option>');
                                    });
                                }
                            });
                        });
                    });
                </script> 
                <script>
                    function myFunction() {
                        var x = document.getElementById("age").value;
                        if(x<18 || x>60){
                            alert('Age musrt be in between 18 to 60 years');
                            document.getElementById("age").value =" ";
                        }
                    }
                </script>  

			@endsection