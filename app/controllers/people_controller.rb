class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  def new
    @people = Person.new
    @customer = Customer.new
  end

  def create
     @people = Person.new(person_params)
     binding.pry
    respond_to do |format|
      if @people.save
        format.html { redirect_to @people, notice: 'Perspm was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @people.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end
  
  private
  
   def person_params
   params.require(:persom).permit(
    :name, :cpf, :rg, :birthdate,
    addresses_attributes: [:id, :street, :number, :neighborhood, :state, :nation],
    customer_attributes: [:id, :customer_code],
    phones_attributes: [:id, :phone1, :phone2])
  
  end
end
