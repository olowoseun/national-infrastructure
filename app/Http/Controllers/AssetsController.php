<?php

namespace App\Http\Controllers;

use App\Asset;
use App\AssetClass;
use App\AssetSubclass;
use App\AssetCategory;
use App\GeopoliticalZone;
use App\State;
use App\Lga;
use App\ProjectSponsor;
use App\Http\Requests\AssetRequest;
use Illuminate\Support\Facades\Auth;

class AssetsController extends Controller
{
    public function __construct()
    {
        $this->authorizeResource(Asset::class);
    }

    /**
     * Display a listing of the assets.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Asset $model) {
        $this->authorize('manage-assets', User::class);
        
        return view('assets.index', ['assets' => $model->all()]);
    }

    /**
     * Show the form for creating a new asset.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $asset_classes_list = AssetClass::all()->pluck('name', 'id');
        $geopolitical_zones_list = GeopoliticalZone::all()
                            ->pluck('name', 'id');
        $project_sponsor_list = ProjectSponsor::all()->pluck('name', 'id');
        return view('assets.create', compact('asset_classes_list', 
        'geopolitical_zones_list', 'project_sponsor_list'));
    }

    /**
     * Store a newly created asset in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AssetRequest $request, Asset $model)
    {   
        // $model->create([
        //     'asset_class' => AssetClass::where('id', $request->input('asset-class'))->pluck('name')[0],
        //     'asset_subclass' => AssetSubclass::where('id', $request->input('asset-subclass'))->pluck('name')[0],
        //     'asset_category' => AssetCategory::where('id', $request->input('asset-category'))->pluck('name')[0],
        //     'geopolitical_zone' => GeopoliticalZone::where('id', $request->input('geopolitical-zone'))->pluck('name')[0],
        //     'state' => State::where('id', $request->input('state'))->pluck('name')[0],
        //     'lga' => Lga::where('id', $request->input('lga'))->pluck('name')[0],
        //     'project_sponsor' => ProjectSponsor::where('id', $request->input('project-sponsor'))->pluck('name')[0],
        //     'location_description' => $request->input('location-desc'),
        //     'value_2012' => $request->input('value-2012'),
        //     'value_2013' => $request->input('value-2013'),
        //     'value_2014' => $request->input('value-2014'),
        //     'value_2015' => $request->input('value-2015'),
        //     'value_2016' => $request->input('value-2016'),
        //     'value_2017' => $request->input('value-2017'),
        //     'value_2018' => $request->input('value-2018'),
        //     'value_2019' => $request->input('value-2019')            
        // ]);
        $model->create($request->all());
        
        return redirect()->route('asset.index')->withStatus(__('Asset successfully created.'));
    }
 
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $asset = Asset::find($id);
        return view('assets.show', compact('asset'));
    }

    /**
     * Show the form for editing the specified asset.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Asset $asset)
    {
        $asset_classes_list = AssetClass::all()->pluck('name', 'id');
        $geopolitical_zones_list = GeopoliticalZone::all()
                            ->pluck('name', 'id');
        $project_sponsor_list = ProjectSponsor::all()->pluck('name', 'id');
        return view('assets.edit', compact('asset_classes_list', 
        'geopolitical_zones_list', 'project_sponsor_list', 'asset'));
    }

    /**
     * Update the specified asset in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(AssetRequest $request, Asset $asset)
    {
        // save data
        $asset->update([
                    'asset_class' => AssetClass::where('id', $request->input('asset-class'))->pluck('name')[0],
                    'asset_subclass' => AssetSubclass::where('id', $request->input('asset-subclass'))->pluck('name')[0],
                    'asset_category' => AssetCategory::where('id', $request->input('asset-category'))->pluck('name')[0],
                    'geopolitical_zone' => GeopoliticalZone::where('id', $request->input('geopolitical-zone'))->pluck('name')[0],
                    'state' => State::where('id', $request->input('state'))->pluck('name')[0],
                    'lga' => Lga::where('id', $request->input('lga'))->pluck('name')[0],
                    'project_sponsor' => ProjectSponsor::where('id', $request->input('project-sponsor'))->pluck('name')[0],
                    'location_description' => $request->input('location-desc'),
                    'value_2012' => $request->input('value-2012'),
                    'value_2013' => $request->input('value-2013'),
                    'value_2014' => $request->input('value-2014'),
                    'value_2015' => $request->input('value-2015'),
                    'value_2016' => $request->input('value-2016'),
                    'value_2017' => $request->input('value-2017'),
                    'value_2018' => $request->input('value-2018'),
                    'value_2019' => $request->input('value-2019'),
                ]);

        return redirect()->route('asset.index')->withStatus(__('Asset successfully updated.'));
    }

    /**
     * Remove the specified asset from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */    
    public function destroy(Asset $asset)
    {
        $asset->delete();

        return redirect()->route('asset.index')->withStatus(__('Asset successfully deleted.'));
    }    

    public function asset_subclass($id) {
        $asset_subclass = AssetSubclass::where('asset_classes_id', $id)
                            ->pluck('name', 'id');        
        
        return json_encode($asset_subclass);
    }
    
    public function asset_category($id) {
        $asset_category = AssetCategory::where('asset_subclass_id', $id)
                            ->pluck('name', 'id');
        return json_encode($asset_category);
    }

    public function states($id) {
        $states = State::where('geopolitical_zone_id', $id)
                            ->pluck('name', 'id');
        return json_encode($states);
    }
    
    public function lgas($id) {
        $lgas = LGA::where('state_id', $id)
                            ->pluck('name', 'id');
        return json_encode($lgas);
    }
}
