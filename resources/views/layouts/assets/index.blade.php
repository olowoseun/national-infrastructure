@extends('layouts.app')

@section('content')
<!-- <div class="col-md-5 col-lg-5 pull-left">
    <div class="panel panel-primary"> 
        <div class="panel-heading">Assets</div>
        <div class="panel-body">
            <ul class="list-group">
                @foreach($assets as $asset)
                    <li class="list-group-item"><a href="/assets/{{ $asset->id }}">{{ $asset->asset_class }}  <p>Date created:  {{ $asset->created_at }}</p></a></li>
                @endforeach
            </ul>
        </div>
    </div>
</div>
<div class="col-md-3 col-lg-3 col-sm-3 pull-right">        
    <div class="sidebar-module">
        <h4>Actions</h4>
        <ol class="list-unstyled">
        <li><a href="/assets/create">Add New</a></li>
        {{-- <li><a href="/assets/{{ $asset->id }}/edit">Edit</a></li> --}}
        </ol>
    </div>   
</div> -->
<div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
            <div class="card">
              <div class="card-header card-header-rose card-header-icon">
                <div class="card-icon">
                  <i class="material-icons">filter_none</i>
                </div>
                <h4 class="card-title">{{ __('Items') }}</h4>
              </div>
              <div class="card-body">
                @can('create', App\Item::class)
                  <div class="row">
                    <div class="col-12 text-right">
                      <a href="{{ route('item.create') }}" class="btn btn-sm btn-rose">{{ __('Add Item') }}</a>
                    </div>
                  </div>
                @endcan
                <div class="table-responsive">
                  <table id="datatables" class="table table-striped table-no-bordered table-hover" style="display:none">
                    <thead class="text-primary">
                      <th>
                          {{ __('Name') }}
                      </th>
                      <th>
                        {{ __('Category') }}
                      </th>
                      <th>
                        {{ __('Picture') }}
                      </th>
                      <th>
                        {{ __('Tags') }}
                      </th>
                      <th>
                        {{ __('Creation date') }}
                      </th>
                      @can('manage-items', App\User::class)
                        <th class="text-right">
                          {{ __('Actions') }}
                        </th>
                      @endcan
                    </thead>
                    <tbody>
                      @foreach($items as $item)
                        <tr>
                          <td>
                            {{ $item->name }}
                          </td>
                          <td>
                            {{ $item->category->name }}
                          </td>
                          <td>
                            <img src="{{ $item->path() }}" alt="" style="max-width: 200px;">
                          </td>
                          <td>
                            @foreach ($item->tags as $tag)
                                <span class="badge badge-default" style="background-color:{{ $tag->color }}">{{ $tag->name }}</span>
                            @endforeach
                          </td>
                          <td>
                            {{ $item->created_at->format('Y-m-d') }}
                          </td>
                          @can('manage-items', App\User::class)
                            @if (auth()->user()->can('update', $item) || auth()->user()->can('delete', $item))
                              <td class="td-actions text-right">
                                <form action="{{ route('item.destroy', $item) }}" method="post">
                                    @csrf
                                    @method('delete')
                                    
                                    @can('update', $item)
                                      <a rel="tooltip" class="btn btn-success btn-link" href="{{ route('item.edit', $item) }}" data-original-title="" title="">
                                        <i class="material-icons">edit</i>
                                        <div class="ripple-container"></div>
                                      </a>
                                    @endcan
                                    @can('delete', $item)
                                      <button type="button" class="btn btn-danger btn-link" data-original-title="" title="" onclick="confirm('{{ __("Are you sure you want to delete this user?") }}') ? this.parentElement.submit() : ''">
                                          <i class="material-icons">close</i>
                                          <div class="ripple-container"></div>
                                      </button>
                                    @endcan
                                </form>
                              </td>
                            @endif
                          @endcan
                        </tr>
                      @endforeach
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
@endsection
  
@push('js')
  <script>
    $(document).ready(function() {
      $('#datatables').fadeIn(1100);
      $('#datatables').DataTable({
        "pagingType": "full_numbers",
        "lengthMenu": [
          [10, 25, 50, -1],
          [10, 25, 50, "All"]
        ],
        responsive: true,
        language: {
          search: "_INPUT_",
          searchPlaceholder: "Search items",
        },
        "columnDefs": [
          { "orderable": false, "targets": 5 },
        ],
      });
    });
  </script>
@endpush