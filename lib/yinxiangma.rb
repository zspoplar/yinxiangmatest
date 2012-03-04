# -*- encoding : utf-8 -*-
require "yinxiangma/configuration"
require "yinxiangma/client_helper"
require "yinxiangma/valid"

module Yinxiangma
  
  
  YINXIANGMA_API_SERVER_URL = 'api.hinside.cn'
  YINXIANGMA_REGISTER_URL   = 'https://api.hinside.cn/default.php'
  YINXIANGMA_TOKEN_URL      = 'yzm.token.php'
  YINXIANGMA_VALID_URL      = 'yzm.valid.php'  
  YINXIANGMA_DISPLAY_MODE   = 'live'
  
  
  SKIP_VALID_ENV = 'test'
  

  def self.configuration
    @configuration ||= Configuration.new
  end
  
  def self.configure
    config = configuration
    yield(config)
  end
    
  class YinxiangmaError < StandardError
  end
end

if defined?(Rails)
  require "yinxiangma/rails"
end
