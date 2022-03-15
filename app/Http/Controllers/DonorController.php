<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{State, City, Donor};
use DB;

class DonorController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index(Request $request)
    {
        $blood_group = $request['blood_group'];
        $stateInput = $request['state_id'];
        if(($blood_group != "" && $stateInput != "")){
            // $state = State::where('sname','LIKE','%'.$stateInput.'%')->get();
            // $state_id = $state[0]->state_id;
            $donors = DB::table('donors')
            ->join('states','donors.state_id', '=', 'states.state_id')
            ->join('cities','donors.city_id', '=', 'cities.city_id')
            ->select('donors.id','donors.dname','donors.gender','donors.age','donors.blood_group','donors.positive_date','donors.negative_date','donors.phone','states.sname','cities.cname')
            ->where('blood_group','=',$blood_group)->where('donors.state_id',"=",$stateInput)->paginate(5);
            

        }elseif($blood_group == "" && $stateInput !=""){
            // $state = State::where('sname','LIKE','%'.$stateInput.'%')->get();
            // $state_id = $state[0]->state_id;
            $donors = DB::table('donors')
            ->join('states','donors.state_id', '=', 'states.state_id')
            ->join('cities','donors.city_id', '=', 'cities.city_id')
            ->select('donors.id','donors.dname','donors.gender','donors.age','donors.blood_group','donors.positive_date','donors.negative_date','donors.phone','states.sname','cities.cname')
            ->where('donors.state_id',"=",$stateInput)->paginate(5);

        }elseif($blood_group != "" && $stateInput ==""){
            // $state = State::where('sname','LIKE',$stateInput)->get();
            // $state_id = $state[0]->state_id;
            $donors = DB::table('donors')
            ->join('states','donors.state_id', '=', 'states.state_id')
            ->join('cities','donors.city_id', '=', 'cities.city_id')
            ->select('donors.id','donors.dname','donors.gender','donors.age','donors.blood_group','donors.positive_date','donors.negative_date','donors.phone','states.sname','cities.cname')
            ->where('blood_group',"=",$blood_group)->paginate(5);


        }else{
            $donors = DB::table('donors')
            ->join('states','donors.state_id', '=', 'states.state_id')
            ->join('cities','donors.city_id', '=', 'cities.city_id')
            ->select('donors.id','donors.dname','donors.gender','donors.age','donors.blood_group','donors.positive_date','donors.negative_date','donors.phone','states.sname','cities.cname')
            ->orderBy('id','DESC')->paginate(10);
        }

        // $search = $request['search'] ?? "";
        // $searchby = $request['searchby'] ?? "";
        // if($search != "" && $searchby == "blood_group"){
        //     //where
        //     $donors = DB::table('donors')
        //     ->join('states','donors.state_id', '=', 'states.state_id')
        //     ->join('cities','donors.city_id', '=', 'cities.city_id')
        //     ->select('donors.id','donors.dname','donors.gender','donors.age','donors.blood_group','donors.positive_date','donors.negative_date','donors.phone','states.sname','cities.cname')
        //     ->where('blood_group','LIKE',$search)->paginate();

        // }elseif($search != "" && $searchby == "state"){
        //         // dd($request['search']);
        //         $state = State::where('sname','LIKE',$search)->get();
        //         $state_id = $state[0]->state_id;
        //         $donors = DB::table('donors')
        //         ->join('states','donors.state_id', '=', 'states.state_id')
        //         ->join('cities','donors.city_id', '=', 'cities.city_id')
        //         ->select('donors.id','donors.dname','donors.gender','donors.age','donors.blood_group','donors.positive_date','donors.negative_date','donors.phone','states.sname','cities.cname')
        //         ->where('donors.state_id','=', $state_id)->paginate();
        //         // dd($plasmarequests);
        //     }else{
        //     $donors = DB::table('donors')
        // ->join('states','donors.state_id', '=', 'states.state_id')
        // ->join('cities','donors.city_id', '=', 'cities.city_id')
        // ->select('donors.id','donors.dname','donors.gender','donors.age','donors.blood_group','donors.positive_date','donors.negative_date','donors.phone','states.sname','cities.cname')
        // ->orderBy('id','DESC')->paginate(10);
        // }
        $states = State::all();
        
       $count = count($donors);
    
        return view('donorsList', compact('donors','states','count','stateInput','blood_group'));
    }
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['states'] = State::all();
        return view('addDonor', $data);
    }

    public function fetchCity(Request $request)
    {
        $data['cities'] = City::where("state_id",$request->state_id)->get(["cname", "city_id"]);
        
        return response()->json($data);
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'dname'=> 'required',
            'gender'=> 'required',
            'age' => 'required|min:2|numeric',
            'blood_group' => 'required',
            'positive_date' => 'required',
            'negative_date'=> 'required',
            'state_id' => 'required',
            'city_id' => 'required',
            'phone' => 'required|digits:10|numeric',
        ]);
        // dd($request->all());
        $Donors = Donor::create($request->all());

        return redirect('donorsList')->with('sucess', "Donor Added Successfully");
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // $donor = Donor::find($id);
        // $states = State::all();
        // return view('editDonor', compact('donor','states'));
        $donor= DB::table('donors')
        ->join('states','donors.state_id', '=', 'states.state_id')
        ->join('cities','donors.city_id', '=', 'cities.city_id')
        ->select('donors.id','donors.dname','donors.gender','donors.age','donors.blood_group','donors.positive_date','donors.negative_date','donors.phone','states.sname','cities.cname','states.state_id','cities.city_id')
        ->find($id);
        // dd($plasma);
        $states = State::all();
        return view('editDonor', compact('donor','states'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'dname'=> 'required',
            'gender'=> 'required',
            'age' => 'required|min:2|numeric',
            'blood_group' => 'required',
            'positive_date' => 'required',
            'negative_date'=> 'required',
            'state_id' => 'required',
            'city_id' => 'required',
            'phone' => 'required|min:11|numeric',
        ]);
        // dd($request->all());
        $donor = Donor::find($id);
        $donor->update($request->all());

        return redirect('donorsList')->with('success', "Donor Updated Successfully");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Donor::where('id','=',$id)->delete();
        return redirect('donorsList');
    }
}
