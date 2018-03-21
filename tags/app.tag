<app>
  <top></top> 
  <assets></assets>
  <rate-lists rates={rates}></rate-lists>
  
  <style>
    :scope{
      display: block;
      width: 90%;
      margin: 0 auto;
    }
  </style>

  <script>
  this.rates = [ 
    {name: 'BTC', rate: '967,978'},
    {name: 'ETH', rate: '61,467'},
    {name: 'XEM', rate: '32.534'},
    {name: 'MONA', rate: '18,486'}
  ]
  </script>
</app>
