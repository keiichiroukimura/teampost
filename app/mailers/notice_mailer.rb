class NoticeMailer < ApplicationMailer
  default from: 'from@example.com'

  def notice_mail(agenda)
    @agenda = agenda
    #mail to: @email, subject: 'agendaを削除しました'
    mail to: @agenda.team.users.map {|user| user.email}#, subject: 'agendaを削除しました'
  end
end
