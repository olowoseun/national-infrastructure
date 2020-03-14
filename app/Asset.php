<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Asset extends Model
{
    protected $fillable = [
        'user_id', 'asset_class', 'asset_subclass', 
        'asset_category', 'geopolitical_zone', 'state', 'lga', 'project_sponsor',
        'location_description', 'value_2012', 'value_2013', 'value_2014', 'value_2015',
        'value_2016', 'value_2017', 'value_2018', 'value_2019'
    ];

    /**
     * Get the user of the asset
     *
     * @return \App\User
     */
    public function user() {
        return $this->belongsTo(User::class);
    }
}
