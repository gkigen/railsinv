class SubCategoriesController < ApplicationController
  # GET /sub_categories
  
  def index
    @sub_categories = SubCategory.all

    respond_to do |format|
      format.html # index.html.erb
      
    end
  end

  # GET /sub_categories/1
  
  def show
    @sub_category = SubCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      
    end
  end

  # GET /sub_categories/new
  
  def new
    @sub_category = SubCategory.new

    respond_to do |format|
      format.html # new.html.erb
      
    end
  end

  # GET /sub_categories/1/edit
  def edit
    @sub_category = SubCategory.find(params[:id])
  end

  # POST /sub_categories
  
  def create
    @sub_category = SubCategory.new(params[:sub_category])

    respond_to do |format|
      if @sub_category.save
        format.html { redirect_to @sub_category, notice: 'Sub category was successfully created.' }
        
      else
        format.html { render action: "new" }
        
      end
    end
  end

  # PUT /sub_categories/1
  
  def update
    @sub_category = SubCategory.find(params[:id])

    respond_to do |format|
      if @sub_category.update_attributes(params[:sub_category])
        format.html { redirect_to @sub_category, notice: 'Sub category was successfully updated.' }
       
      else
        format.html { render action: "edit" }
        
      end
    end
  end

  # DELETE /sub_categories/1
 
  def destroy
    @sub_category = SubCategory.find(params[:id])
    @sub_category.destroy

    respond_to do |format|
      format.html { redirect_to sub_categories_url }
      
    end
  end
end
