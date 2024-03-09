<?php

namespace App\Http\Controllers;

use App\Models\Seo_Real_Estate;
use App\Models\Seo_Real_Estate_Procedures;
use App\Models\SeoAdvise;
use App\Models\SeoNews;
use Illuminate\Http\Request;

class SeoController extends Controller
{
    //nhà đất
    public function edit_real_estate($id)
    {
        $real_estate = Seo_Real_Estate::find($id);
        return view('admin.seo_page.real_estate', compact('real_estate'));
    }
    public function update_real_estate(Request $request, $id)
    {
        $real_estate = Seo_Real_Estate::findOrFail($id);
        $seo = $real_estate->seo;
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $file_name = $file->getClientOriginalName();

            $file->move(public_path('products'), $file_name);
            $real_estate->image = $file_name;
        }
        $real_estate->seo_id = $request->input('seo_id');
        $real_estate->save();

        $seo->seo_tittle = $request->input('seo_tittle');
        $seo->seo_keyword = $request->input('seo_keyword');
        $seo->seo_description = $request->input('seo_description');
        $seo->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }

    //tin tức
    public function edit_news($id)
    {
        $news = SeoNews::find($id);
        return view('admin.seo_page.news', compact('news'));
    }
    public function update_news(Request $request, $id)
    {
        $news = SeoNews::findOrFail($id);
        $seo = $news->seo;

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = $image->getClientOriginalName();
            $image->storeAs('uploads', $imageName, 'public');
            $news->image = $imageName;
        }
        $news->seo_id = $request->input('seo_id');
        $news->save();

        $seo->seo_tittle = $request->input('seo_tittle');
        $seo->seo_keyword = $request->input('seo_keyword');
        $seo->seo_description = $request->input('seo_description');
        $seo->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    //thủ tục nhà đất
    public function edit_real_estate_procedures($id)
    {
        $real_estate_procedures = Seo_Real_Estate_Procedures::find($id);
        return view('admin.seo_page.real_estate_procedures', compact('real_estate_procedures'));
    }
    public function update_real_estate_procedures(Request $request, $id)
    {
        $real_estate_procedures = Seo_Real_Estate_Procedures::findOrFail($id);
        $seo = $real_estate_procedures->seo;

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = $image->getClientOriginalName();
            $image->storeAs('uploads', $imageName, 'public');
            $real_estate_procedures->image = $imageName;
        }
        $real_estate_procedures->seo_id = $request->input('seo_id');
        $real_estate_procedures->save();

        $seo->seo_tittle = $request->input('seo_tittle');
        $seo->seo_keyword = $request->input('seo_keyword');
        $seo->seo_description = $request->input('seo_description');
        $seo->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }
    //tư vấn
    public function edit_advise($id)
    {
        $advise = SeoAdvise::find($id);
        return view('admin.seo_page.advise', compact('advise'));
    }
    public function update_advise(Request $request, $id)
    {
        $advise = SeoAdvise::findOrFail($id);
        $seo = $advise->seo;

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = $image->getClientOriginalName();
            $image->storeAs('uploads', $imageName, 'public');
            $advise->image = $imageName;
        }
        $advise->seo_id = $request->input('seo_id');
        $advise->save();

        $seo->seo_tittle = $request->input('seo_tittle');
        $seo->seo_keyword = $request->input('seo_keyword');
        $seo->seo_description = $request->input('seo_description');
        $seo->save();
        return back()->with('messageSucces', 'Cập nhật thành công');
    }
}
