    # Acaba puxando as informações do aaa.rb e trás para cá
    
require 'uri'
require 'net/http'
require 'openssl'
require_relative 'aaa'
    class Tradu
        def caram
url = URI("https://google-translate1.p.rapidapi.com/language/translate/v2")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["x-rapidapi-host"] = 'google-translate1.p.rapidapi.com'
request["x-rapidapi-key"] = '2479063e85mshbdcccf32bddb02fp186b51jsnd0c659254720'
request["accept-encoding"] = 'application/gzip'
request["content-type"] = 'application/x-www-form-urlencoded'
request.body = "source=#{@origin}&q=#{@Fra}!&target=#{@future}"
    # Aqui acaba traduzindo as informações trazidas
response = http.request(request)
@future = @idiom
@idiom = response
puts @idiom.read_body
        end
     # Mostra a tradução feita 
    #Eu mostro a informação traduzida
    end 
    tradu = Tradu.new
    puts tradu.caram

    
