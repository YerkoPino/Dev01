class UserMailer < ActionMailer::Base
  default :from => "lpink@gmail.com"

  def registro_bienvenida(user)
  
    @user = user
    @url  = 'http://www.l-pink.cl'
    mail(to: @user.email, subject: 'Bienvenido a L-Pink')


  end
  def proyecto_asignado(user,proyecto,user_destinatario)
    @user_destinatario = user_destinatario
    @proyecto = proyecto
    @user = user
    @url  = 'http://www.l-pink.cl'
    mail(to: @user.email, subject: 'Agregado a un nuevo proyecto')


  end
end
