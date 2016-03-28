class AldebaranMailer < ApplicationMailer
  def new_order(user, order)
    @order = order
    @user = user
    @product = order.product
    mail(to: @user.email, subject: 'You order was created!')
  end

  def confirmed_order(user, order)
    @order = order
    @user = user
    @product = order.product
    mail(to: @user.email, subject: 'You order was confirmed')
  end
end
