class ReceitsController < ApplicationController
  # GET /receits
  # GET /receits.xml
  def index
    #@receits = Receit.all
    @receits = Receit.find(:all, :order => "accountdate DESC")
    
    respond_to do |format|
      format.html # index.html.haml
      format.xml  { render :xml => @receits }
    end
  end

  # GET /receits/1
  # GET /receits/1.xml
  def show
    @receit = Receit.find(params[:id])

    respond_to do |format|
      format.html # show.html.haml
      format.xml  { render :xml => @receit }
    end
  end

  # GET /receits/new
  # GET /receits/new.xml
  def new
    @receit = Receit.new

    respond_to do |format|
      format.html # new.html.haml
      format.xml  { render :xml => @receit }
    end
  end

  # GET /receits/1/edit
  def edit
    @receit = Receit.find(params[:id])
  end

  # POST /receits
  # POST /receits.xml
  def create
    @receit = Receit.new(params[:receit])

    respond_to do |format|
      if @receit.save
        flash[:notice] = 'Receit was successfully created.'
        format.html { redirect_to(@receit) }
        format.xml  { render :xml => @receit, :status => :created, :location => @receit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @receit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /receits/1
  # PUT /receits/1.xml
  def update
    @receit = Receit.find(params[:id])

    respond_to do |format|
      if @receit.update_attributes(params[:receit])
        flash[:notice] = 'Receit was successfully updated.'
        format.html { redirect_to(@receit) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @receit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /receits/1
  # DELETE /receits/1.xml
  def destroy
    @receit = Receit.find(params[:id])
    @receit.destroy

    respond_to do |format|
      format.html { redirect_to(receits_url) }
      format.xml  { head :ok }
    end
  end
end
