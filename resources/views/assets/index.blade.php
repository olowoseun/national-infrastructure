@extends('layouts.app', ['activePage' => 'asset-management', 'menuParent' => 'laravel', 'titlePage' => __('Asset Management')])

@section('content')

<div class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
            <div class="card">
              <div class="card-header card-header-rose card-header-icon">
                <div class="card-icon">
                  <i class="material-icons">category</i>
                </div>
                <h4 class="card-title">{{ __('Assets') }}</h4>
              </div>
              <div class="card-body">
                @can('create', App\Asset::class)
                  <div class="row">
                    <div class="col-12 text-right">
                      <a href="{{ route('asset.create') }}" class="btn btn-sm btn-rose">{{ __('Add asset') }}</a>
                    </div>
                  </div>
                @endcan
                <div class="table-responsive">
                  <table id="datatables" class="table table-striped table-no-bordered table-hover datatable-rose" style="display:none">
                    <thead class="text-primary">
                      <th>
                          {{ __('Class') }}
                      </th>
                      <th>
                        {{ __('Category') }}
                      </th>
                      <th>
                        {{ __('Creation date') }}
                      </th>
                      @can('manage-assets', App\User::class)
                        <th class="text-right">
                          {{ __('Actions') }}
                        </th>
                      @endcan
                    </thead>
                    <tbody>
                      @foreach($assets as $asset)
                        <tr>
                          <td>
                            {{ $asset->asset_class }}
                          </td>
                          <td>
                            {{ $asset->asset_category }}
                          </td>
                          <td>
                            {{ $asset->created_at->format('Y-m-d') }}
                          </td>
                          @can('manage-items', App\User::class)
                            <td class="td-actions text-right">
                              <form action="{{ route('asset.destroy', $asset) }}" method="post">
                                @csrf
                                @method('delete')
                                
                                @can('update', $asset)
                                  <a rel="tooltip" class="btn btn-success btn-link" href="{{ route('asset.edit', $asset) }}" data-original-title="" title="">
                                    <i class="material-icons">edit</i>
                                    <div class="ripple-container"></div>
                                  </a>
                                @endcan
                               @if (auth()->user()->can('delete', $asset))
                                  <button type="button" class="btn btn-danger btn-link" data-original-title="" title="" onclick="confirm('{{ __("Are you sure you want to delete this asset?") }}') ? this.parentElement.submit() : ''">
                                      <i class="material-icons">close</i>
                                      <div class="ripple-container"></div>
                                  </button>
                               @endif
                              </form>
                            </td>
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
          searchPlaceholder: "Search categories",
        },
        "columnDefs": [
          { "orderable": false, "targets": 3 },
        ],
      });
    });
  </script>
@endpush