<?php

namespace App\Policies;

use App\User;
use App\Asset;
use Illuminate\Auth\Access\HandlesAuthorization;

class AssetPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can create assets.
     *
     * @param  \App\User  $user
     * @return boolean
     */
    public function create(User $user)
    {
        return $user->isAdmin() || $user->isCreator();
    }

    /**
     * Determine whether the user can update the asset.
     *
     * @param  \App\User  $user
     * @param  \App\Asset  $asset
     * @return boolean
     */
    public function update(User $user, Asset $asset)
    {
        return $user->isAdmin() || $user->isCreator();
    }

    /**
     * Determine whether the user can delete the asset.
     *
     * @param  \App\User  $user
     * @param  \App\Asset  $asset
     * @return boolean
     */
    public function delete(User $user, Asset $asset)
    {
        return $user->isAdmin() || $user->isCreator();
    }
}
