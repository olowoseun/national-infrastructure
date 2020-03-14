@extends('layouts.app')

@section('content')

<div class="col-md-5 col-lg-5 bg-success">    
    <!-- Jumbotron -->    
    <div class="jumbotron">
        <!--<h1>{{ $asset->asset_class}}</h1> -->
        <p class="lead">Asset Class: {{ $asset->asset_class}}</p>
        <p class="lead">Asset Subclass: {{ $asset->asset_subclass}}</p>
        <p class="lead">Asset Category: {{ $asset->asset_category}}</p>
        <p class="lead">Geo Zone: {{ $asset->geopolitical_zone}}</p>
        <p class="lead">State Located: {{ $asset->state}}</p>
        <p class="lead">LGA Located: {{ $asset->lga}}</p>
        <p class="lead">Asset Sponsor: {{ $asset->project_sponsor}}</p>
        <p class="lead">Location Description: {{ $asset->location_description}}</p>
        <p class="lead">Asset Value in 2012: {{ $asset->value_2012}}</p>
        <p class="lead">Asset Value in 2013: {{ $asset->value_2013}}</p>
        <p class="lead">Asset Value in 2014: {{ $asset->value_2014}}</p>
        <p class="lead">Asset Value in 2015: {{ $asset->value_2015}}</p>
        <p class="lead">Asset Value in 2016: {{ $asset->value_2016}}</p>
        <p class="lead">Asset Value in 2017: {{ $asset->value_2017}}</p>
        <p class="lead">Asset Value in 2018: {{ $asset->value_2018}}</p>
        <p class="lead">Asset Value in 2019: {{ $asset->value_2019}}</p>
        <p class="lead">Date of Entry: {{ $asset->created_at}}</p>
        <p class="lead">Date updated: {{ $asset->updated_at}}</p>
        <p><a class="btn btn-lg btn-success" href="#" role="button">Successfully updated</a></p>
    </div>

    <!-- Example row of columns -->
    {{-- <div class="row">
        @foreach($asset->projects as $project)
        <div class="col-md-4 col-lg-4">
            <h2>{{ $project->name }}</h2>
            <p class="text-danger">{{ $project->description }}</p>
            <p>This is a text field trial of description</p>
            <p><a class="btn btn-primary" href="/projects/{{ $project->id }}" role="button">View project ยป</a></p>
        </div>    
        @endforeach     
    </div> --}}
</div>

<div class="col-md-3 col-lg-3 col-sm-3 pull-right">        
        <div class="sidebar-module">
          <h4>Actions</h4>
          <ol class="list-unstyled">
          <!--  <li><a href="#">New User</a></li> -->
            <li><a href="/assets">View all assets</a></li>
            <li><a href="/assets/{{$asset->id}}/edit">Edit</a></li>
            <li>
              <a href="#"
                onclick="
                  var result = confirm('Are you sure you wish to delete this asset?');
                  if(result) {
                    event.preventDefault();
                    document.getElementById('delete-form').submit();
                  }
                ">Delete</a>
                <form id="delete-form" action="{{ route('assets.destroy', [$asset->id]) }}"
                  method="POST" style="display: none">
                  @method('DELETE')
                  @csrf
                </form>
                
            </li>
          </ol>
        </div>        
      </div>
      
@endsection