ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  fixtures :all

	# 如果用户已登录，返回true
	def is_logged_in?
		!session[:user_id].nil?
	end
  include ApplicationHelper
  
	# 登入指定的用户
	def log_in_as(user)
		session[:user_id] = user.id
	end
end

# class ActionDispatch::IntegrationTest

	
