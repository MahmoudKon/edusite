<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\BackendController;
use App\DataTables\SlidersDataTable;
use App\Http\Requests\SliderRequest;
use Illuminate\Support\Facades\DB;
use App\Models\SliderImage;
use App\Traits\UploadFile;
use App\Models\Slider;
use Exception;

class SlidersController extends BackendController
{
    use UploadFile;

    public function __construct(SlidersDataTable $dataTable, Slider $slider)
    {
        parent::__construct($dataTable, $slider);
    }

    public function append()
    {
        return ['no_ajax' => ''];
    }

    public function store(SliderRequest $request)
    {
        try {
            DB::beginTransaction();
            $slider = Slider::create($request->only('name'));
            foreach ($request->slices as $slice)
                $slider->slices()->create($slice);
            DB::commit();
            toast('Your image has been created!', 'success');
            return response()->json(['redirect' => route('backend.sliders.index')]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }

    public function update(SliderRequest $request, Slider $slider)
    {
        try {
            if (!$request->slices) {
                $slider->delete();
                toast('Your Slider has been deleted!', 'success');
                return response()->json(['redirect' => route('backend.sliders.index')]);
            }
            DB::beginTransaction();
            $slider->update($request->all());
            foreach ($request->slices as $slice) {
                if ($slice['id']) {
                    $row = SliderImage::whereSliderId($slider->id)->findOrFail($slice['id']);
                    if (isset($slice['image']) && $row)
                        $this->remove($row->image, 'sliders');
                    $row->update($slice);
                } else {
                    if ($slice['title'] && $slice['desc'] && $slice['image'])
                        $slider->slices()->create($slice);
                }
            }
            DB::commit();
            toast('Your Slider has been updated!', 'success');
            return response()->json(['redirect' => route('backend.sliders.index')]);
        } catch (Exception $e) {
            return response()->json($e->getMessage(), 500);
        }
    }
}
