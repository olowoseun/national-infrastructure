@extends('layouts.app')

@section('content')

<div class="col-md-4 col-lg-4 pull-left bg-info text-dark">
    

    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-12 col-lg-12">
            <form action="{{ route('assets.update', [$asset->id]) }}" method="POST">
                @csrf

                @method('PUT')
                
                <div class="form-group">
                    <label for="asset-class">Asset Class</label>
                    <select name="asset-class" id="asset-class" class="form-control">
                        <option>Select Asset Class</option>
                        @foreach($asset_classes_list as $key => $value)
                            <option value="{{ $key }}">{{ $value }}</option>
                        @endforeach
                    </select>
                    {{-- {!! Form::label('Asset Class') !!}
                    {!! Form::select('asset-class', $asset_classes_list, $asset->asset_class,
                        ['class' => 'form-control', 'id' => 'asset-class']) !!} --}}
                </div>
                <div class="form-group">
                    <label for="asset-subclass">Asset Subclass</label>
                    <select name="asset-subclass" id="asset-subclass" class="form-control">                    
                            <option>Select Asset Subclass</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="asset-category">Asset Category</label>
                    <select name="asset-category" id="asset-category" class="form-control">
                            <option>Select Asset Category</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="geopolitical-zone">Geopolitical Zone</label>
                    <select name="geopolitical-zone" id="geopolitical-zone" class="form-control">
                        <option>Select Geopolitical Zone</option>
                        @foreach($geopolitical_zones_list as $key => $value)
                            <option value="{{ $key }}">{{ $value }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="state">State</label>
                    <select name="state" id="state" class="form-control">
                        <option>Select State</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="lga">LGA</label>
                    <select name="lga" id="lga" class="form-control">
                        <option>Select LGA</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="project-sponsor">Project Sponsor</label>
                    <select name="project-sponsor" id="project-sponsor" class="form-control">
                        <option>Select Project Sponsor</option>
                        @foreach($project_sponsor_list as $key => $value)
                            <option value="{{ $key }}">{{ $value }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="location-desc">Location Description</label>
                    <textarea class="form-control" name="location-desc" 
                        id="location-desc" rows="5" placeholder="Enter Location Description"
                        class="form-control autosize-target text-left">
                        {{ $asset->location_description }}
                    </textarea>
                </div>
                <div class="form-group">
                    <label for="value-2012">Value 2012</label>
                    <input type="text" class="form-control" 
                        name="value-2012" id="value-2012" 
                        placeholder="Enter value 2012"
                        value="{{ $asset->value_2012 }}">
                </div>
                <div class="form-group">
                    <label for="value-2013">Value 2013</label>
                    <input type="text" class="form-control" 
                        name="value-2013" id="value-2013" 
                        placeholder="Enter value 2013"
                        value="{{ $asset->value_2013 }}">
                </div>
                <div class="form-group">
                    <label for="value-2014">Value 2014</label>
                    <input type="text" class="form-control" 
                        name="value-2014" id="value-2014" 
                        placeholder="Enter value 2014"
                        value="{{ $asset->value_2014 }}">
                </div>
                <div class="form-group">
                    <label for="value-2015">Value 2015</label>
                    <input type="text" class="form-control" 
                        name="value-2015" id="value-2015" 
                        placeholder="Enter value 2015"
                        value="{{ $asset->value_2015 }}">
                </div>
                <div class="form-group">
                    <label for="value-2016">Value 2016</label>
                    <input type="text" class="form-control" 
                        name="value-2016" id="value-2016" 
                        placeholder="Enter value 2016"
                        value="{{ $asset->value_2016 }}">
                </div>
                <div class="form-group">
                    <label for="value-2017">Value 2017</label>
                    <input type="text" class="form-control" 
                        name="value-2017" id="value-2017" 
                        placeholder="Enter value 2017"
                        value="{{ $asset->value_2017 }}">
                </div>
                <div class="form-group">
                    <label for="value-2018">Value 2018</label>
                    <input type="text" class="form-control" 
                        name="value-2018" id="value-2018" 
                        placeholder="Enter value 2018"
                        value="{{ $asset->value_2018 }}">
                </div>
                <div class="form-group">
                    <label for="value-2019">Value 2019</label>
                    <input type="text" class="form-control" 
                        name="value-2019" id="value-2019" 
                        placeholder="Enter value 2019"
                        value="{{ $asset->value_2019 }}">
                </div>
                <div class="form-group">
                    <input type="submit" value="Submit" class="btn btn-primary">
                </div>
            </form>            
        </div>   
    </div>
</div>

<div class="col-md-3 col-lg-3 col-sm-3 pull-right">        
        <div class="sidebar-module">
          <h4>Actions</h4>
          <ol class="list-unstyled">
            <li><a href="/assets/{{$asset->id}}">View Asset</a></li>
            <li><a href="/assets">All Assets</a></li>
          </ol>
        </div>        
      </div>
@endsection
