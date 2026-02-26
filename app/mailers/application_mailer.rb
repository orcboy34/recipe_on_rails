class ApplicationMailer < ActionMailer::Base
  default from: ENV.fetch("FROM_EMAIL", "from@example.com")
  layout "mailer"
end
