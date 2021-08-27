<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        if (!$token = auth('api')->attempt(request(['email', 'password']))) {

            return response()->json(['error' => 'Unauthorized'], 401);
        }

        return $this->respondWithToken($token);
    }

    public function logout()
    {
        if (auth('api')->user())
            return response()->json(['message' => 'Successfully logged out!']);

        return response()->json(['message' => 'no user authentication!']);
    }

    public function getAuth()
    {
        return auth('api')->user();
    }

    public function getAllUsers()
    {
        $users = User::where('id', '<>', auth('api')->id())->get();

        return response()->json(['users' => $users]);
    }

    public function getUser(Request $request)
    {
        if ($request->has('id'))
            return response()->json(['user' => User::whereId($request->id)->first()]);

        return response()->json(['message' => 'page not found'], 404);
    }

    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->guard('api')->factory()->getTTL() * 60,
            'user' => auth()->guard('api')->user(),
        ]);
    }
}
