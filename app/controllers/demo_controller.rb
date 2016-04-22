class DemoController < ApplicationController
  respond_to :html, :js

  def home
  end

  def show_options
  end

  def download
    if params[:data]
      send_data render_to_string(partial: 'download_data'),
                type: 'text/plain; charset=UTF-8;',
                filename: "Data #{Time.current.to_formatted_s(:db)}.txt"
    elsif params[:file]
      send_file Rails.root.join('public', 'data', 'demo.txt'),
                type: 'text/plain; charset=UTF-8;',
                filename: "File #{Time.current.to_formatted_s(:db)}.txt"
    end
    
  end
end
