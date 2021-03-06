class ClientsController < ApplicationController

  before_action :set_client, only: [:show, :edit, :update, :destroy]
  # GET /clients
  def index

    @client =  Client.all

  end



  # GET /clients/1
  def show
    @notes =  @client.notes
  end

  # GET /clients/new
  def new

    @client = Client.new

  end

  # GET /clients/1/edit
  def edit

  end

  # POST /clients    @notes = @client.notes.create(params[:title, :messager])


  def create

    @client = Client.new(client_params)


    if @client.save
      redirect_to clients_path, notice: 'Novo cliente foi criado com sucesso'
    else
      flash.now[:alert] = @client.errors.full_messages.to_sentence
      render :new
    end

  end

  # PATCH/PUT /clients/1
  def update

    if @client.update(client_params)
      redirect_to client_path, notice: 'Cliente atualizado com sucesso'
    else
      render :edit
    end

  end

  # DELETE /clients/1
  def destroy
    @client.destroy
    redirect_to clients_url, alert: 'Cliente foi deletado com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end



    def client_params
      params.require(:client).permit(:name, :last_name, :email, :cep, :address, :birthday, :tel, :cel, :cpf)
    end
end
