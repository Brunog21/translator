require_relative 'aaa'
require_relative 'traduzion'

t = Time.now
File.open(t.strftime("%d-%m-%Y.%H.%M.%S") + ' DATA.txt', 'w') do |line|
end
