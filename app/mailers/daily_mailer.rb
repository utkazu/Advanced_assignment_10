class DailyMailer < ApplicationMailer
  default from: 'hiroshimazeal@yahoo.co.jp'

  def notify_user
    default to: -> { User.pluck(:email) }
    mail(subject: "everyday Bookers!yay!")
  end
end
