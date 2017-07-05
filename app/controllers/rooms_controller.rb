class RoomsController < ApplicationController
   def new
    @room = current_user.rooms.new
   end

   def index

   end

   def create
     @room = current_user.rooms.create(room_params)
     if @room.save
        session[:room_id] = @room.id
        redirect_to phongcho_path
     end
   end

   def destroy
     @room = current_user.rooms.find params[:id]
     @room.destroy
     redirect_to thidau_path
   end
   
   def edit

   end

   def update
     
   end

   def phongcho
    
   end

   private
   def room_params
    if params[:room][:loaiphong].eql? 'Đối kháng'
     params.require(:room).permit(:loaiphong, :tenphong, :monthi, :songuoi).merge(songuoi: '2')
   else
     params.require(:room).permit(:loaiphong, :tenphong, :monthi, :songuoi).merge(songuoi: '10')
   end
   end
end
