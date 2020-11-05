<?php

namespace App\Http\Controllers\Traits;

use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

trait FileUploadTrait
{

    /**
     * File upload trait used in controllers to upload files
     */
    public function saveFiles(Request $request)
    {
        $uploadPath = public_path(env('UPLOAD_PATH') . '/assets');
        $thumbPath = public_path(env('UPLOAD_PATH') . '/assets/thumb');
        if (!file_exists($uploadPath)) {
            mkdir($uploadPath, 0777);
            mkdir($thumbPath, 0777);
        }

        $finalRequest = $request;

        foreach ($request->all() as $key => $value) {
            if ($request->hasFile($key)) {
                foreach ($request->file($key) as $file) {
                    // if ($request->has($key . '_max_width') && $request->has($key . '_max_height')) {
                    // Check file width
                    $filename = str_random(10) . '.' . $file->getClientOriginalExtension();
                    $image = Image::make($file);
                    if (!file_exists($thumbPath)) {
                        mkdir($thumbPath, 0775, true);
                    }
                    Image::make($file)->resize(50, 50)->save($thumbPath . '/' . $filename);
                    $width = $image->width();
                    $height = $image->height();
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
                    $image->save($uploadPath . '/' . $filename);
                    $finalRequest = new Request(array_merge($finalRequest->all(), [$key => $filename]));
                  
                    // } else {
                    //     // $filename = str_random(10) . '.' . $file->getClientOriginalExtension();
                    //     // $file->move($uploadPath, $filename);
                    //     $finalRequest = new Request(array_merge($finalRequest->all(), [$key => 'files']));
                    // }
                }
            }
        }

        return $finalRequest;
    }

    // save base64 image
    public function savebase64(Request $request)
    {
        $uploadPath = public_path(env('UPLOAD_PATH') . '/assets');
        $thumbPath = public_path(env('UPLOAD_PATH') . '/assets/thumb');
        if (!file_exists($uploadPath)) {
            mkdir($uploadPath, 0777);
            mkdir($thumbPath, 0777);
        }

        $finalRequest = $request;

        if ($request->has("avatar") && $request->avatar !== null) {
            $file = $request->avatar;

            // split base64 data
            $splited = explode(',', $file, 2);
            $mime = $splited[0];
            $data = $splited[1];

            // mime split without base64
            $mime_splited = explode(';', $mime, 2);
            $mime_ext = explode('/', $mime_splited[0], 2);

            // check if is ext
            if (count($mime_ext) == 2) {
                $extension = $mime_ext[1];
                if ($extension == 'jpeg') {
                    $extension = 'jpg';
                }

                $filename = str_random(10) . '.' . $extension;
                // decode base64
                $decodeImg = base64_decode($data);
                Image::make($decodeImg)->save($uploadPath . '/' . $filename);

                $finalRequest = new Request(array_merge($finalRequest->all(), ["avatar" => $filename]));
            }
        }

        return $finalRequest;
    }
}
