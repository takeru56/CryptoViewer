riot.tag2('rate-lists', '<h3 class="top-title"> <img src="../icon19.png" height="11px"> CryptoViewer </h1> <ul class="rate-lists" style="list-style-type: none"> <li class="rate-list" each="{item, i in items}"> <div class="rate-list__icon"> <img riot-src="../icons/{item.name}.ico" alt="{item.name}" height="20px"> </div> <div class="rate-list__name"> {item.name}</div> <div class="rate-list__rate">¥ {item.rate}</div> </li> </ul>', 'rate-lists,[data-is="rate-lists"]{ display: block; padding-top: 0px; } rate-lists .top-title,[data-is="rate-lists"] .top-title{ text-align: center; } rate-lists .rate-lists,[data-is="rate-lists"] .rate-lists{ padding: 0; border-bottom: solid 1px #EBECEF; } rate-lists .rate-list,[data-is="rate-lists"] .rate-list{ height: 28px; border-top: solid 1px #EBECEF; line-height: 28px; } rate-lists .rate-list > div,[data-is="rate-lists"] .rate-list > div{ float: left; height: 100%; } rate-lists .rate-list__icon,[data-is="rate-lists"] .rate-list__icon{ display:table-cell; width: 28px; height: 28px; line-height: 28px; } rate-lists .rate-list__icon > img,[data-is="rate-lists"] .rate-list__icon > img{ vertical-align: middle; text-align: center; } rate-lists .rate-list__name,[data-is="rate-lists"] .rate-list__name{ text-align: center; width: 40px; font-weight: bold; } rate-lists .rate-list__rate,[data-is="rate-lists"] .rate-list__rate{ width: 70px; padding-left: 85px; text-align: left; } rate-lists .clearfix:after,[data-is="rate-lists"] .clearfix:after{ display: block; content: ""; clear: both; }', '', function(opts) {
  this.items = opts.rates
});