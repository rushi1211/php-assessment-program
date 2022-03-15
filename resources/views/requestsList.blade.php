@extends('layouts.sidebar')
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>			
@section('main')
				<div class="container-fluid p-0">
					<div class="row">
						
						<div class="col-12 col-lg-12 col-xxl-9 d-flex">
							
							<div class="card flex-fill">
							@if (session('success'))
								<div class="alert alert-success alert-dismissible fade show" role="alert">
									{{ session('success') }}
								</div>
							@endif
								<div class="card-header">
									<h5 class="card-title mb-5"><strong>Lists of Plasma Requests</strong>&nbsp; <a href="addRequest"><button class="btn btn-primary"><i class="fa fa-plus"></i>
 										Add Requests</button></a></h5>
										 <div>
										 <form action="">
												<div class="row">
												<!-- <div class="col-md-3">
														<select class="form-control" name="searchby" required>
															<option value="*">Select searchby </option>
															<option value="state">Search By State</option>
															<option value="blood_group">Search By Blood Group</option>

														</select>
													</div> -->
													<div class="col-md-3">
														<input class="form-control" id="myInput" name="blood_group" value="{{$blood_group}}" type="text" placeholder="enter blood group">
													</div>
													<div class="col-md-3">
														<!-- <input class="form-control" id="myInput" name="state" value="{{$stateInput}}" type="text" placeholder="enter state"> -->
														<select  id="state-dd" name="state_id" class="form-control">
															<option value="">Select State</option>
															@foreach ($states as $state)
															<option value="{{$state->state_id}}">
																{{$state->sname}}
															</option>
															@endforeach
														</select>
													</div>
													<div class="col-md-3">
														<button class="btn btn-info" type="submit" name="submit">Search</button>
														<a href="/requestsList" class="btn btn-warning">Show All</a>
													</div>
												</div>
											</form>
										</div>
										
										
								</div>
								<div class="table-responsive p-2">
									<table class="table table-striped table-responsive my-0">
										<thead>
											<tr>
												<th>Sr.No</th>
												<th class=" d-xl-table-cell">Name</th>
												<th class=" d-xl-table-cell">Gender</th>
												<th class=" d-xl-table-cell">Age</th>
												<th class=" d-xl-table-cell">Blood Grp</th>
												<th class=" d-xl-table-cell">Date(Covid-19 +)</th>
												<th class=" d-xl-table-cell">Date(Covid-19 -)</th>
												<th class=" d-xl-table-cell">State</th>
												<th class=" d-xl-table-cell">City</th>
												<th class=" d-xl-table-cell">Contact</th>
												<th colspan="2" class="d-xl-table-cell">Action</th>
											</tr>
										</thead>
										@if($count != "")
										<tbody id="myTable">
										@foreach ($plasmarequests as $i => $plasmarequest)
											<tr>
												<td>{{$i+1}}</td>
												<td class=" d-xl-table-cell">{{$plasmarequest->rname}}</td>
												<td class=" d-xl-table-cell">{{$plasmarequest->gender}}</td>
												<td class=" d-xl-table-cell">{{$plasmarequest->age}}</td>
												<td class=" d-xl-table-cell">{{$plasmarequest->blood_group}}</td>
												<td class=" d-xl-table-cell">{{$plasmarequest->positive_date}}</td>
												<td class=" d-xl-table-cell">{{$plasmarequest->negative_date}}</td>
												<td class=" d-xl-table-cell">{{$plasmarequest->sname}}</td>
												<td class=" d-xl-table-cell">{{$plasmarequest->cname}}</td>
												<td class=" d-xl-table-cell">{{$plasmarequest->phone}}</td>
												<td>
													<a href="/editRequest/{{$plasmarequest->id}}" class="btn btn-info"><i class="fa fa-edit"></i></a>	
												</td>
												<td>
													<form action="deleteRequest/{{$plasmarequest->id}}" method="post">
														@csrf
														@method('delete')
														<button class="btn btn-danger" type="submit" name="submit"><i class="fa fa-trash"></i></button>
													</form>
												</td>	
											</tr>
											@endforeach
										</tbody>
										@else
											<tbody>
												<tr>
													<td colspan="11">No Record Found</td>	
												<tr>
											</tbody>
										@endif			
									</table>
									<div class="row mt-10">
										{{$plasmarequests->links()}}
									</div>
								</div>
							</div>
						</div>
						
					</div>

				</div>
				
				
				
			@endsection
			