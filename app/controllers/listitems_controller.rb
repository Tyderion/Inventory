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
    params[:listitem].delete :item
    @listitem = Listitem.new(params[:listitem])
    if @listitem.save
      redirect_to list_path(List.find(@listitem.list_id)), :notice => "Successfully created listitem."
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
    redirect_to :back, :notice => "Successfully destroyed listitem."
  end

  def change_amount
    @listitem = Listitem.find(params[:id])
    #debugger
    @listitem.amount= @listitem.amount +  params[:change].to_i
    if @listitem.amount <0
      @listitem.amount = 0
    end
    @listitem.save
    redirect_to :back
  end



  
end
