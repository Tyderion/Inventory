class ListitemsController < ApplicationController
  def index
    @listitems = Listitem.all
  end

  def show
    @listitem = Listitem.find(params[:id])
  end

  def new
    @listitem = Listitem.new
  end

  def create
    @listitem = Listitem.new(params[:listitem])
    if @listitem.save
      redirect_to @listitem, :notice => "Successfully created listitem."
    else
      render :action => 'new'
    end
  end

  def edit
    @listitem = Listitem.find(params[:id])
  end

  def update
    @listitem = Listitem.find(params[:id])
    if @listitem.update_attributes(params[:listitem])
      redirect_to @listitem, :notice  => "Successfully updated listitem."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @listitem = Listitem.find(params[:id])
    @listitem.destroy
    redirect_to listitems_url, :notice => "Successfully destroyed listitem."
  end
end