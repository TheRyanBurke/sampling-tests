class Twitter

	def Twitter.trends
		<<-RESPONSE
{
  "trends": [
    {
      "name": "Guille Franco",
      "url": "http://search.twitter.com/search?q=Guille+Franco"
    },
    {
      "name": "#honestyhour",
      "url": "http://search.twitter.com/search?q=%23honestyhour"
    },
    {
      "name": "Vuvuzela",
      "url": "http://search.twitter.com/search?q=Vuvuzela"
    }
  ],
  "as_of": "Tue, 22 Jun 2010 17:19:03 +0000"
}
RESPONSE
	end

end
