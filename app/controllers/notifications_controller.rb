class NotificationsController < ApplicationController

before_action :set_notifications, only: [:edit, :destroy, :update, :show]


# Get /notification/
def index

@notification = Notification.where(notification: 0)
@notification_send = Notification.where(notification: 1)

end

# Get /notification/new
def new
# Send notification for email client
@client = Client.find(params[:user])
@notification = @client.notifications.new

end

# Post /notifications
def create
  @notification = Notification.new(notifications_params)

  if @notification.save
  redirect_to notifications_path, notice: "Notificação foi criada com sucesso"
  else
  render :index, alert: @notification.errors.full_messages.to_sentence
  end

end

def destroy
  if @notification.destroy
    redirect_to notifications_path, alert: "Notificação foi deletado com sucesso"
    else
      render :index, alert: "Não foi possível deletar está notificação"
  end
end

def edit

end

def update

  if @notification.update(notifications_params)
    redirect_to notifications_path, notice: "Notificação atualizada com sucesso"
  else
    flash[:alert] = @notification.errors.full_messages.to_sentence
    render :edit
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
