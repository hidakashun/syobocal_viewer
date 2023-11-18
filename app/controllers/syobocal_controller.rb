class SyobocalController < ApplicationController
  def index
    # Syobocal Gem を使用してデータを取得
    @result = Syobocal::DB::TitleLookup.get({'TID' => '*', 'Fields' => 'TID,Title'})
  end
end