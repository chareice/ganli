class UserMailer < ActionMailer::Base
  default :from => "chareice@live.com"
  default :charset => "utf-8"
  default :content_type => "text/html"
    
  def welcome_email(email_params)
  	@email_params = email_params
  	mail(to:@email_params[:email],subject: "欢迎注册甘李网站会员")
  end

  def audit_pass(user)
  	@user = user
  	mail(to:@user.email,subject: "恭喜您，审核通过！-- 甘李")
  end
end
