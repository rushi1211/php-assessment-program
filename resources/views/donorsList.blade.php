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
									<h5 class="card-title mb-5 text-start"><strong>Lists of Plasma Donors</strong>&nbsp;<a href="addDonor"><button class="btn btn-primary"><i class="fa fa-plus"></i>
										 Add Donors</button></a></h5>
									
										 <div>
											<form action="">
												<div class="row">
												<div class="col-md-3">
														<select class="form-control" name="searchby" required>
															<option value="*">Select searcby </option>
															<option value="state">Search By State</option>
															<option value="blood_group">Search By Blood Group</option>

														</select>
													</div>
													<div class="col-md-3">
														<input class="form-control" id="myInput" name="search" value="{{$search}}" type="text" placeholder="Search..">
													</div>
													<div class="col-md-6">
														<button class="btn btn-info" type="submit" name="submit">Search by Blood Group</button>
													</div>
												</div>
											</form>
										</div>
								</div>
								<div class="table-responsive p-2">
									<table class="table table-striped table-responsive my-0" >
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
												<th class="d-xl-table-cell" colspam="2">Action</th>
											</tr>
										</thead>
										<tbody>
										@foreach ($donors as $i => $donor)
											<tr>
												<td>{{$i+1}}</td>
												<td class=" d-xl-table-cell">{{$donor->dname}}</td>
												<td class=" d-xl-table-cell">{{$donor->gender}}</td>
												<td class=" d-xl-table-cell">{{$donor->age}}</td>
												<td class=" d-xl-table-cell">{{$donor->blood_group}}</td>
												<td class=" d-xl-table-cell">{{$donor->positive_date}}</td>
												<td class=" d-xl-table-cell">{{$donor->negative_date}}</td>
												<td class=" d-xl-table-cell">{{$donor->sname}}</td>
												<td class=" d-xl-table-cell">{{$donor->cname}}</td>
												<td class=" d-xl-table-cell">{{$donor->phone}}</td>
												<td>
													<a href="/editDonor/{{$donor->id}}" class="btn btn-info"><i class="fa fa-edit"></i></a>	
												</td>
												<td>
													<form action="{{url('deleteDonor/'.$donor->id)}}" method="post">
														@csrf
														@method('DELETE')
														<button class="btn btn-danger" type="submit" name="submit"><i class="fa fa-trash"></i></button>
													</form>
												</td>	
											</tr>
											@endforeach
										</tbody>
									</table>
									<div class="row mt-5">
										{{$donors->links()}}
									</div>
								</div>
							</div>
						</div>
						
					</div>

				</div>

			@endsection