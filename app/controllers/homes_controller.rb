class HomesController < ApplicationController
  # if HTTP_REFERER is nil that mean direct transition else not
  def index
    @data_pie = Referrer.group(:name).count
    @data_line = Referrer.group("strftime('%Y-%m-%d', referrers.created_at)").count
    @option_line = {title: "График посещаемости"}
    @option_pie = {title: "Диаграмма переходов"} 
    @refer = Referrer.new
    @refer.ip = request.env['HTTP_X_FORWARDED_FOR']
    @refer.browser = request.env['HTTP_USER_AGENT']
    unless (request.env['HTTP_REFERER'].nil? || params[:query].nil?)
      @refer.name = params[:query] 
    else
      @refer.name = "Остальные"
    end
    @refer.save!
    @table_data = Referrer.last(100).reverse
  end
end
