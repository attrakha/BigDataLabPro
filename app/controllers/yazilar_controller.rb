class YazilarController < ApplicationController
  def index
    @yazilar = Yazi.all
  end
  def show
    @yazi = Yazi.find(params[:id])
  end
  def new
    @yeni_yazi = Yazi.new
  end


  def create
  @yeni_yazi_ = Yazi.new(yazi_params)
    if @yeni_yazi_.save
      redirect_to '/yazilar'
    else
      render
      '/yazilar/new'
    end
  end

  def edit
    @yazim = Yazi.find(params[:id])
  end

  def update
  @updated_yazi = Yazi.find(params[:id])
    if @updated_yazi.update_attributes(edit_yazi_params)
      redirect_to(:action =>"show", :id => @updated_yazi.id)
    else render 'edit'
      end
  end

def destroy

if  Yazi.find(param[:id]).destroy
  redirect_to '/yazilar/index'
else
  redirect_to(:action => 'show', :id => yazi.id)
end

end

  private
  def yazi_params
    params.require(:yazi).permit(:title, :content)
  end
  def edit_yazi_params
    params.require(:yazi).permit(:title, :content)
  end
  end

