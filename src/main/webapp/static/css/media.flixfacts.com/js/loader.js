;(function(){
    var 
      _flixLoader = {
        mappingTable:{
          'data-flix-distributor' : {'inpage':'','button':'d','value':null,'hotspot':'d'},
          'data-flix-language' : {'inpage':'','button':'l','value':null,'hotspot':'l'},
          'data-flix-mpn' : {'inpage':'mpn','button':'mpn','value':null,'hotspot':'mpn'},
          'data-flix-ean' : {'inpage':'ean','button':'ean','value':null,'hotspot':'ean'},
          'data-flix-url' : {'inpage':'url','button':'url','value':null, 'hotspot':'url'},
          'data-flix-sku' : {'inpage':null,'button':'sku','value':null, 'hotspot':'sku'},
          'data-flix-button' : {'inpage':null,'button':'dom','value':null, 'hotspot':null},
          'data-flix-inpage' : {'inpage':null,'button':null,'value':null, 'hotspot':null},
          'data-flix-button-image' : {'inpage':null,'button':'img','value':null, 'hotspot':null},
          'data-flix-energylabel' : {'inpage':'energylabel','button':'energylabel','value':null, 'hotspot':null},
          'data-flix-embed' : {'inpage':null,'button':'embed','value':null, 'hotspot':null},
          'data-flix-brand' : {'inpage':'brand','button':'brand','value':null, 'hotspot':'brand'},
          'data-flix-fallback-language' : {'inpage':'fl','button':'fl','value':null, 'hotspot':'fl'},
          'data-flix-price' : {'inpage':null,'button':'p','value':null, 'hotspot':'p'},
          'data-flix-hotspot': {'inpage': null, 'button': null, 'value': null, 'hotspot':'hotspot'},
          'data-flix-mobilesite' : {'inpage':'ms','button':'ms','value':null, 'hotspot':null},
          'data-flix-rec' : {'inpage':null,'button':null,'value':null, 'hotspot':null}
        },
        instance:null,
    ab: {"d":{"78":"1","155":"1","158":"1","174":"1","179":"1","370":"1","859":"1","2754":"1","2982":"1","3986":"1","4058":"1","4154":"1","4216":"1","4264":"1","4870":"1","4874":"1","5830":"1","5906":"1","6049":"1","6130":"1","6583":"1","6792":"1","6971":"1"},"d_hotspot":{"795":"1"},"button":{"mpn":{},"ean":{}},"inpage":{"mpn":{"LOR3474630494374":"1","SX3-00001":"1","SC2009\/00":"1","QP6510\/20":"1","BT9290\/32":"1","S9711\/31":"1","S7520\/50":"1","S5320\/08":"1","S5420\/08":"1","bt5205\/16":"1","GU5-00001":"1","1479778":"1","WDBUZG0010BBK-NESN":"1","P3Q-00001":"1","P2Z-00001":"1","PP4-00001":"1","PT3-00001":"1","PP3-00001":"1","wd10purx-uesn":"1","WDBU6Y0020BBK-NESN":"1","WDBCTL0030HWT-NESN":"1","WDBCTL0020HWT-NESN":"1","WDBFJK0030HBK-NESN":"1","WDI WDBBKD0020BBK-NESN":"1","WDI WDBBKD0020BBY-NESN":"1","WDI WDBGPU0010BBK-NESN":"1","WDI WDBGPU0010BBL-NESN":"1","Elements":"1","wd10jpvx-uesn":"1","6GQ-00643":"1","9337694031371":"1","sm-a310fzkdser":"1","F10M8MD.ABWPEXC":"1","SM-A510FZKDSER":"1","18790003":"1","UE22H5600AKX":"1","SM-J120FZDDSER":"1","LGH736.ACISWH":"1","sm-j105hzddser":"1","sm-j320fzddser":"1","NTH01-FR-EC":"1","NWS01-EC":"1","NSC01-EU":"1","TW41":"1"},"ean":{"5907732502244":"1","4210201034254":"1","4210201359821":"1","4210201045564":"1","4210201037651":"1","4210201656067":"1","4210201055198":"1","4210201128823":"1","8710103737520":"1","8710103747277":"1","8710103751137":"1","8710103736769":"1","8710103738121":"1","8710103642350":"1","8710103675792":"1","8710103749097":"1","8710103740148":"1","8710103740193":"1","0000bt5205\/16":"1","8710103740094":"1","8710103728979":"1","8710103746829":"1","8710103693055":"1","8710103729488":"1","8710103721086":"1","8710103723271":"1","8710103654964":"1","8710103704249":"1","0718037807607":"1","0718037779911":"1","0718037823324":"1","0718037806266":"1","0718037811055":"1","0718037811079":"1","0718037812359":"1","0718037825021":"1","0718037833156":"1","0718037825038":"1","0718037827841":"1","0718037800936":"1","9337694031371":"1","0889842086034":"1","0718037782881":"1","8806088123745":"1","8806084212061":"1","8806088123851":"1","4548736028425":"1","8806086043151":"1","8806088188898":"1","8806084992680":"1","8806088212722":"1","8806088188874":"1","3700730500623":"1","3700730500234":"1","3700730500104":"1"}},"hotspot":{"mpn":{"1496576":"1","1414272":"1","1367682":"1","1225550":"1","1225528":"1","1390698":"1","1478377":"1","1524835":"1"},"ean":{}}},
        isAb:function(type){
          try{
            if (!this.ab.d.hasOwnProperty(this.mappingTable['data-flix-distributor']['value'])) { return false; }
            if (this.ab[type]['mpn'].hasOwnProperty(this.mappingTable['data-flix-mpn']['value'])) { return true; }
            if (this.ab[type]['ean'].hasOwnProperty(this.mappingTable['data-flix-ean']['value'])) { return true; }
          }catch(e){
              this.log(e.message);
          }
          return false;
        },
        init:function() {
          try {
            var scs = document.getElementsByTagName('script');
            for(var i=0;i<scs.length;i++){
              if (scs[i].src.indexOf('dev-delivery')>0 || scs[i].src.indexOf('flixfacts.com/js/loader')>0 || scs[i].src.indexOf('flixsyndication.net/minisite/ssl/js/loader')>0 || scs[i].src.indexOf('flixsyndication.net/minisite/ssl/logo/code/js/l.js')>0 || scs[i].src.indexOf('flixsyndication.net/js/loader')>0 || scs[i].src.indexOf('logo.flixfacts.co.uk/code/js/l.js')>0 || scs[i].src.indexOf('flixfacts.co.uk/link.php')>0) {
                this.instance=scs[i];
                break;
              }
            }
            this.errLog();
            this.setGvid();
            this.parse();
            this.load('button');
            this.load('inpage');
            this.load('hotspot');
            this.loadRec();
          } 
          catch(e) {
            this.log(e.message);
          }
        },
        setValue:function(name,value){
          if(name == "data-flix-ean" && value != "" && value.length<13) {
            value = Array(13 + 1 - value.length).join('0') + value;
          }
          var fname = (this.mappingTable[name]!=undefined ) ? this.mappingTable[name] : this.mappingTable[this.mapOldParam(name)];
          if (fname!=undefined && value) {
            fname['value']=value;
          }
        },
        mapOldParam:function(name){
          try
          {
            for (var i in this.mappingTable){
              if (this.mappingTable[i]['button']==name) {
                return i;
              }
            }
          }
          catch (e) {
            this.log(e.message);
          }
        },
        validate:function(){
          if(this.mappingTable['data-flix-button']['value'] == null && this.mappingTable['data-flix-inpage']['value']==null){
            this.mappingTable['data-flix-button']['value'] = 'flix-minisite';
          }
          
          if(this.mappingTable['data-flix-distributor']['value'] == null){
            this.log('distributor is not set');
            return false;
          }

          if (this.mappingTable['data-flix-language']['value']==null){
            this.log('language is not set');
            return false;
          }

          if( !! this.ab.d_hotspot[this.mappingTable['data-flix-distributor']['value']] && ! this.mappingTable['data-flix-hotspot']['value']) {
            this.mappingTable['data-flix-hotspot']['value'] = 'flix-hotspot';
          }
          else if( this.ab.d[ this.mappingTable['data-flix-distributor']['value']] && 
          ( this.mappingTable['data-flix-ean']['value'] in this.ab.hotspot.ean || this.mappingTable['data-flix-mpn']['value'] in this.ab.hotspot.mpn )) {
            this.mappingTable['data-flix-hotspot']['value'] = 'flix-hotspot';
          }
          return true;
        },
        _s : function(url,append_dom,options){
            var _fscript = document.createElement('script');
            _fscript.setAttribute("type","text/javascript");
            _fscript.setAttribute("src", url);
            _fscript.async = "true";
            for (var i in options) {i=="id" ? _fscript.id=options[i] : _fscript.setAttribute(i,options[i]);}
            append_dom.appendChild(_fscript);
            return _fscript;
        },
        log: function(msg){
          try{
            console.log(msg);
          }catch(e){}
        },
        loadRec:function(){
            var elem = this.mappingTable['data-flix-rec']['value'];
            if (elem==null) return false;
            var dom = document.getElementById(elem);
            if (!dom) return false;
            try {
                this._s(this.getRecUrl(),document.getElementsByTagName("head")[0]);
            }catch (e) {
                this.log(e.message);
                return false;
            }
        },
        load:function(type){
          if ( ! this.validate() ) return false;
          var elem = this.mappingTable['data-flix-'+type]['value'];
          if (elem==null) return false;
          var dom = document.getElementById(elem);

          if (!dom && type != 'hotspot'){
            try {
              var div = document.createElement('div');
              div.id=elem;
              this.instance.parentNode.appendChild(div);
            } 
            catch(e) {
              this.log(e.message);
              return false;
            }
          }

          try {
            var url = this.getUrl(type);
            var options={};
            var scache = this.isAb(type) ? "&fcache="+Math.random() : "";
            scache+="&ext=.js";
       

            if (!this.isAb(type)) options.crossorigin = "true";
            if (type=='button') {
              this._s(url+scache,document.getElementById(elem),options);
              var styleElement = document.createElement("style");
              var cssCode="#"+elem+" a img {padding-right:3px;}";
              styleElement.type = "text/css";
              if (styleElement.styleSheet) {
                styleElement.styleSheet.cssText = cssCode;
              } 
              else {
                styleElement.appendChild(document.createTextNode(cssCode));
              }
              document.getElementsByTagName("head")[0].appendChild(styleElement);
            }
            else if (type == 'inpage'){
                this._s(url+scache,document.getElementById(elem),options);
            } 
            else if (type == 'hotspot'){
                this._s(url+scache,document.getElementsByTagName('head')[0],options);
            }
          }
          catch (e) {
            this.log(e.message);
            return false;
          }
        },
        getRecUrl: function(){
            var d = this.mappingTable['data-flix-distributor'].value,
                k = this.mappingTable['data-flix-sku'].value || this.mappingTable['data-flix-ean'].value,
                l = this.mappingTable['data-flix-language'].value;
            return "//prw.flix360.com/recommendations?key=p:"+encodeURIComponent(d)+":"+encodeURIComponent(k)+"&lang="+encodeURIComponent(l);
        },
        getUrl:function(btype) {
          var url = '';
          var url_in = '';
          var url_mn = '';
          var url_hs = '';
          for (var i in this.mappingTable)
          {
            if (this.mappingTable[i]['value']==null) continue;
            if (this.mappingTable[i][btype]==null) continue;

            value_m = this.mappingTable[i]['value'];

            value_n = value_m.replace(/'/g, "%27");

            url+="&"+ this.mappingTable[i][btype]+"="+encodeURIComponent(value_n);

            if (i=='data-flix-inpage') continue;
            if (i=='data-flix-price') continue;
            if (i=='data-flix-button-image') continue;
            if (i=='data-flix-button') continue;
            if (i=='data-flix-price') continue;
            if (i=='data-flix-button-image') continue;
            if (i=='data-flix-fallback-language') continue;
            if (i=='data-flix-brand') continue;
            if (i=='data-flix-energylabel') continue;
            if (i=='data-flix-mobilesite') continue;

            url_in+= ((this.mappingTable[i]['inpage']=='') ? '' : this.mappingTable[i]['inpage']+"/" ) + escape(this.mappingTable[i]['value'])+"/";
            url_mn+= ((this.mappingTable[i]['inpage']=='') ? '' : this.mappingTable[i]['inpage']+"/" ) + escape(this.mappingTable[i]['value'])+"/";
            url_hs+= ((this.mappingTable[i]['inpage']=='') ? '' : this.mappingTable[i]['inpage']+"/" ) + escape(this.mappingTable[i]['value'])+"/";

          }

          url+=('https:' == document.location.protocol) ? "&ssl=1":"";

          if (this.mappingTable['data-flix-mpn']['value']==null && this.mappingTable['data-flix-ean']['value']==null) {
            var uc = encodeURIComponent(window.location.pathname); /*get a unique url*/
            this.setValue('data-flix-url', uc.replace(/\W/g,""));
            url_in+=uc.replace(/\W/g,"");
            url_mn+=uc.replace(/\W/g,"");
            url_hs+=uc.replace(/\W/g,"");
          }

          var minisite_url = ('https:' == document.location.protocol) ? 'https://media.flixsyndication.net/minisite/ssl/delivery/js/minisite/' : 'http://media.flixcar.com/delivery/js/minisite/';
          var inpage_url = ('https:' == document.location.protocol) ? 'https://media.flixsyndication.net/inpage/ssl/delivery/js/inpage/' : 'http://media.flixcar.com/delivery/js/inpage/';
          var hotspot_url = ('https:' == document.location.protocol) ? 'https://media.flixsyndication.net/inpage/ssl/delivery/js/hotspot/' : 'http://media.flixcar.com/delivery/js/hotspot/';

          var distributorIds = {"8772":1,"6869":1,"173":1,"4154":1,"7244":1,"3924":1,"7228":1};
          if ( distributorIds.hasOwnProperty(this.mappingTable['data-flix-distributor']['value'])) {
                minisite_url = ('https:' == document.location.protocol) ? 'https://d20d8a0b518lq3.cloudfront.net/delivery/js/minisite/' : 'http://d20d8a0b518lq3.cloudfront.net/delivery/js/minisite/';
                inpage_url = ('https:' == document.location.protocol) ? 'https://d20d8a0b518lq3.cloudfront.net/delivery/js/inpage/' : 'http://d20d8a0b518lq3.cloudfront.net/delivery/js/inpage/';
                hotspot_url = ('https:' == document.location.protocol) ? 'https://d20d8a0b518lq3.cloudfront.net/delivery/js/hotspot/' : 'http://d20d8a0b518lq3.cloudfront.net/delivery/js/hotspot/';
          }


          //url = (btype=='button') ? minisite_url + url_mn.substr(0,url_mn.length-1) + '?' + url.substr(1) : inpage_url + url_in.substr(0,url_in.length-1) + "?" + url;

          if (btype == 'button')
              url = minisite_url + url_mn.substr(0, url_mn.length - 1) + '?' + url.substr(1);
          if (btype == 'inpage')
              url = inpage_url + url_in.substr(0, url_in.length - 1) + "?" + url;
          if (btype == 'hotspot')
              url = hotspot_url + url_hs.substr(0, url_hs.length - 1) + "?" + url;


          return url;
        },
        parse:function(){
          var qmark = this.instance.src.indexOf('?');
          if(qmark != -1) {
            var itms = 	this.instance.src.substr(qmark+1).split("&");
            for (var i=0;i<itms.length;i++ ) {
              var kv = itms[i].split("=");
              this.setValue(kv[0],decodeURIComponent(kv[1]));
            }
          }else{
            for (var i in this.mappingTable ) {
              try{
                this.setValue(i,this.instance.getAttribute(i));
              }catch(e){ this.log(e.message);}
            }
          }
        },
        errLog: function(){
          try {
            window.addEventListener('error', function (err) {
              if (!err) return;
              if(err.filename && /flix(facts|car|syndication)\./g.test(err.filename)) {
                var det = err.colno ? 'l:' + err.lineno +', c:'+ err.colno : 'l:' + err.lineno;
                det+=" "+window.location.href;
                var i = new Image;
                i.src="//rt.flix360.com/jserr?f="+encodeURIComponent(err.filename)+"&d="+encodeURIComponent(det)+"&m="+encodeURIComponent(err.message);
              }
            });
          } catch(e){
              this.log(e.message);
          }
        },
        setGvid:function() {
          if ( document.getElementById('data-flix-t-script') ) return;
          window['flixgvid'] = function(obj){
            try{
              delete window['flixgvid'];
              window.flixJsCallbacks['gvid'] = obj['gvid'];
            }catch(e){}
          };
          this._s("//t.flix360.com/?f=flixgvid",document.getElementsByTagName('head')[0],{"id":"data-flix-t-script"});


        }
      };
    var 
      flixJsCallbacks = {
        _loadCallback:null,
        _loadInpageCallback:null,
        _loadMinisiteCallback:null,
        _loadNoshowCallback:null,

        setLoadCallback:function(cFunction,ftype){
          try{
            if (cFunction && typeof(cFunction) === "function" ) {
              switch(ftype) {
                case "inpage": this._loadInpageCallback = cFunction;  break;
                case "minisite" : this._loadMinisiteCallback = cFunction; break;
                case "noshow" : this._loadNoshowCallback = cFunction; break;
                default:	this._loadCallback = cFunction; break;
              }
            }
            else { throw cFunction+" is not a function";}
          }
          catch(e) {
            try {console.log(e);}catch(e1){}
          }
        },
        recCb:function(data){
            if( !(data && data.body)) return false;
            var
                elem = document.getElementById(_flixLoader.mappingTable['data-flix-rec'].value),
                script = document.createElement("script"),
                css = document.createElement("style"),
                remove,
                init
                ;
            if (!elem) return false;
            try{
                elem.innerHTML = data.body;

                script.id = "flix-l-s";
                script.text = data.script;


                if ( document.addEventListener ) {
                    css.appendChild(document.createTextNode(data.css));
                }
                else {
                    css.type = "text/css";
                    css.styleSheet.cssText = data.css;
                }

                document.getElementsByTagName("head")[0].appendChild( css );
                document.getElementsByTagName("body")[0].appendChild( script );
            }catch (e){
                _flixLoader.log(e.message);
            }
        }
    };
    var getFlixCallback = function(){
      return flixJsCallbacks;
    };
    window['flixJsCallbacks'] = getFlixCallback();
    _flixLoader.init();
})();


















































































































