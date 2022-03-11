<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{State, City, Donor, PlasmaRequest};
use DB;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $donor = Donor::count();
        $plasma = PlasmaRequest::count();


        $stateDonors = DB::table('states')
        ->join('donors', 'states.state_id', '=', 'donors.state_id')
        ->select('states.state_id', 'states.sname', DB::raw('COUNT(donors.state_id) AS donors_count'))
        ->groupBy('states.state_id', 'states.sname')->get();

        // $stateDonors = DB::table('states')
        // ->join('donors', 'states.state_id', '=', 'donors.state_id')
        // ->join('plasma_requests', 'states.state_id', '=', 'plasma_requests.state_id')
        // ->select('states.state_id', 'states.name', DB::raw('COUNT(donors.state_id) AS donors_count'), 
        // DB::raw('COUNT(plasma_requests.state_id) AS plasma_count'))
        // ->groupBy('states.state_id', 'states.name')->get();

        $stateRequests = DB::table('states')
        ->join('plasma_requests', 'states.state_id', '=', 'plasma_requests.state_id')
        ->select('states.state_id', 'states.sname', DB::raw('COUNT(plasma_requests.state_id) AS plasma_count'))
        ->groupBy('states.state_id', 'states.sname')->get();
        
        return view('dashboard', compact('donor', 'plasma', 'stateDonors', 'stateRequests'));
    }
}
