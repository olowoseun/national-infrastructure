<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAssetsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('assets', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id')->unsigned();
            $table->string('asset_class');
            $table->string('asset_subclass');
            $table->string('asset_category');
            $table->string('geopolitical_zone');
            $table->string('state');
            $table->string('lga');
            $table->string('project_sponsor');
            $table->string('location_description');
            $table->float('value_2012');
            $table->float('value_2013');
            $table->float('value_2014');
            $table->float('value_2015');
            $table->float('value_2016');
            $table->float('value_2017');
            $table->float('value_2018');
            $table->float('value_2019');

            $table->foreign('user_id')->references('id')->on('users');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('assets');
    }
}
