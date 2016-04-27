class DemoController < ApplicationController
  respond_to :html, :js

  def home
  end

  def show_options
  end

  def hide_options
  end

  def download
    if params[:data]
      send_data render_to_string(partial: 'demo/download/data'),
                type: 'text/plain; charset=UTF-8;',
                filename: "Data #{Time.current.to_formatted_s(:db)}.txt"
    elsif params[:sample]
      send_data render_to_string(partial: 'demo/download/sample'),
                type: 'text/plain; charset=UTF-8;',
                filename: "Sample #{Time.current.to_formatted_s(:db)}.txt"
    elsif params[:demo]
      send_data render_to_string(partial: 'demo/download/demo'),
                type: 'text/plain; charset=UTF-8;',
                filename: "Demo #{Time.current.to_formatted_s(:db)}.txt"
    end
  end
end
