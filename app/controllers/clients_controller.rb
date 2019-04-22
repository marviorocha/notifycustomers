class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  def index

    onsignal = OneSignal::Client.new(auth_token: 'YTFmZmQ0MjQtNmRkYy00MTM3LWFjNGMtNGU5NTIxNWNkZjBj',
                                    app_id: 'ffc48929-efe2-494c-a3ce-8e23528623f8')
    params = {"app_id" => "ffc48929-efe2-494c-a3ce-8e23528623f8",
              "headings" => {"pt-br"=> 'Bem-vindo ao Custumers Notify'},
              "chrome_web_icon" => '',
              "contents" => {"pt-br" => ''},
              "send_after" => Time.now,
              "included_segments" => ["All"]}
    onsignal.notifications.create(params)

    @user =  User.where(role: "user")

  end

  # GET /clients/1
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to @client, notice: 'Um novo cliente foi criado com sucesso'
    else
      render :new
    end
  end

  # PATCH/PUT /clients/1
  def update
    if @client.update(client_params)
      redirect_to @client, notice: 'Client was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /clients/1
  def destroy
    @client.destroy
    redirect_to clients_url, notice: 'Client was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def client_params
      params.require(:client).permit(:name, :last_name, :email, :birhday, :tel, :cel, :cpf)
    end
end
