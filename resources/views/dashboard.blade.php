@extends('layouts.sidebar')
			@section('main')
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3"><strong>Dashboard</strong></h1>
					
					<div class="row">
						<div class="col-xl-12 col-xxl-5 d-flex">
							<div class="w-100">
								<div class="row">
									<div class="col-sm-6">
										<div class="card">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">Count of Donors</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="users"></i>
														</div>
													</div>
												</div>
												<h1 class="mt-1 mb-3">{{$donor}}</h1>
												
											</div>
										</div>
										
									</div>
									<div class="col-sm-6">
										<div class="card">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">Count of Requests</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="users"></i>
														</div>
													</div>
												</div>
												<h1 class="mt-1 mb-3">{{$plasma}}</h1>
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>

					

					<div class="row">
						<!-- <div class="col-12 col-lg-12 col-xxl-9 "> -->
								<div class="col-md-6">
									<div class="card ">
										<div class="card-header">

											<h5 class="card-title mb-0">State wise Plasma Donor count</h5>
										</div>
										<table class="table table-hover my-0">
											<thead>
												<tr>
													<th>State</th>
													<th class="d-none d-xl-table-cell">Donors Count</th>
												</tr>
											</thead>
											<tbody>
												@foreach($stateDonors as $countDonor)
												<tr>
													<td>{{$countDonor->sname}}</td>
													<td class="d-xl-table-cell">{{$countDonor->donors_count}}</td>
													
												</tr>
												@endforeach
												
											</tbody>
										</table>
									</div>
								</div>
								<div class="col-md-6">
									<div class="card ">
										<div class="card-header">

											<h5 class="card-title mb-0">State wise Plasma Request count</h5>
										</div>
										<table class="table table-hover my-0">
											<thead>
												<tr>
													<th>State</th>
													<th class="d-none d-xl-table-cell">Donors Count</th>
												</tr>
											</thead>
											<tbody>
												@foreach($stateRequests as $countRequest)
												<tr>
													<td>{{$countRequest->sname}}</td>
													<td class="d-xl-table-cell">{{$countRequest->plasma_count}}</td>
													
												</tr>
												@endforeach
												
											</tbody>
										</table>
									</div>
								</div>
							<!-- </div> -->
					</div>

				</div>

			@endsection