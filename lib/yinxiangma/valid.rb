# -*- encoding : utf-8 -*-
module Yinxiangma
  module Valid
    def yinxiangma_valid
      valid_uri = "https://api.hinside.cn/default.php"
      http = Net::HTTP
      answer, error = http.post_form(URI.parse(valid_uri), {
        "k" => "a9ebfa885ed74e9d5cc5e3e2bc681b68",
        "ip" => params[:HCaptchaRemoteAddr],
        "c" => params[:HCaptchaInput],
        "sid" => params[:HCaptchaSid]
        }).body.split('+')
    
      if(answer == 'true')
        return true
      elsif(answer == 'false')
        return false
      end
    end
  end
end
