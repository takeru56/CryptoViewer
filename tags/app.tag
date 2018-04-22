<app>
  <rate-lists rates={rates}></rate-lists>
  
  <style>
    :scope{
      display: block;
      width: 90%;
      margin: 0 auto;
    }
  </style>

  <script>
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

  
  //fetch btc price from zaif
  fetch(host_zaif + brand[0] ).then(function(response){
    return response.json()
  }).then(function(json) {
    self.rates[0].rate = json.last_price
    self.update()
  }).catch()

  //fetch bch price from zaif
  fetch(host_zaif + brand[1] ).then(function(response){
    return response.json()
  }).then(function(json) {
    self.rates[1].rate = json.last_price
    self.update()
  }).catch()

  //fetch mona price from zaif
  fetch(host_zaif + brand[2] ).then(function(response){
    return response.json()
  }).then(function(json) {
    self.rates[2].rate = json.last_price
    self.update()
  }).catch()

  self.one('updated', function(){
   
    //fetch currency prices from binance
    fetch(host_binance).then(function(response){
      return response.json(); 
    }).then(function(json){
      btc_price = self.rates[0].rate

      //convert price from /btc to /jpy
      for(var i = 3; i < 11; i++) {
        if (btc_price !== '...'){
          rate = (json[self.rates[i].index].lastPrice * btc_price).toLocaleString(undefined, {minimumFractionDigits: 1, maximumFractionDigits: 1})
          self.rates[i].rate = rate
        }
      }

      self.rates[0].rate = btc_price.toLocaleString()
    
      self.update()
    }).catch()
  })

  

  </script>
</app>
