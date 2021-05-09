class ClubDataController < ApplicationController
  before_action :set_club_datum, only: [:show, :edit]

  # GET /club_data
  def index
    @club_data_array = []
    @club_data = Club.all
    @club_infos = ClubInfo.all
    @sum = sum
    @average = average
    club_data_array
    respond_to do |format|
      format.html
      format.pdf do 
        pdf = DataPdf.new(@club_data_array)
        send_data pdf.render , filename: "Club_Data.pdf", type: "application/pdf"
      end
    end
  end

  # GET /club_data/1
  def show
  end

  # POST /club_data/search
  def search
#   {"search" => {"name" => "some entered name"} }
    @club_data = Club.where(postcode: params[:search][:postcode])
    render :index
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club_datum
      @club_datum = Club.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def club_datum_params
      params.require(:club_datum).permit(:club_id)
    end
end

def sum
  total = [0,0,0,0,0,0,0,0,0]
  @club_infos.each do |club_info|
    total[0] += club_info.males
    total[1] +=club_info.females
    total[2] +=club_info.lowerage
    total[3] +=club_info.upperage
    total[4] +=club_info.disability
    total[5] +=club_info.ethnicity
    total[6] +=club_info.depravation
    total[7] +=club_info.drugsandabs
    total[8] +=club_info.neets
  end
  return total
end

def average
  avg = []
  @sum.each do |num|
    avg.push( num / (@club_infos.length))
  end
  return avg
end

def club_data_array
    @club_data.each do |club_datum|
      @club_infos.each do |club_info|
        if club_info.club_id == club_datum.id then
          @club_data_array.push([club_datum.name,
          club_datum.postcode, 
          club_info.males,
          club_info.females,
          club_info.lowerage,
          club_info.upperage,
          club_info.disability,
          club_info.ethnicity,
          club_info.depravation,
          club_info.drugsandabs,
          club_info.neets])
        end
      end
    end
  @club_data_array.push(["SUM"] + [" "] + @sum)
  @club_data_array.push(["AVERAGE"] + [" "] + @average)         
end