## Funcionamiento de make_todo
# Tarea.all #Lista todas las tareas
# Tarea.create("titulo") #Crea una nueva tarea
# Tarea.update(id) #actualiza un atributo a true
    # if "done" == true Tarea done
    # else ("donde == false Tarea no done")
# Tarea.find(id)  #devuelve un hash con la inf de la tarea encontrada
# Tarea.destroy(id) #Elimina la tarea

require "sinatra"
require "make_todo"

get '/' do
    @task = Tarea.all
    erb :index
end

post '/' do
    Tarea.create(params[:content])
    redirect '/'
end

delete '/delete/:id' do
    Tarea.destroy(params[:id])
    redirect '/'
end

put '/update/:id' do
    Tarea.update(params[:id])
    redirect '/'
end
