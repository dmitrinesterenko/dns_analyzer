### DNS Analyzer

Analyze the DNS that are used by your web page by running through a HAR request
and finding out the DNS providers for each of the requests that your page makes.

This is useful to find DNS provider inneficiences if you are returning DNS servers
that do not respond to queries quickly then you can optimize your page further.

### Using
Grab a HAR of your page.

Save it somewhere and run `./dns_analyzer www.example.com.har`

### License

MIT. I took this from Kris Beever's [DNS performance as a tool presentation](http://www.slideshare.net/nsoneinc/ny-web-performance-dns-as-a-web-performance-tool) and
I can claim no rights to this.
