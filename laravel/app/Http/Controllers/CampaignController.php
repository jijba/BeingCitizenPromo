<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Input;
use DB;
use Illuminate\Http\Request;
use App\user;
use App\campaign;
use App\campaign_category;
use App\leader;
class CampaignController extends Controller {

	public function index()
	{
           $camp = Input::all();
           $title=$camp['title'];
           $category=$camp['categ'];
           $const=$camp['constituency']; 
           $text=$camp['body'];
           $id = DB::table('campaigns')->insertGetId(['name'=>$title, 'campaign_text'=>$text, 'constituency'=>$const, 'started_by'=>'1', 'start_date'=>date('Y-m-d H:i:s'), 'created_at'=>\Carbon\Carbon::now()->toDateTimeString(), 'updated_at'=>\Carbon\Carbon::now()->toDateTimeString()]);
          $cid=$id; 
          DB::table('campaign_categories')->insert(['cid'=>$cid, 'category'=>$category, 'created_at'=>\Carbon\Carbon::now()->toDateTimeString(), 'updated_at'=>\Carbon\Carbon::now()->toDateTimeString()]);
         // print_r($cid); 
          
      }


}
