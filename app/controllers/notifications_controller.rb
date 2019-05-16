class NotificationsController < ApplicationController

before_action :set_notifications, only: [:edit, :destroy, :update, :show]

# Get /notification/
def index

@notification = Notification.where(notification: 0)
@notification_send = Notification.where(notification: 1)


end

def new
@client = Client.find(params[:user])
end

# Get /notification
def create
  @notification = Notification.new(notifications_params)

  if @notification.save
  redirect_to notifications_path, notice: "Notificação foi criada com sucesso"
  else
  render :index, alert: @notification.errors.full_messages.to_sentece
  end

end

def destroy
  if @notification.destroy
    redirect_to notifications_path, alert: "Notificação foi deletado com sucesso"
    else
      render :index, alert: "Não foi possível deletar está notificação"
  end
end



private

def set_notifications
@notification = Notification.find(params[:id])
end

def notifications_params
  params.require(:notification).permit(:title, :messager, :calendar, :client_id)
end

end
