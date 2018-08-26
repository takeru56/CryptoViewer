<rate-lists>
  <h3 class="top-title">
    <img src="../icon19.png" height="11px">
    CryptoViewer
  </h3>
  <ul class="rate-lists" style="list-style-type: none">
    <li class="rate-list" each="{item, i in items}">
      <div class="rate-list__icon">
        <img src="../icons/{item.name}.ico" alt="{item.name}" height="20px">
      </div>
      <div class="rate-list__name"> {item.name}</div>
      <div class="rate-list__rate">¥ {item.rate}</div>
    </li>
  </ul>

  <style scoped>
    :scope{
      display: block;
      padding-top: 0px;
    }

    .top-title{
      text-align: center;
    }

    .rate-lists{
      padding: 0;
      border-bottom: solid 1px #EBECEF;
    }

    .rate-list{
      height: 28px;
      border-top: solid 1px #EBECEF;
      line-height: 28px;
    }

    .rate-list > div{
      float: left;
      height: 100%;
    }

    .rate-list__icon{
      display:table-cell;
      width: 28px;
      height: 28px;
      line-height: 28px;
    }

    .rate-list__icon > img{
      vertical-align: middle;
      text-align: center;
    }

    .rate-list__name{
      text-align: center;
      width: 40px;
      font-weight: bold;
    }

    .rate-list__rate{
      width: 70px;
      padding-left: 85px;
      text-align: left;
    }

    .clearfix:after{
      display: block;
      content: "";
      clear: both;
    }

  </style>

  <script>
    this.items = opts.rates
  </script>
</rate-lists>
