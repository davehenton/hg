require 'facebook/messenger'
require 'fuzzy_match'
require 'interactor/rails'
require 'hashie/mash'
require 'sidekiq'
require 'api-ai-ruby'

require 'hg/version'
require 'hg/engine'
require 'hg/action'
require 'hg/api_ai_client'
require 'hg/queues/queue'
require 'hg/messenger/bot'
require 'hg/queues/messenger/message_queue'
require 'hg/queues/messenger/postback_queue'
require 'hg/chunk'
require 'hg/controller'
require 'hg/request'
require 'hg/router'
require 'hg/workers/base'

# Ensure Hashie logs to Rails logger
Hashie.logger = Rails.logger

module Hg
  # TODO: Move to Bot itself, default to User.
  # The class representing bot users.
  mattr_accessor :user_class
end
