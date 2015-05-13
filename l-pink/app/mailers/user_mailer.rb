class UserMailer < ActionMailer::Base
  default :from => "lpink@gmail.com"

  def registro_bienvenida(user)
  
    @user = user
    @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'Bienvenido a L-Pink')


  end
  def proyecto_asignado(user,proyecto,user_destinatario)
    @user_destinatario = user_destinatario
    @proyecto = proyecto.nombre
    @user = user
    @url  = "http://localhost:3000/proyectos/#{proyecto.id}"
    mail(to: @user.email, subject: 'Agregado a un nuevo proyecto')


  end
  def contrasena(usuario)
    @user = usuario
    @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'Restablecer contraseña')


  end
end
