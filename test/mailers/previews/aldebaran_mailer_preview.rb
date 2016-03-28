# Preview all emails at http://localhost:3000/rails/mailers/aldebaran_mailer
class AldebaranMailerPreview < ActionMailer::Preview
  def new_order_preview
    AldebaranMailer.new_order(User.first, Order.first)
  end

  def confirmed_order_preview
    AldebaranMailer.confirmed_order(User.first, Order.first)
  end
end