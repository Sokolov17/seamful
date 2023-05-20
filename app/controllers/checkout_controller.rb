class CheckoutController < ApplicationController

    def create
    @order = Order.find(params[:id])
    p @order.total
    Stripe.api_key = Rails.application.credentials.dig(:stripe, :secret)
    @session = Stripe::Checkout::Session.create({
    payment_method_types: ['card'],
    line_items: [
        {
            name: @order.id,
            amount: @order.total*100,
            currency: "usd",
            quantity: 1
        }],
    mode: 'payment',
    success_url: order_url(@order),
    cancel_url: home_url
})
    init_cart
    respond_to do |format|
    format.js
end
end
end
