# Preview all emails at http://localhost:3000/rails/mailers/bet_mailer
class BetMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/bet_mailer/Mail
  def Mail
    BetMailer.Mail
  end

end
