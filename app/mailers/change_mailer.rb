class ChangeMailer < ApplicationMailer
  default from: 'from@example.com'

  def change_owner_mail(team)
    @team = team
    mail to: @team.owner.email, subject: 'リーダ-変更のお知らせ'
  end
end
