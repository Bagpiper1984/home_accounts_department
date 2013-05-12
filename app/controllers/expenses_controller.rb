class ExpensesController < ApplicationController  
  
  # GET /expenses
  # GET /expenses.json
  def index
    if params[:start_date] != nil
	  params[:expense][:start_date]=Date.new(params[:expense][:"start_date(1i)"].to_i, params[:expense][:"start_date(2i)"].to_i,params[:expense][:"start_date(3i)"].to_i)
	    params[:expense].delete(:"start_date(1i)")
		params[:expense].delete(:"start_date(2i)")
		params[:expense].delete(:"start_date(3i)")
	
	end
	#@expenses = Expense.(:created_at => (params[:start_date].to_date)..(params[:end_date].to_date))

	@expenses = Expense.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @expenses }
    end
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
    @expense = Expense.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @expense }
    end
  end

  # GET /expenses/new
  # GET /expenses/new.json
  def new
    @expense = Expense.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @expense }
    end
  end

  # GET /expenses/1/edit
  def edit
    @expense = Expense.find(params[:id])
  end

  # POST /expenses
  # POST /expenses.json
  def create
    if params[:start_date] != nil
	  params[:expense][:start_date]=Date.new(params[:expense][:"start_date(1i)"].to_i, params[:expense][:"start_date(2i)"].to_i,params[:expense][:"start_date(3i)"].to_i)
	    params[:expense].delete(:"start_date(1i)")
		params[:expense].delete(:"start_date(2i)")
		params[:expense].delete(:"start_date(3i)")
	end
	
	@expense = Expense.new(params[:expense])

    respond_to do |format|
      if @expense.save
        format.html { redirect_to @expense, notice: I18n.t(:create)}
        format.json { render json: @expense, status: :created, location: @expense }
      else
        format.html { render action: "new" }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /expenses/1
  # PUT /expenses/1.json
  def update
    @expense = Expense.find(params[:id])

    respond_to do |format|
      if @expense.update_attributes(params[:expense])
        format.html { redirect_to @expense, notice: I18n.t(:update)}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy

    respond_to do |format|
      format.html { redirect_to expenses_url }
      format.json { head :no_content }
    end
  end
end
