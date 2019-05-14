class NotesController < ApplicationController

before_action :set_notes, only: [:edit, :update, :destroy, :show]

# GET /notify
def index

end

# GET /notify/new
def new

end

# POST /notes
def create

   @notes = Note.new(notes_params)

   if @notes.save
     redirect_to client_path(@notes.client_id), notice: "Anotação realizada com sucesso!"
   else
      redirect_to client_path(@notes.client_id), alert: "Não foi possivel realizar a anotação #{ @notes.errors.full_messages}"
   end

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
  if @notes.destroy
  redirect_to client_path(@notes.client_id), alert: "Anotação foi deletado com sucesso"
  else
  flash.now[:alert] = @notes.errors.full_messages.to_sentence
  render :show
  end
end

private

def set_notes
  @notes = Note.find(params[:id])
end

def notes_params
  params.require(:note).permit(:title, :messager, :client_id)
end

end
