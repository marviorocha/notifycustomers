class NotifiesController < ApplicationController

before_action :set_notify, only: [:edit, :update, :destroy, :create]

# GET /notify
def index

end

# GET /notify/new
def new

end

def create
  #code
end

# GET /notify/:id/show
def show

end

def update
  #code
end
# GET /notify/:id/edit
def edit
  #code
end

# GET /notify/:id
def destroy
  #code
end

private

def set_notify
  @notify = Notify.find(params[:id])
end

def notify_params
  params.require(:notify).permit(:title, :messager, :delivery, :send, :client_id)
end

end
