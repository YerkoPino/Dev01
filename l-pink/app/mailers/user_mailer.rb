class UserMailer < ActionMailer::Base
  default :from => "lpink@gmail.com"

  def registro_bienvenida(user)
  
    @user = user
    @url  = 'http://www.l-pink.cl'
    mail(to: @user.email, subject: 'Bienvenido a L-Pink')


  end

end
