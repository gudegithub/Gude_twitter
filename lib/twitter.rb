require "twitter"

@tomoya_Tech = Twitter::REST::Client.new do |config|
  config.consumer_key = "hePhiOhn0AjvZ8tB6zbKuAyyL"
  config.consumer_secret = "CcikCfxf1IUrj70v1mLl4BIi1UJ9utwKkJPcMi4JAf19Ud8qPo"
  config.access_token = "1108634921076060160-xm8r7GC9qUy32Fe0tO0zmQjh1mu4mS"
  config.access_token_secret = "mTlsIFfu1s9ZNMSFDlYywL0qCv9w095kjvY3EEV8fVUWX"
end

@drumful = Twitter::REST::Client.new do |config|
  config.consumer_key = "fBv4j4eZACgXfpyPbiBpvaYIV"
  config.consumer_secret = "Q6Jdv22uHy7HUywEbeu4l8yzm2abFza6UfwfGPHCPoYCVwJBTo"
  config.access_token = "1003893055051583489-bpQrEQZdrKX58kLgGBBIEXukX3Mv2i"
  config.access_token_secret = "8TKB8tlWmPR5vf1ISkSeFoAFaPRmeRMBNIgumMRxgw5in"
end



def  auto_favorite(user,word,number)
   user.search(word).take(number).each do |tweet|
     user.favorite(tweet)
     sleep(60)
   end
end

auto_favorite(@tomoya_Tech,"#駆け出しエンジニアと繋がりたい",40)
# auto_favorite(@drumful,"#叩いてみた",20)
