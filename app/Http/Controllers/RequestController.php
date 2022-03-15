<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\{State, City, PlasmaRequest};
use DB;

class RequestController extends Controller
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
            $plasmarequests = DB::table('plasma_requests')
            ->join('states','plasma_requests.state_id', '=', 'states.state_id')
            ->join('cities','plasma_requests.city_id', '=', 'cities.city_id')
            ->select('plasma_requests.id','plasma_requests.rname','plasma_requests.gender','plasma_requests.age','plasma_requests.blood_group','plasma_requests.positive_date','plasma_requests.negative_date','plasma_requests.phone','states.sname','cities.cname')
            ->where('blood_group','=',$blood_group)->where('plasma_requests.state_id',"=",$stateInput)->paginate(5);

        }elseif($blood_group == "" && $stateInput !=""){
            // $state = State::where('sname','LIKE','%'.$stateInput.'%')->get();
            // $state_id = $state[0]->state_id;
            $plasmarequests = DB::table('plasma_requests')
            ->join('states','plasma_requests.state_id', '=', 'states.state_id')
            ->join('cities','plasma_requests.city_id', '=', 'cities.city_id')
            ->select('plasma_requests.id','plasma_requests.rname','plasma_requests.gender','plasma_requests.age','plasma_requests.blood_group','plasma_requests.positive_date','plasma_requests.negative_date','plasma_requests.phone','states.sname','cities.cname')
            ->where('plasma_requests.state_id',"=",$stateInput)->paginate(5);

        }elseif($blood_group != "" && $stateInput ==""){
            // $state = State::where('sname','LIKE',$stateInput)->get();
            // $state_id = $state[0]->state_id;
            $plasmarequests = DB::table('plasma_requests')
            ->join('states','plasma_requests.state_id', '=', 'states.state_id')
            ->join('cities','plasma_requests.city_id', '=', 'cities.city_id')
            ->select('plasma_requests.id','plasma_requests.rname','plasma_requests.gender','plasma_requests.age','plasma_requests.blood_group','plasma_requests.positive_date','plasma_requests.negative_date','plasma_requests.phone','states.sname','cities.cname')
            ->where('blood_group',"=",$blood_group)->paginate(5);


        }else{
            $plasmarequests = DB::table('plasma_requests')
            ->join('states','plasma_requests.state_id', '=', 'states.state_id')
            ->join('cities','plasma_requests.city_id', '=', 'cities.city_id')
            ->select('plasma_requests.id','plasma_requests.rname','plasma_requests.gender','plasma_requests.age','plasma_requests.blood_group','plasma_requests.positive_date','plasma_requests.negative_date','plasma_requests.phone','states.sname','cities.cname')
            ->orderBy('id','DESC')->paginate(10);
        }

        
        // $search = $request['search'] ?? "";
        // $searchby = $request['searchby'] ?? "";
        // // dd($searchby);
        // if($search != "" && $searchby == "blood_group"){
        //     //where
        //     $plasmarequests= DB::table('plasma_requests')
        //     ->join('states','plasma_requests.state_id', '=', 'states.state_id')
        //     ->join('cities','plasma_requests.city_id', '=', 'cities.city_id')
        //     ->select('plasma_requests.id','plasma_requests.rname','plasma_requests.gender','plasma_requests.age','plasma_requests.blood_group','plasma_requests.positive_date','plasma_requests.negative_date','plasma_requests.phone','states.sname','cities.cname')
        //     ->where('blood_group','LIKE',$search)->paginate();

        // }elseif($search != "" && $searchby == "state"){
        //     // dd($request['search']);
        //     $state = State::where('sname','LIKE',$search)->get();
        //     $state_id = $state[0]->state_id;
        //     $plasmarequests = DB::table('plasma_requests')
        //     ->join('states','plasma_requests.state_id', '=', 'states.state_id')
        //     ->join('cities','plasma_requests.city_id', '=', 'cities.city_id')
        //     ->select('plasma_requests.id','plasma_requests.rname','plasma_requests.gender','plasma_requests.age','plasma_requests.blood_group','plasma_requests.positive_date','plasma_requests.negative_date','plasma_requests.phone','states.sname','cities.cname')
        //     ->where('plasma_requests.state_id','=', $state_id)->paginate();
        //     // dd($plasmarequests);
        // }else{
        //     $plasmarequests = DB::table('plasma_requests')
        //     ->join('states','plasma_requests.state_id', '=', 'states.state_id')
        //     ->join('cities','plasma_requests.city_id', '=', 'cities.city_id')
        //     ->select('plasma_requests.id','plasma_requests.rname','plasma_requests.gender','plasma_requests.age','plasma_requests.blood_group','plasma_requests.positive_date','plasma_requests.negative_date','plasma_requests.phone','states.sname','cities.cname')
        //     ->orderBy('id', 'DESC')->paginate(10);
        // }
       $count = count($plasmarequests);
       $states = State::all();
    
        return view('requestsList', compact('plasmarequests','states','count','stateInput','blood_group'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['states'] = State::all();
        return view('addRequest', $data);
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
            'rname'=> 'required',
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
        $plasma = PlasmaRequest::create($request->all());

        return redirect('requestsList')->with('success', "Request Added Successfully");
        
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
        // $plasma = PlasmaRequest::find($id);
        $plasma= DB::table('plasma_requests')
        ->join('states','plasma_requests.state_id', '=', 'states.state_id')
        ->join('cities','plasma_requests.city_id', '=', 'cities.city_id')
        ->select('plasma_requests.id','plasma_requests.rname','plasma_requests.gender','plasma_requests.age','plasma_requests.blood_group','plasma_requests.positive_date','plasma_requests.negative_date','plasma_requests.phone','states.sname','cities.cname','states.state_id','cities.city_id')
        ->find($id);
        // dd($plasma);
        $states = State::all();
        return view('editRequest', compact('plasma','states'));
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
            'rname'=> 'required',
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
        $plasma = PlasmaRequest::find($id);
        $plasma->update($request->all());

        return redirect('requestsList')->with('success', "Request Updated Successfully");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        PlasmaRequest::where('id','=',$id)->delete();
        return redirect('requestsList');
    }
}
