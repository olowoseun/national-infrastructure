@extends('layouts.app', [
  'class' => 'off-canvas-sidebar',
  'classPage' => 'login-page',
  'activePage' => '',
  'title' => __('MBNP'),
  'pageBackground' => asset("material").'/img/login.jpg'
])

@section('content')
<div class="container" style="height: auto;">
  <div class="row justify-content-center">
      <div class="col-lg-7 col-md-8">
          <h1 class="text-white text-center">{{ __('Welcome to the National Infrastructure Database.') }}</h1>
      </div>
  </div>
</div>
@endsection
