riot.tag2('app', '<rate-lists rates="{rates}"></rate-lists>', 'app,[data-is="app"]{ display: block; width: 90%; margin: 0 auto; }', '', function(opts) {
  self = this

  host_binance = 'https://api.binance.com/api/v1/ticker/24hr'
  host_zaif = 'https://api.zaif.jp/api/1/last_price/'
  brand = ['btc_jpy', 'bch_jpy', 'mona_jpy']

  self.rates = [
    {name: 'BTC', rate: '...'},
    {name: 'BCH', rate: '...'},
    {name: 'MONA', rate: '...'},
    {name: 'ETH', rate: '...', index: 0},
    {name: 'ETC', rate: '...', index: 59},
    {name: 'LSK', rate: '...', index: 154},
    {name: 'XMR', rate: '...', index: 115},
    {name: 'XRP', rate: '...', index: 90},
    {name: 'ZEC', rate: '...', index: 65},
    {name: 'XEM', rate: '...', index: 282},
    {name: 'DASH',rate: '...', index: 70}
  ]

  fetch(host_zaif + brand[0] ).then(function(response){
    return response.json()
  }).then(function(json) {

    self.update()
  }).catch(console.log("dd"))

  fetch(host_zaif + brand[1] ).then(function(response){
    return response.json()
  }).then(function(json) {
    self.rates[1].rate = json.last_price
    self.update()
  }).catch(console.log("dd"))

  fetch(host_zaif + brand[2] ).then(function(response){
    return response.json()
  }).then(function(json) {
    self.rates[2].rate = json.last_price
    self.update()
  }).catch(console.log("dd"))

  self.one('updated', function(){

    fetch(host_binance).then(function(response){
      return response.json();
    }).then(function(json){
      btc_price = self.rates[0].rate

      for(var i = 3; i < 11; i++) {
        if (btc_price !== '...'){
          self.rates[i].rate = (json[self.rates[i].index].lastPrice * btc_price).toFixed(1)
        }
      }

      self.update()
    }).catch(console.log("dd"))
  })

});
