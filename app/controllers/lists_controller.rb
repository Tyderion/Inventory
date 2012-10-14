class ListsController < ApplicationController
  include ApplicationHelper
  def index
    @lists = List.paginate(:page => params[:page])
  end

  def show
    @list = List.find(params[:id])
    @listitem = Listitem.new
    @listitem.list_id = @list.id
    gon.autocomplete_items = create_autocomplete_hash Item.all-@list.items

    respond_to do |format|
      format.html 
      format.js
    end
  end

  def new
    @list = List.new
    @list.users << current_user
  end

  def filtered
    @lists = List.paginate(:page => params[:page])
  end

  def create
    @list = List.new(params[:list])
    if @list.save
      redirect_to @list, :notice => "Successfully created list."
    else
      render :action => 'new'
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(params[:list])
      redirect_to @list, :notice  => "Successfully updated list."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_url, :notice => "Successfully destroyed list."
  end
end
