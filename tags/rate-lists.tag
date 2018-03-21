<rate-lists>
  <ul class="lists-header clearfix" style="list-style-type: none">
    <li class="reload-btn">更新</li>
    <li class="edit-btn">編集</li>
  </ul>

  <ul class="rate-lists" style="list-style-type: none">
    <li class="rate-list" each="{item, i in items}">
      <div class="rate-list__currency"> {item.name} </div>
      <div class="rate-list__asset">200</div>
      <div class="rate-list__rate">¥ {item.rate} </div>
    </li>
  </ul>

  <style scoped>
    :scope{
      display: block;
      padding-top: 40px;
    }

    .lists-header{
      padding: 0;
      margin: 0;
    }

    .reload-btn{
      float: left;
      width: 50px;
      height: 22px;
      margin-right: 220px;
      border-radius: 3px;
      background: #F8F7FC; 
      color: #EB4259;
      line-height: 22px;
      text-align: center;
      cursor: pointer;
    }

    .edit-btn{
      float: left;
      width: 50px;
      height: 22px;
      border-radius: 3px;
      background: #F8F7FC; 
      color: #EB4259;
      line-height: 22px;
      text-align: center;
      cursor: pointer;
    }

    .rate-lists{
      padding: 0;
      border-bottom: solid 1px #EBECEF;
    }

    .rate-list{
      height: 30px;
      border-top: solid 1px #EBECEF;
      line-height: 30px;
    }

    .rate-list > div{
      height: 100%;
      float: left;
    }

    .rate-list__currency{
      width: 100px;
    }

    .rate-list__asset{
      width: 100px;
      text-align: right;
    }

    .rate-list__rate{
      width: 120px;
      text-align: right;
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
