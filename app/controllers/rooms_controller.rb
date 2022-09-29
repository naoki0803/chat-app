class RoomsController < ApplicationController  
  def index
  end
    
  def new
    @room = Room.new
  end  

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to root_path
  end

  private

  def room_params
    params.require(:room).permit( user_ids: [])   
    # :roomはモデル名:name,
    # ストロングパラメータは上記記述で決まってる、この形式で保存した、なので、どういう構造でparamsを送るかを考えて、select(ビュー)に」記述する必要がある
    # name属性に記述する必要あり！パラメーターに名前をつけられる



    # name="room[user_ids][]


  end

end
