require 'twitter'

client = Twitter::REST::Client.new do |config|
 config.consumer_key		= "ra9QhRPPfi9tLgKQLF8sfLhsL"
 config.consumer_secret		= "CeNndCWLcwl1GxxxpD9O5EkiUFw4G1E3qqBR5WJ4dZWaYOHamK"
 config.access_token		= "384213341-54mdWKhe1rWnil9GULU6xbkTou6rqsLWMPkwLNkQ"
 config.access_token_secret	= "CsnWBLUeBaG1cuTJeC6JrLhTAgee5KX5neUIzfWMvsDD3"
end

while true
	re = client.search("@ance_togo").first.id
	client.retweet(re)
	puts "Retweet: #{re} #{Time.now}"
	sleep(5)
end
