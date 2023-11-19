class SyobocalController < ApplicationController
  def index
    # Syobocal Gem を使用してデータを取得
    @result = Syobocal::DB::TitleLookup.get({'TID' => '*', 'Fields' => 'TID,Title'})
  end

  def show
    tid = params[:tid]
    title_info = Syobocal::DB::TitleLookup.get({'TID' => tid}).first
    @title = title_info[:title]
    @short_title = title_info[:short_title]
    @title_yomi = title_info[:title_yomi]
    @title_en = title_info[:title_en]
    @comment = title_info[:comment]
  end
end