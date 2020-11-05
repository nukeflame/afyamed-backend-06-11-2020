<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Document;
use Intervention\Image\Facades\Image;
use App\Http\Resources\Document\Document as DocumentResource;
use App\Http\Resources\Document\DocumentCollection;

class DocumentController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $uploadPath = public_path(env('UPLOAD_PATH') . '/assets');
        $thumbPath = public_path(env('UPLOAD_PATH') . '/assets/thumb');
        if (!file_exists($uploadPath)) {
            mkdir($uploadPath, 0777);
            mkdir($thumbPath, 0777);
        }
        $media = [];
        if ($request->hasFile('files')) {
            foreach ($request->file('files') as $file) {
                // if ($request->has($file . '_max_width') && $request->has($file . '_max_height')) {
                // Check file width
                $dataName = str_random(10) . '.' . $file->getClientOriginalExtension();
                $filename = $file->getClientOriginalName();
                $image = Image::make($file);
                if (!file_exists($thumbPath)) {
                    mkdir($thumbPath, 0775, true);
                }
                Image::make($file)->resize(50, 50)->save($thumbPath . '/' . $dataName);
                $width = $image->width();
                $height = $image->height();
                $type = $file->getMimeType();
                $size = $file->getClientSize();
                // if ($width > $request->{$key . '_max_width'} && $height > $request->{$key . '_max_height'}) {
                //     $image->resize($request->{$key . '_max_width'}, $request->{$key . '_max_height'});
                // } elseif ($width > $request->{$key . '_max_width'}) {
                //     $image->resize($request->{$key . '_max_width'}, null, function ($constraint) {
                //         $constraint->aspectRatio();
                //     });
                // } elseif ($height > $request->{$key . '_max_width'}) {
                //     $image->resize(null, $request->{$key . '_max_height'}, function ($constraint) {
                //         $constraint->aspectRatio();
                //     });
                // }
                $image->save($uploadPath . '/' . $dataName);
                $doc = new Document();
                $doc->file_name = $filename;
                $doc->data = $dataName;
                $doc->file_type = $type;
                $doc->file_size = $size;
                $doc->width = $width;
                $doc->height = $height;
                $doc->patient_id = $request->patientId;
                $doc->save();
                $media[] = new DocumentResource($doc);
                // }
                // else {
                    //     // $filename = str_random(10) . '.' . $file->getClientOriginalExtension();
                    //     // $file->move($uploadPath, $filename);
                    //     $finalRequest = new Request(array_merge($finalRequest->all(), [$key => 'files']));
                    // }
            }
        }

        return response()->json($media);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $doc = Document::where('patient_id', $id)->get();
        return new DocumentCollection($doc);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $ids = explode(",", $id);
        $docs = Document::whereIn('id', $ids)->get();
        if (count($ids) > 0) {
            foreach ($docs as $doc) {
                $doc->delete();
            }
        }
        return new DocumentCollection($docs);
    }
}
