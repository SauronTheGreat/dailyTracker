class DailyMail < ActionMailer::Base
  default from: "amol@ptotem.com"

  def send_daily_mail()
    @user = "contactme@rushabhhathi.com"
    @subject = "Report for "+Date.today.to_s
    #@body["message"]="This is a test message"
    mail(to:["arijit@ptotem.com","arun@ptotem.com","amol@ptotem.com"],subject:"Report for #{Date.today}")

  end
end


