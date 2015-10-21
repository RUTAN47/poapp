class ExampleMailer <  ActionMailer::Base
  default from: "johan.rutberg@gmail.com"

  def sample_email(ponumber)
    @ponumber = ponumber
    mail(to: @ponumber.email, subject: 'Sample Email')
  end
end
  

