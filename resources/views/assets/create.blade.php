@extends('layouts.app', ['activePage' => 'asset-management', 'menuParent' => 'laravel', 'titlePage' => __('Asset Management')])

@section('content')
<div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <form method="post" action="{{ route('asset.store') }}" autocomplete="off" class="form-horizontal">
            @csrf
            @method('post')

            <div class="card ">
              <div class="card-header card-header-rose card-header-icon">
                <div class="card-icon">
                  <i class="material-icons">category</i>
                </div>
                <h4 class="card-title">{{ __('Add Asset') }}</h4>
              </div>
              <div class="card-body ">
                <div class="row">
                  <div class="col-md-12 text-right">
                      <a href="{{ route('asset.index') }}" class="btn btn-sm btn-rose">{{ __('Back to list') }}</a>
                  </div>
                </div>  
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Asset Class') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('asset-class') ? ' has-danger' : '' }}">
                      <select class="selectpicker col-sm-12 pl-0 pr-0" name="asset-class" id="asset-class" data-style="select-with-transition" title="" data-size="100">                        
                        <option>Select Asset Class</option>
                        @foreach($asset_classes_list as $key => $value)
                            <option value="{{ $key }}">{{ $value }}</option>
                        @endforeach
                      </select>
                      @include('alerts.feedback', ['field' => 'asset-class'])
                    </div>
                  </div>
                </div>              
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Asset Subclass') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('asset-subclass') ? ' has-danger' : '' }}">
                      <select class="selectpicker col-sm-12 pl-0 pr-0" name="asset-subclass" id="asset-subclass" data-style="select-with-transition" title="" data-size="100">
                        <option>Select Asset Subclass</option>                                                                       
                      </select>
                      @include('alerts.feedback', ['field' => 'asset-subclass'])
                    </div>
                  </div>
                </div>              
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Asset Category') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('asset-category') ? ' has-danger' : '' }}">
                      <select class="selectpicker col-sm-12 pl-0 pr-0" name="asset-category" id="asset-category" data-style="select-with-transition" title="" data-size="100">
                        <option>Select Asset Category</option>                        
                      </select>
                      @include('alerts.feedback', ['field' => 'asset-category'])
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Geopolitical Zone') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('geopolitical-zone') ? ' has-danger' : '' }}">
                      <select class="selectpicker col-sm-12 pl-0 pr-0" name="geopolitical-zone" id="geopolitical-zone" data-style="select-with-transition" title="" data-size="100">                      
                        <option>Select Geopolitical Zone</option>
                        @foreach($geopolitical_zones_list as $key => $value)
                            <option value="{{ $key }}">{{ $value }}</option>
                        @endforeach
                      </select>
                      @include('alerts.feedback', ['field' => 'geopolitical-zone'])
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('State') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('state') ? ' has-danger' : '' }}">
                      <select class="selectpicker col-sm-12 pl-0 pr-0" name="state" id="state" data-style="select-with-transition" title="" data-size="100">
                        <option>Select State</option>                        
                      </select>
                      @include('alerts.feedback', ['field' => 'state'])
                    </div>
                  </div>
                </div>              
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('LGA') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('lga') ? ' has-danger' : '' }}">
                      <select class="selectpicker col-sm-12 pl-0 pr-0" name="lga" id="lga" data-style="select-with-transition" title="" data-size="100">
                        <option>Select LGA</option>                        
                      </select>
                      @include('alerts.feedback', ['field' => 'lga'])
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Project Sponsor') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('project_sponsor') ? ' has-danger' : '' }}">
                      <select class="selectpicker col-sm-12 pl-0 pr-0" name="project-sponsor" id="project-sponsor" data-style="select-with-transition" title="" data-size="100">                      
                        <option>Select Project Sponsor</option>
                            @foreach($project_sponsor_list as $key => $value)
                                <option value="{{ $key }}">{{ $value }}</option>
                            @endforeach
                      </select>
                      @include('alerts.feedback', ['field' => 'project-sponsor'])
                    </div>
                  </div>
                </div>              
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Location') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('location-desc') ? ' has-danger' : '' }}">
                      <textarea cols="30" rows="7" class="form-control{{ $errors->has('location-desc') ? ' is-invalid' : '' }}" name="location-desc" id="location-desc" type="text" placeholder="{{ __('Location Description') }}" required="true" aria-required="true">{{ old('location-desc') }}</textarea>
                      @include('alerts.feedback', ['field' => 'location-desc'])
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Value 2012') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('value-2012') ? ' has-danger' : '' }}">
                      <input class="form-control{{ $errors->has('value-2012') ? ' is-invalid' : '' }}" name="value-2012" id="value-2012" type="text" placeholder="{{ __('Value 2012') }}" value="{{ old('value-2012') }}" required="true" aria-required="true"/>
                      @include('alerts.feedback', ['field' => 'value-2012'])
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Value 2013') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('value-2013') ? ' has-danger' : '' }}">
                      <input class="form-control{{ $errors->has('value-2013') ? ' is-invalid' : '' }}" name="value-2013" id="value-2013" type="text" placeholder="{{ __('Value 2013') }}" value="{{ old('value-2013') }}" required="true" aria-required="true"/>
                      @include('alerts.feedback', ['field' => 'value-2013'])
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Value 2014') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('value-2014') ? ' has-danger' : '' }}">
                      <input class="form-control{{ $errors->has('value-2014') ? ' is-invalid' : '' }}" name="value-2014" id="value-2014" type="text" placeholder="{{ __('Value 2014') }}" value="{{ old('value-2014') }}" required="true" aria-required="true"/>
                      @include('alerts.feedback', ['field' => 'value-2014'])
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Value 2015') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('value-2015') ? ' has-danger' : '' }}">
                      <input class="form-control{{ $errors->has('value-2015') ? ' is-invalid' : '' }}" name="value-2015" id="value-2015" type="text" placeholder="{{ __('Value 2015') }}" value="{{ old('value-2015') }}" required="true" aria-required="true"/>
                      @include('alerts.feedback', ['field' => 'value-2015'])
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Value 2016') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('value-2016') ? ' has-danger' : '' }}">
                      <input class="form-control{{ $errors->has('value-2016') ? ' is-invalid' : '' }}" name="value-2016" id="value-2016" type="text" placeholder="{{ __('Value 2016') }}" value="{{ old('value-2016') }}" required="true" aria-required="true"/>
                      @include('alerts.feedback', ['field' => 'value-2016'])
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Value 2017') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('value-2017') ? ' has-danger' : '' }}">
                      <input class="form-control{{ $errors->has('value-2017') ? ' is-invalid' : '' }}" name="value-2017" id="value-2017" type="text" placeholder="{{ __('Value 2017') }}" value="{{ old('value-2017') }}" required="true" aria-required="true"/>
                      @include('alerts.feedback', ['field' => 'value-2017'])
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Value 2018') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('value-2018') ? ' has-danger' : '' }}">
                      <input class="form-control{{ $errors->has('value-2018') ? ' is-invalid' : '' }}" name="value-2018" id="value-2018" type="text" placeholder="{{ __('Value 2018') }}" value="{{ old('value-2018') }}" required="true" aria-required="true"/>
                      @include('alerts.feedback', ['field' => 'value-2018'])
                    </div>
                  </div>
                </div>
                <div class="row">
                  <label class="col-sm-2 col-form-label">{{ __('Value 2019') }}</label>
                  <div class="col-sm-7">
                    <div class="form-group{{ $errors->has('value-2019') ? ' has-danger' : '' }}">
                      <input class="form-control{{ $errors->has('value-2019') ? ' is-invalid' : '' }}" name="value-2019" id="value-2019" type="text" placeholder="{{ __('Value 2019') }}" value="{{ old('value-2019') }}" required="true" aria-required="true"/>
                      @include('alerts.feedback', ['field' => 'value-2019'])
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ml-auto mr-auto">
                <button type="submit" class="btn btn-rose">{{ __('Save') }}</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  

  <!--      
               
      
         
                <div class="form-group">
                    <label for="project-sponsor">Project Sponsor</label>
                    <select name="project-sponsor" id="project-sponsor" class="form-control">
                        <option>Select Project Sponsor</option>
                        @foreach($project_sponsor_list as $key => $value)
                            <option value="{{ $key }}">{{ $value }}</option>
                        @endforeach
                    </select>
                </div>
            </form>            
        </div>   
    </div>
</div>
-->
@endsection
