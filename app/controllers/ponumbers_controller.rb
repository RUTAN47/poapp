class PonumbersController < ApplicationController
  def new
  end
  

  def index
    @ponumbers = Ponumber.all
  end
  
  def show
    @ponumber = Ponumber.find(params[:id])
  end
  
  def create
    @ponumber=Ponumber.new(ponumber_params)
  
    @ponumber.po = SecureRandom.hex(10)
 
  ExampleMailer.sample_email(@ponumber).deliver_now     

     @ponumber.save   
     redirect_to @ponumber 
  end
  

   
  private
    def ponumber_params
      params.require(:ponumber).permit(:email, :amount, :project, :po)
    end
   
end
