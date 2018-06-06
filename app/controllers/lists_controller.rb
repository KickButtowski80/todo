class ListsController < ApplicationController
  before_action :set_list, only: [ :show, :edit, :update, :destroy, :complete]
  def index
    @lists = List.all
  end


  def new
    @list = List.new
  end
  
  
  def create
    @list = List.new(list_params)
    respond_to do |format|
    if @list.save 
       format.html  { redirect_to(root_path,:notice => 'list was successfully created.') }
       format.json  { render :json => root_path,:status => :created, :location => @list }
    else
      format.html  { render :action => "new" }
      format.json  { render :json => @list.errors,:status => :unprocessable_entity }
    end
  end
end
      
  def show   
  end
  
  
  def edit
  end

  def update
   respond_to do |format|
      if @list.update_attributes(list_params)
        format.html  { redirect_to(@list,:notice => 'list was successfully updated.') }
        format.json  { head :no_content }
      else
        format.html  { render :action => "edit" }
        format.json  { render :json => @list.errors,:status => :unprocessable_entity }
      end
    end
  end
  
  def complete
    if @list.completed?
      # byebug
      @list.update_attribute(:completed,false)
      redirect_to lists_url, notice: 'Todo item marked down.'
    else
      @list.update_attribute(:completed,true)
      redirect_to lists_url, notice: 'Todo item un marked.'
    end
    
   
  end
  
  
    
  def destroy
     @list.destroy
 
    respond_to do |format|
      format.html { redirect_to lists_url }
      format.json { head :no_content }
    end
 end    
    
    
    
    
    
  private
 
    def list_params
      params.require(:list).permit(:description, :completed, :status)
    end
    
    def set_list
       @list = List.find(params[:id])       
    end
    
end
