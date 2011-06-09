class ViewRoomStatusRoomsController < ApplicationController
  # GET /view_room_status_rooms
  # GET /view_room_status_rooms.xml
  def index
    @view_room_status_rooms = ViewRoomStatusRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @view_room_status_rooms }
    end
  end

  # GET /view_room_status_rooms/1
  # GET /view_room_status_rooms/1.xml
  def show
    @view_room_status_room = ViewRoomStatusRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @view_room_status_room }
    end
  end

  # GET /view_room_status_rooms/new
  # GET /view_room_status_rooms/new.xml
  def new
    @view_room_status_room = ViewRoomStatusRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @view_room_status_room }
    end
  end

  # GET /view_room_status_rooms/1/edit
  def edit
    @view_room_status_room = ViewRoomStatusRoom.find(params[:id])
  end

  # POST /view_room_status_rooms
  # POST /view_room_status_rooms.xml
  def create
    @view_room_status_room = ViewRoomStatusRoom.new(params[:view_room_status_room])

    respond_to do |format|
      if @view_room_status_room.save
        format.html { redirect_to(@view_room_status_room, :notice => 'View room status room was successfully created.') }
        format.xml  { render :xml => @view_room_status_room, :status => :created, :location => @view_room_status_room }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @view_room_status_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /view_room_status_rooms/1
  # PUT /view_room_status_rooms/1.xml
  def update
    @view_room_status_room = ViewRoomStatusRoom.find(params[:id])

    respond_to do |format|
      if @view_room_status_room.update_attributes(params[:view_room_status_room])
        format.html { redirect_to(@view_room_status_room, :notice => 'View room status room was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @view_room_status_room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /view_room_status_rooms/1
  # DELETE /view_room_status_rooms/1.xml
  def destroy
    @view_room_status_room = ViewRoomStatusRoom.find(params[:id])
    @view_room_status_room.destroy

    respond_to do |format|
      format.html { redirect_to(view_room_status_rooms_url) }
      format.xml  { head :ok }
    end
  end







end
