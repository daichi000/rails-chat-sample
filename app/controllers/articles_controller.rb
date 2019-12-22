class ArticlesController < ApplicationController
  def create
    # render json: { status: "error", message: I18n.t('error.already_login') } and return if current_someone
    # render json: { status: "error", message: I18n.t('error.invalid_parameter') } and return unless params[:email]

    # find user
    # user = User.find_by(email: params[:email].downcase)
    # render json: { status: 'success', email: params[:email].downcase } and return unless user
    title = params['title']
    detail = params['detail']
    category = params['category']
    summernote = params['summernote']

    # user.tokens.where(token_type: :reset_token, status: :active, provider:  :bajji).each { |token| token.update!(status: :inactive) }
    # token = user.tokens.create!(token_type: :reset_token, status: :active, provider:  :bajji, expired_at: 30.minute.since)
    article = Article.create(title: title, detail: detail, category: category, summernote: summernote)
    # case ENV['RAILS_ENV']
    # when 'production', 'staging', 'development'
    #   TokenMailer.password_reset(user, token).deliver_now
    # when 'test'
    #   user.update!(password: "newpassword")
    # end

    render json: { status: 'success' }
  end
end
