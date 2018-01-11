if (typeof Begun == 'undefined') {
	var Begun = {};
}
Begun.Hypercontext = function(block, pad_id) {
	if (!block) {
		return;
	}
	if (!Begun.Hypercontext.initBlock) {
		Begun.Hypercontext.initBlock = {};
		for (var prop in block) {
			if (block.hasOwnProperty(prop)) {
				Begun.Hypercontext.initBlock[prop] = block[prop];
			}
		}
	}
	this.block = block;
	this.pad_id = pad_id;
	this.WARNING_BG = '#F0F0F0';
	this.design = this.initDesign();
	this.max_singleword = this.block.options && this.block.options.json && this.block.options.json.hyper_max_singleword || 1;
	this.max_total = Begun.Autocontext.getBannersByBlockId(this.block.id, 'hypercontext').length * this.max_singleword;
	this.show_timeout = this.block.options && this.block.options.json && this.block.options.json.hyper_show_timeout || 300;
	this.hide_timeout = this.block.options && this.block.options.json && this.block.options.json.hyper_hide_timeout || 300;
	this.hide_timer = [];
	this.show_timer = [];
	this.fragments = [];
	this.phrases = [];
	this.texts = [];
    this.hypercontextWindow = (function () {
        var i = 0, parentWindow = window, hypercontextContainer;
        hypercontextContainer = Begun.$('hypercontext');
        while (i < 10 && !hypercontextContainer) {
            parentWindow = parentWindow.parent;
            hypercontextContainer = Begun.$('hypercontext', parentWindow.document);
            i++;
        }
        return hypercontextContainer ? parentWindow : window;
    }());
	this.banners = [];
	this.feeds_handled = 0;
	this.REVISION = '$LastChangedRevision$';
	this.init();
};
Begun.Hypercontext.prototype = {
	css: {
		main: '\
a.begun_hyper_link:link,\
a.begun_hyper_link:visited,\
a.begun_hyper_link:hover,\
a.begun_hyper_link:active {\
text-decoration:none !important;\
text-indent:0 !important;\
color:{{hyper_phrase:color}} !important;\
background:{{hyper_phrase:background}} !important;\
padding-bottom:{{hyper_phrase:paddingBottom}} !important;\
font-style:{{hyper_phrase:fontStyle}} !important;\
font-weight:{{hyper_phrase:fontWeight}} !important;\
border-bottom:1px solid {{hyper_phrase:color}} !important;\
border-bottom-width:{{hyper_phrase:borderBottomWidth}} !important;\
border-bottom-style:{{hyper_phrase:borderBottomStyle}} !important;\
white-space: nowrap !important;\
}\
.begun-h-block {\
position:absolute !important;\
float:left !important;\
display:none;\
z-index: 1 !important;\
}\
.begun-h-block * {\
clear:none !important;\
color:#000 !important;\
float:none !important;\
margin:0 !important;\
padding:0;/* no important! */\
letter-spacing:normal !important;\
word-spacing:normal !important;\
z-index:auto !important;\
font:normal normal 12px Arial,sans-serif !important;\
text-transform:none !important;\
list-style:none !important;\
position:static !important;\
text-indent:0 !important;\
visibility:visible !important;\
text-align:left !important;\
width:auto;/* no important! */\
}\
.begun-h-video {cursor:default !important;}\
.begun-h-video object {cursor:pointer !important;outline:none !important;width:230px !important;height:150px !important;}\
.begun-h-video-container {height:150px !important;clear:both !important;}\
.begun_hyper_active {\
display:block !important;\
}\
.begun-h-r1, .begun-h-r2, .begun-h-r3, .begun-h-r4, .begun-h-r5 {\
display: block !important;\
height: 1px !important;\
overflow: hidden !important;\
font-size:1px !important;\
clear:both !important;\
}\
.begun-h-pointer-bl .begun-h-pointer-top,\
.begun-h-pointer-br .begun-h-pointer-top,\
.begun-h-pointer-tl .begun-h-pointer-bottom,\
.begun-h-pointer-tr .begun-h-pointer-bottom {\
display:none;\
}\
.begun-h-r5 {margin: 0 5px !important;}\
.begun-h-r4 {margin: 0 4px !important;}\
.begun-h-r3 {margin: 0 3px !important;}\
.begun-h-r2 {margin: 0 2px !important;}\
.begun-h-r1 {margin: 0 1px !important;}\
.begun-h-inner-box,\
.begun-h-block b,\
.begun-h-block i { background-color: {{block:backgroundColor}} !important;cursor:pointer !important;}\
.begun-h-block .begun-h-shadow {z-index:19999 !important;display:block !important;position:relative !important;left:0 !important;top:0 !important;}\
.begun-h-block .begun_favicon {width:16px !important;height:16px !important;margin-right:6px !important;vertical-align: middle !important;}\
.begun-h-block .begun_adv_rich, .begun-h-block .begun_adv_thumb {position:relative !important;}\
.begun-h-block .begun_adv_rich .begun-h-title, .begun-h-block .begun_adv_rich .begun-h-text, .begun-h-block .begun_adv_rich .begun-h-url {margin-left:75px !important;}\
.begun-h-block .begun_adv_thumb .begun-h-title, .begun-h-block .begun_adv_thumb .begun-h-text, .begun-h-block .begun_adv_thumb .begun-h-url { margin-left:60px !important;}\
.begun-h-block .begun_adv_rich .begun_adv_image {position:absolute !important;top:21px !important;width:70px !important;height:70px !important;left:10px !important;border:none !important;z-index:20 !important;}\
.begun-h-block .begun_adv_rich .begun_adv_image img {position:absolute !important;max-width:none !important;top:0;left:0;border:1px solid {{block:borderColor}} !important;}\
.begun-h-block .begun_adv_thumb a.begun_thumb {position:absolute !important;top:21px !important;left:20px !important;display:block !important;float:left !important;zoom:1 !important;overflow:hidden !important;z-index:1 !important; }\
.begun-h-block .begun_adv_thumb a.begun_thumb img {border:none !important;}\
.begun-h-block .begun-h-rounded-box {width:267px;float:left !important;position:absolute !important;left:0 !important;top:0 !important;z-index:20000 !important;}\
.begun-h-block .begun-h-rounded-box .begun-h-inner-box {padding: 0 17px 12px;z-index: 99 !important;}\
.begun-h-pointer-bl b,\
.begun-h-pointer-tl i {margin-left:0 !important;}\
.begun-h-pointer-bl b.begun-h-r3,\
.begun-h-pointer-tl i.begun-h-r3 {border-left-width:1px !important;}\
.begun-h-pointer-br b,\
.begun-h-pointer-tr i {margin-right:0 !important;}\
.begun-h-pointer-br b.begun-h-r3,\
.begun-h-pointer-tr i.begun-h-r3 {border-right-width:1px !important;}\
.begun-h-rounded-box-border .begun-h-r5 {background: {{block:borderColor}} !important;}\
.begun-h-rounded-box-border .begun-h-r3 {border-left:2px solid {{block:borderColor}} !important;border-right:2px solid {{block:borderColor}} !important;}\
.begun-h-rounded-box-border .begun-h-r2,\
.begun-h-rounded-box-border .begun-h-r1,\
.begun-h-block .begun_warn_message,\
.begun-h-rounded-box-border .begun-h-inner-box {border-left:1px solid {{block:borderColor}} !important;border-right:1px solid {{block:borderColor}} !important;zoom:1 !important;}\
.begun-h-pointer-tl .begun-h-rounded-box .begun-h-pointer {border-bottom:27px solid {{block:backgroundColor}} !important;border-right:18px solid transparent !important;}\
.begun-h-pointer-bl .begun-h-rounded-box .begun-h-pointer {border-top:27px solid {{block:backgroundColor}} !important;border-right:18px solid transparent !important;}\
.begun-h-pointer-tr .begun-h-rounded-box .begun-h-pointer {border-bottom:27px solid {{block:backgroundColor}} !important;border-left:18px solid transparent !important;}\
.begun-h-pointer-br .begun-h-rounded-box .begun-h-pointer {border-top:27px solid {{block:backgroundColor}} !important;border-left:18px solid transparent !important;}\
.begun-h-block .begun-h-rounded-box .begun-h-pointer {width:0 !important; height:0 !important; line-height: 0 !important;}\
.begun-h-pointer-bl .begun-h-rounded-box-border .begun-h-pointer {border-top-color:{{block:borderColor}} !important;float:left !important;}\
.begun-h-pointer-bl .begun-h-rounded-box-border .begun-h-pointer-over {border-top-color:{{block:backgroundColor}} !important;position:relative !important;top:-3px !important;left:-17px !important;}\
.begun-h-pointer-tl .begun-h-rounded-box-border .begun-h-pointer {border-bottom-color:{{block:borderColor}} !important;float:left !important;}\
.begun-h-pointer-tl .begun-h-rounded-box-border .begun-h-pointer-over {border-bottom-color:{{block:backgroundColor}} !important;position:relative !important;top:3px !important;left:-17px !important;}\
.begun-h-pointer-br .begun-h-rounded-box-border .begun-h-pointer {border-top-color:{{block:borderColor}} !important;float:right !important;}\
.begun-h-pointer-br .begun-h-rounded-box-border .begun-h-pointer-over {border-top-color:{{block:backgroundColor}} !important;position:relative !important;top:-3px !important;left:17px !important;}\
.begun-h-pointer-tr .begun-h-rounded-box-border .begun-h-pointer {border-bottom-color:{{block:borderColor}} !important;float:right !important;}\
.begun-h-pointer-tr .begun-h-rounded-box-border .begun-h-pointer-over {border-bottom-color:{{block:backgroundColor}} !important;position:relative !important;top:3px !important;left:17px !important;}\
.begun-h-vml-group {position:relative !important;width:18px !important;height:28px !important;margin:-3px -1px -2px !important;}\
.begun-h-vml-shape {position:absolute !important;width:18px !important;height:28px !important;}\
.begun-h-vml-line  {position:absolute !important;top:0 !important;left:0;/* no important! */}\
.begun-h-pointer-tr .begun-h-pointer-top,\
.begun-h-pointer-br .begun-h-pointer-bottom {float:right !important;}\
.begun-h-pointer-tl .begun-h-pointer-top,\
.begun-h-pointer-bl .begun-h-pointer-bottom {float:left !important;}\
.begun-h-block a {\
text-decoration:none !important;\
}\
.begun-h-logo {\
float:right !important;\
margin-bottom: 5px !important;\
}\
.begun-h-logo a,\
.begun-h-logo a strong {\
text-decoration: none;\
font-size:14px !important;\
font-style:normal !important;\
font-weight:bold !important;\
line-height:16px !important;\
color:{{block_logo_color}} !important;\
letter-spacing: -1px !important;\
}\
.begun-h-logo a strong {\
	display: none;\
}\
.begun-h-logo a strong { /* ie6, ie7 */\
*display: inline;\
}\
.begun-h-logo a img { /* ie6, ie7 */\
*display: none;\
}\
.begun-h-title {\
clear:right !important;\
}\
.begun-h-title a, \
.begun-h-title a * {\
font-size:14px !important;\
font-size:{{title:fontSize}} !important;\
font-weight:bold !important;\
color:#BF2F2F !important;\
color:{{title:color}} !important;\
line-height:16px !important;\
}\
.begun-h-title a:hover, \
.begun-h-title a:hover * {\
color:#000 !important;\
color:{{title_hover:color}} !important;\
}\
.begun-h-text {\
margin-bottom:3px !important;\
}\
.begun-h-text a,\
.begun-h-text a * {\
color:#000 !important;\
color:{{text:color}} !important;\
font-size:12px !important;\
font-size:{{text:fontSize}} !important;\
line-height:15px !important;\
}\
.begun-h-text a b {\
font-weight:bold !important;\
}\
.begun-h-url * {\
font-size:11px !important;\
font-size:{{domain:fontSize}} !important;\
color:green !important;\
color:{{domain:color}} !important;\
line-height:13px !important;\
}\
.begun-h-warning b.begun-h-r1,\
.begun-h-warning b.begun-h-r2,\
.begun-h-warning b.begun-h-r3,\
.begun-h-block .begun_warn_message {\
background-color: {{warning_bg_color}} !important;\
}\
.begun-h-pointer-bl .begun-h-warning .begun-h-pointer-over,\
.begun-h-pointer-br .begun-h-warning .begun-h-pointer-over {\
border-top-color: {{warning_bg_color}} !important;\
}\
.begun-h-block .begun_warn_message {\
font-size:9px !important;\
line-height:10px !important;\
color:#333333 !important;\
text-transform:uppercase !important;\
padding: 4px 0 0 5px !important;\
}\
.begun-h-shadow {\
overflow: hidden !important;\
left:0 !important;\
top:0 !important;\
}\
.begun-h-shadow * {\
overflow: hidden !important;\
padding: 0 !important;\
border: 0 !important;\
margin: 0 !important;\
clear: none !important;\
zoom: 1 !important;\
}\
.begun-h-shadow .begun-h-stc, .begun-h-shadow .begun-h-sbc {\
height: 13px !important;\
float: left !important;\
}\
.begun-h-shadow .begun-h-stl, .begun-h-shadow .begun-h-str, .begun-h-shadow .begun-h-sbl, .begun-h-shadow .begun-h-sbr {\
width: 13px !important;\
height: 13px !important;\
float: left !important;\
}\
.begun-h-shadow .begun-h-sc {\
width: 100% !important;\
}\
.begun-h-shadow .begun-h-sml, .begun-h-shadow .begun-h-smr {\
width: 13px !important;\
float: left !important;\
height: 100% !important;\
}\
.begun-h-shadow .begun-h-smc {\
float: left !important;\
height: 100% !important;\
background: transparent !important;\
}\
.begun-h-shadow .begun-h-st, .begun-h-shadow .begun-h-sb {\
height: 13px !important;\
overflow: hidden !important;\
width: 100% !important;\
}\
.begun-h-shadow .begun-h-smr {background: transparent repeat-y -57px 0 !important;}\
.begun-h-shadow .begun-h-sbl {background: transparent no-repeat -44px -25px !important;}\
.begun-h-shadow .begun-h-str {background: transparent no-repeat -44px 0 !important;}\
.begun-h-shadow .begun-h-sbr {background: transparent no-repeat -44px -13px !important;}\
.begun-h-shadow .begun-h-sbc {background: transparent repeat-x 0 -43px !important;}\
\
.begun-h-shadow .begun-h-smr,\
.begun-h-shadow .begun-h-sbl,\
.begun-h-shadow .begun-h-str,\
.begun-h-shadow .begun-h-sbr,\
.begun-h-shadow .begun-h-stl {background-image:url(' + Begun.Autocontext.Strings.urls.hyper_shadow_2 + ') !important;}\
\
.begun-h-shadow .begun-h-sbc,\
.begun-h-pointer-br .begun-h-sbr,\
.begun-h-pointer-tr .begun-h-str {background-image:url(' + Begun.Autocontext.Strings.urls.hyper_shadow_1 + ') !important;}\
\
.begun-h-pointer-tl .begun-h-st {height:40px !important;}\
.begun-h-pointer-tl .begun-h-stl {width:22px !important;height:40px !important;background-position: 0 0 !important;}\
.begun-h-pointer-tl .begun-h-stc, \
.begun-h-pointer-tl .begun-h-str {margin-top:27px !important;}\
\
.begun-h-pointer-bl .begun-h-sb {height:37px !important;}\
.begun-h-pointer-bl .begun-h-sbl {width:22px !important;height:37px !important;background-position: -22px 0 !important;}\
.begun-h-pointer-bl .begun-h-sbc, \
.begun-h-pointer-bl .begun-h-str {margin-bottom:24px !important;}\
\
.begun-h-pointer-tr .begun-h-st {height:40px !important;}\
.begun-h-pointer-tr .begun-h-str {height:40px !important;background-position: 5px 4px !important;}\
.begun-h-pointer-tr .begun-h-stc, \
.begun-h-pointer-tr .begun-h-stl {margin-top:27px !important;}\
\
.begun-h-pointer-br .begun-h-sb {height:37px !important;}\
.begun-h-pointer-br .begun-h-sbr {height:37px !important;background-position: 5px -9px !important;}\
.begun-h-pointer-br .begun-h-sbc, \
.begun-h-pointer-br .begun-h-sbl {margin-bottom:24px !important;}\
\
.begun_adv_phone * {\
	font-size: 1px !important;\
}\
.begun_adv_phone {\
	width: 12px !important;\
	margin: 1px 3px 0 0 !important;\
	position:absolute !important;\
	top:0 !important;\
	left:0 !important;\
}\
.begun_adv_phone_wrapper {\
	padding-left:15px !important;\
	white-space:nowrap !important;\
	position:relative !important;\
	display:inline-block !important;\
	_display:inline !important;\
	zoom:1 !important;\
}\
.begun_adv_phone_wrapper.begun_adv_phone_no_icon {\
	padding-left:0 !important;\
}\
div.begun-h-url > .begun_adv_phone {\
	margin: 0 5px 0 0 !important;\
}\
.begun_adv_phone b {\
	border: #118f00 solid 0 !important;\
	height: 1px !important;\
	font-size: 1px !important;\
	line-height: 1px !important;\
	display: block !important;\
	overflow: hidden !important;\
}\
.begun_adv_phone .p0,\
.begun_adv_phone .p1,\
.begun_adv_phone .p3,\
.begun_adv_phone .p5,\
.begun_adv_phone .p8 {\
	background-color: #118f00 !important;\
}\
.begun_adv_phone .p1,\
.begun_adv_phone .p7,\
.begun_adv_phone .p8 {\
	margin: 0 1px !important;\
}\
.begun_adv_phone .p2,\
.begun_adv_phone .p7 {\
	border-width: 0 4px !important;\
}\
.begun_adv_phone .p3,\
.begun_adv_phone .p6 {\
	margin: 0 2px !important;\
}\
.begun_adv_phone .p0 {\
	margin: 0 3px !important;\
}\
.begun_adv_phone .p4 {\
	border-width: 0 3px !important;\
}\
.begun_adv_phone .p5 {\
	margin: 0 4px !important;\
}\
.begun_adv_phone .p6 {\
	border-width: 0 2px !important;\
}\
.begun_adv_phone .p8 {\
	height: 2px !important;\
}\
.begun_adv_phone b {\
	border-color: {{domain:color}} !important;\
}\
.begun_adv_phone .p0,\
.begun_adv_phone .p1,\
.begun_adv_phone .p3,\
.begun_adv_phone .p5,\
.begun_adv_phone .p8 {\
	background-color: {{domain:color}} !important;\
}\
.begun_offer_hyper .begun_adv {\
	border-collapse: collapse !important;\
}\
.begun_offer_hyper .begun_adv_cell {\
	padding: 0 !important;\
}\
.begun_offer_hyper .begun_adv_common {\
	position: relative !important;\
	width: 278px !important;\
	height: 118px !important;\
}\
.begun_offer_hyper .begun_adv_table {\
	border-collapse: collapse !important;\
}\
.begun_offer_hyper .begun_adv_table .begun_adv_cell {\
	padding: 0 !important;\
	vertical-align: top !important;\
}\
.begun_offer_hyper .begun_adv_cell_wrapper {\
	width: 276px !important;\
	height: 116px !important;\
	border: 1px solid rgb(67, 78, 80) !important;\
	background-color: #fff !important;\
	font-size: 12px !important;\
	font-family: Arial, "Helvetica CY", "Nimbus Sans L", sans-serif !important;\
	-webkit-box-shadow: 0 0 7px rgba(0, 0, 0, .8) !important;\
	-moz-box-shadow: 0 0 7px rgba(0, 0, 0, .8) !important;\
	-ms-box-shadow: 0 0 7px rgba(0, 0, 0, .8) !important;\
	-o-box-shadow: 0 0 7px rgba(0, 0, 0, .8) !important;\
	box-shadow: 0 0 7px rgba(0, 0, 0, .8) !important;\
}\
.begun_offer_hyper .begun_adv_cell_wrapper img {\
	border: none !important;\
}\
.begun_offer_hyper .begun_adv_cell_wrapper a {\
	display: block !important;\
	text-align: center !important;\
	border: none !important;\
	text-decoration: none !important;\
	color: #fff !important;\
}\
.begun_offer_hyper .begun_adv_image,.begun_offer_hyper .begun_adv_block {\
	display: inline-block !important;\
	line-height: 116px !important;\
	vertical-align: middle !important;\
	text-align: center !important;\
}\
.begun_offer_hyper .begun_adv_block {\
    height: 100% !important;\
}\
.begun_offer_hyper .begun_adv_image {\
	width: 108px !important;\
	background-color: #fff !important;\
}\
.begun_offer_hyper .begun_adv_image_inner {\
	display: inline-block !important;\
	line-height: 17px !important;\
	vertical-align: middle !important;\
	text-align: center !important;\
}\
.begun_offer_hyper .begun_adv_image img {\
	display: inline-block !important;\
	max-width: 80px !important;\
	max-height: 80px !important;\
	vertical-align: middle !important;\
}\
.begun_offer_hyper .begun_adv_sys_logo {\
	display: inline-block !important;\
	margin: 5px 0 0 !important;\
	vertical-align: middle !important;\
}\
.begun_offer_hyper .begun_adv_sys_logo img {\
	display: inline-block !important;\
	width: auto !important;\
	height: auto !important;\
	line-height: 17px !important;\
	vertical-align: middle !important;\
}\
.begun_offer_hyper .begun_adv_block {\
	width: 166px !important;\
    border-left: 1px solid rgb(67, 78, 80) !important;\
    border-right: 1px solid rgb(67, 78, 80) !important;\
	color: #fff !important;\
	background-color: #434E50 !important;\
}\
.begun_offer_hyper .begun_adv_descr {\
	display: inline-block !important;\
	padding: 5px 19px !important;\
	line-height: 17px !important;\
	vertical-align: middle !important;\
}\
.begun_offer_hyper .begun_adv_price {\
	display: inline-block !important;\
	width: 100% !important;\
    min-width: 128px !important;\
	padding: 6px 0 !important;\
	margin: 6px 0 !important;\
	line-height: 1 !important;\
	background-color: #f45e5f !important;\
	font-size: 20px !important;\
	-webkit-border-radius: 3px !important;\
	-moz-border-radius: 3px !important;\
	-ms-border-radius: 3px !important;\
	-o-border-radius: 3px !important;\
	border-radius: 3px !important;\
}\
.begun_offer_hyper .begun_adv_contact {\
	font-size: 14px !important;\
}\
.begun_offer_hyper .begun_adv_block * {\
	text-align: center !important;\
}\
.begun_offer_hyper .begun_adv_descr b {\
    background-color: inherit !important;\
}\
.begun-h-block {\
    z-index:20000 !important;\
}\
		',
		ie: '\
v\\:line, v\\:group, v\\:shape, v\\:path { behavior:url(#default#VML); display:block !important; }\
.begun-h-pointer-top, \
.begun-h-pointer-bottom {\
width:18px !important;\
height:27px !important;\
zoom:1\
}\
.begun-h-no-pointer .begun-h-pointer-top, \
.begun-h-no-pointer .begun-h-pointer-bottom {display:none !important;}\
		'
	},
	tpls: {
		shadow: '\
		<div class="begun-h-shadow">\
			<div class="begun-h-st">\
				<div class="begun-h-stl"></div>\
				<div class="begun-h-stc"></div>\
				<div class="begun-h-str"></div>\
			</div>\
			<div class="begun-h-sc">\
				<div class="begun-h-sml"></div>\
				<div class="begun-h-smc"></div>\
				<div class="begun-h-smr"></div>\
			</div>\
			<div class="begun-h-sb">\
				<div class="begun-h-sbl"></div>\
				<div class="begun-h-sbc"></div>\
				<div class="begun-h-sbr"></div>\
			</div>\
		</div>\
	',
		banner: '\
	{{shadow}}\
	<div class="begun-h-rounded-box-border begun-h-rounded-box {{css_warning}}">\
		<div class="begun-h-pointer-top">\
			{{arrow_top}}\
		</div>\
		<i class="begun-h-r5"></i><i class="begun-h-r3"></i><i class="begun-h-r2"></i><i class="begun-h-r1"></i><i class="begun-h-r1"></i>\
		<div class="begun-h-inner-box {{css_picture}}">\
			<div class="begun-h-logo"><a href="{{logo_url}}" target="_blank">\
				<img src="{{logo_src}}" border="0" alt="begun" />\
				<strong>begun</strong>\
			</a></div>\
			{{inner}}\
		</div>\
		{{warning}}\
		<b class="begun-h-r1"></b><b class="begun-h-r1"></b><b class="begun-h-r2"></b><b class="begun-h-r3"></b><b class="begun-h-r5"></b>\
		<div class="begun-h-pointer-bottom">\
			{{arrow_bottom}}\
		</div>\
	</div>\
		',
		price_banner: '\
		<div id="begun_block_1" class="begun_offer_hyper">\
			<span class="begun_adv_span">\
				<table class="begun_adv">\
					<tbody>\
						<tr>\
							<td class="begun_adv_cell">\
								<div class="begun_adv_common">\
									<table class="begun_adv_table">\
										<tbody>\
											<tr>\
												<td title="{{fullDomain}}" class="begun_adv_cell begun_adv_offer_hyper_rich">\
													<div class="begun_adv_cell_wrapper">\
													{{inner}}\
													</div>\
												</td>\
											</tr>\
										</tbody>\
									</table>\
								</div>\
							</td>\
						</tr>\
					</tbody>\
				</table>\
		</span>\
</div>\
		',
		text: '\
			{{picture}}\
			<div class="begun-h-title"><a target="_blank" href="{{url}}" title="{{fullDomain}}">{{favicon}}{{title}}</a></div>\
			<div class="begun-h-text"><a target="_blank" href="{{url}}" title="{{fullDomain}}">{{descr}}</a></div>\
			<div class="begun-h-url">{{contact}}</div>\
		',
        price_text: '\
			{{picture}}<span title="{{fullDomain}}" class="begun_adv_block">\
                <span class="begun_adv_descr">\
                    <a  href="{{url}}" title="{{fullDomain}}" target="_blank" class="begun_adv_title">{{title}}</a>\
                    <a  href="{{url}}" title="{{fullDomain}}" target="_blank" class="begun_adv_price">{{price}}</a>\
                    <a  href="{{url}}" title="{{fullDomain}}" target="_blank" class="begun_adv_contact">{{domain}}</a>\
                </span>\
                </span>\
			</span>\
		',
        price_picture : '\
            <span class="begun_adv_image"><span class="begun_adv_image_inner"><a href="{{url}}" class="snap_noshots" target="_blank"><img src="{{src}}" _big_photo_src="{{big_photo_src}}" _small_photo_src="{{src}}" class="begun_adv_picture" alt="" /></a><a target="_blank" href="{{price_url}}" class="begun_adv_sys_logo snap_noshots">\
            <img border="0" alt="price.ru" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAANCAYAAADrEz3JAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABD9JREFUeNqkln9MFEcUx2d3bw+8HwgI9PjhHYKoTY1STKWiTdHoBVGjNMbEgCmKXqIxCtU2oX80YozaBMXWxJ+1omgtTf2BlMY08UcMBmwpWkupSAS01JZiucPD+8Ue2++cd+d2dY9rOsknb3bm7cx7896bXSZ1zszzHxsSRbNOH0uetxHQDvbHVJ/qCAymL5uRI7gGdwwlFbAio5KoExe4Cg4MHNtll05Yi4t2QDzAOkeJrHnq4tMgtoLFIAW4wS1QA46ql/YLVM84Z6YlMzLSfCLFGEde3v5iRxLijY28yosHmwQRrAZ3YMiygPbOWY9eTR/rjh7L2W0y/XiwG7TGlpSnyDahRs6W77y11Lhm0MXcRvdd0AS20YMDanogoBmOJvmUJ02c1q3VjJPtKcWqYvLmZ13ECey3lO2TnSQ1rg6cQj8DJ/pHwRTBC14n5Ow7OK0eqT4coMZ+C46DBSREg+6ir9vPVHq8EScr57vKsZZdFqmFELVgLdjOvPmG7gkhMTGWsrlKa6qUJmB4PxwoRLcLrAR7QxmHlLoBAyvQ3QOZiuceBSfGQByyJxVc/3LAWlrXqBNMB0yw5LkpGX3kUucrO43oOkiYjQ01CWe6IXrp2mGudz1gSwgdXz2IXOR7Hbwg6G62EPFGs1xHRJRswBOuI6pQk4iIxp//j8Ncb0Kg+AIDPS63M4JlRYkOTcEBf6RJ7XgTuex0kIqbz17RZye8sCgz7BB5t82KlMuVTT2Bs62jOkLrG0SAi6N5gJSJgvgI3Ac/B8YX3rnHqViWl6qCP5F6hBQXkWSeJ5tP1+P9qb7JB5ayF0+78xKvJc7xJN13M8pvPgOc6VORzvu/5jx1pt8uLiqVzHMgH8zzX8E/0MHf7Qz3Vbuq9dygeVVsSWKwQJmuNh152JErGidPxmMejBwJbpT5ttfDssOk7VYw0MAAxwnx/haIPGxUbkJG3vBTtw3K1WtfEpE+n7Ni0/cpadHR2SQuYaNMie6y2X8l+lplk5pv6OSyhhL1GYilPuiI4GkZ93evNteQYDlcc+jKv1YZo6XFzUhGGsEmfxp2Sy4LRUdEXsN4eE0MjL6mWOxM4Qr9OfPcC7S2JegRBSP4FATzu8rsdrWuc5LPshvfkup/MtGU35z1mm43N7QFp8uPkoXf0OASYXhvmjtKMbVNR6q0gAm/2DmOODjOAYNt4bygU4skP7l3cGDDrqB+4bP0WO838kNQEeKadiKt1gtdP9Wo05L3ZebMKEdd2GVOLIE4A94HB//3rfVfGg6iAc58QR2BrMXz3RDO1MetXrNFkzWFfptKYHg9ZBvNBP/HdDr9soOzVN/R0j4k9NmsOIALCks+oo400F+LMO2lerQG+hXmaU0ZQJRk7LvAVSttj49/fsw0q+oyuh+ARWC5/1/rR7AOVCNSvn8t992eX5hI3QTcQKkK+6r/EWAAcwaLk7ZItc4AAAAASUVORK5CYII=" />\
            </a></span></span>',
		flash: '\
		<object width="230" height="150" type="application/x-shockwave-flash" id="{{flash_id}}" data="{{flash_url}}"><param name="movie" value="{{flash_url}}" /><param name="menu" value="false" /><param name="scale" value="noScale" /><param name="allowFullscreen" value="true" /><param name="allowScriptAccess" value="always" /><param name="wmode" value="window" /><param name="flashvars" value="callbackName={{callback_name}}" /><embed src="{{flash_url}}" quality="high" width="230" height="150" name="{{flash_id}}" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" wmode="window" border="0" AllowScriptAccess="always"></embed></object>\
		',
		videoContainer: '\
		<div class="begun-h-video-container"></div>\
		',
		arrow: '\
		<div class="begun-h-pointer"></div><div class="begun-h-pointer begun-h-pointer-over"></div>\
		',
		arrowIE: '\
			<xml:namespace ns="urn:schemas-microsoft-com:vml" prefix="v" />\
			<v:group class="begun-h-vml-group" coordorigin="0 0" coordsize="18 27">\
				<v:shape class="begun-h-vml-shape" stroked="false" filled="true" fillcolor="{{block:backgroundColor}}" coordorigin="0 0" coordsize="18 27">\
					<v:path v="m 0,0 l 0,28,18,28 x e" />\
				</v:shape>\
				<v:line class="begun-h-vml-line" stroke="true" strokecolor="{{block:borderColor}}" from="0 0" to="0 28" />\
				<v:line class="begun-h-vml-line" stroke="true" strokecolor="{{block:borderColor}}" from="0 0" to="17 27" />\
			</v:group>\
		',
		warning: '\
			<div class="begun_warn_message">{{text}}</div>\
		'
	},
	init: function() {
		var _this = this;
		this.container = Begun.$('hypercontext', this.hypercontextWindow.document);
		if (this.container) {
			Begun.Utils.includeStyle((new Begun.Template(this.css.main)).evaluate(this.design), 'append', 'begun-hyper-css', this.hypercontextWindow);
			if (Begun.Browser && Begun.Browser.IE && Begun.Browser.version() < 9) {
				Begun.Utils.includeStyle(this.css.ie, 'append', 'begun-hyper-css-ie', this.hypercontextWindow);
			}
			var i = 0;
			var banner = null;
			var banner_obj;
			while (banner = Begun.Autocontext.getBanner('graph', i, this.pad_id)) {
				if (banner.block_id && banner.block_id == this.block.id){
					if (banner.view_type.toLowerCase() == 'video') {
						banner_obj = new Begun.Hypercontext.Banner(
						'video',
						{
							mime: banner.mime, 
							source: banner.source, 
							url: banner.url,
							place: banner.place, 
							words: banner.words,
							view_type: banner.view_type,
							show_url: banner.show_url || "",
							banner_id: banner.banner_id
						}, this);
					} else {
						banner_obj = new Begun.Hypercontext.Banner(
						'graph',
						{
							mime: banner.mime, 
							source: Begun.Autocontext.Strings.urls.blank + '?', 
							url: banner.url,
							place: banner.place, 
							words: banner.words,
							view_type: banner.view_type,
							show_url: banner.show_url || ""
						}, this);
					}
					if (banner_obj && banner_obj.mime) {
						banner_obj.data = banner;
						banner_obj.id = this.banners.length;
						this.banners.push(banner_obj);
					}
				}
				i++;
			}
			i = 0;
			banner = null;
			while (banner = Begun.Autocontext.getBanner('hypercontext', i, this.pad_id)) {
				if (banner.block_id && banner.block_id == this.block.id) {
					if (banner.view_type && banner.view_type.toLowerCase() == 'offerrich') {
						banner_obj = new Begun.Hypercontext.Banner(
							'price_hyper',
							{
								title: banner.title,
								descr: banner.descr,
								url: banner.url,
								domain: banner.domain,
								words: banner.words,
								constraints: banner.constraints,
								price : banner.bottom
							}, this);
					} else {
						banner_obj = new Begun.Hypercontext.Banner(
							'hyper',
							{
								title: banner.title,
								descr: banner.descr,
								url: banner.url,
								domain: banner.domain,
								words: banner.words,
								constraints: banner.constraints
							}, this);
					}
					if (banner_obj && banner_obj.title) {
						banner_obj.data = banner;
						banner_obj.id = this.banners.length;
						this.banners.push(banner_obj);
					}
				}
				i++;
			}
            var hypercontextContainers = Begun.Utils.getElementsByClassName(this.hypercontextWindow.document, "*", 'begun-hypercontext');
            if (hypercontextContainers && hypercontextContainers.length > 1) {
                var containerOffset = 0;
                for (var j = 0; j < hypercontextContainers.length; j++) {
                    containerOffset = this.findPhrases(hypercontextContainers[j], containerOffset);
                }
            } else {
                this.findPhrases(this.container, 0);
            }
			this.phrases = this.phrases.sort(function(a, b) {
				return a.space - b.space;
			});
			this.deleteCrossing();
			this.combineRelatives();
			this.highlight();
			var bannersLength = this.banners.length;
			for (i = 0; i < bannersLength; i++) {
				this.createHTMLBanner(this.banners[i]); // creates banner.element && banner.element.node 
				this.banners[i].element.node.onmouseover = (function(i) {
					return function(e) {
						if (e) {
							var trg = e.target;
							if (Begun.Utils.hasClassName(trg, 'begun-h-rounded-box-border') && Begun.Utils.hasClassName(trg, 'begun-h-rounded-box') || Begun.Utils.hasClassName(trg, 'begun-h-pointer-top')) {
								_this.onBannerOut(i);
								return;
							}
						}
						_this.onBannerOver(i);
					};
				})(i);
				this.banners[i].element.node.onmouseout = (function(i) {
					return function(e) {
						if (e) {
							var trg = e.target;
							if (!Begun.Utils.hasClassName(trg, 'begun-h-inner-box') || e.relatedTarget) {
								_this.onBannerOut(i);
							}
						} else {
							_this.onBannerOut(i);
						}
					};
				})(i);
			}
			var phrasesLength = this.phrases.length;
			for (i = 0; i < phrasesLength; i++) {
				this.phrases[i].element.node.onmouseover = (function(i) {
					return function() {
						_this.onPhraseOver(i);
					};
				})(i);
				this.phrases[i].element.node.onmouseout = (function(i) {
					return function() {
						_this.onPhraseOut(i);
					};
				})(i);
			}
			if (typeof this.init.isFirstRun === "undefined") {
				var cleanUp = function() {
					var i;
					var bannersLength = _this.banners.length;
					for (i = 0; i < bannersLength; i++) {
						_this.banners[i].element.node.onmouseover = null;
						_this.banners[i].element.node.onmouseout = null;
					}
					var phrasesLength = _this.phrases.length;
					for (i = 0; i < phrasesLength; i++) {
						_this.phrases[i].element.node.onmouseover = null;
						_this.phrases[i].element.node.onmouseout = null;
					}
				};
				Begun.Utils.addEvent(window, 'unload', cleanUp);
				this.init.isFirstRun = true;
			}
		}
	},
	reInitPrepare: function(newBlock) {
		var begunLinks = Begun.Utils.getElementsByClassName(Begun.$('hypercontext'), 'a', 'begun_hyper_link');
		for (var i = 0; i < begunLinks.length; i++) {
			begunLinks[i].parentNode.replaceChild(begunLinks[i].firstChild, begunLinks[i]);
		}
		if (typeof newBlock !== "undefined") {
			this.block = newBlock;
			Begun.Hypercontext.initBlock = newBlock;
		} else {
			this.block = Begun.Hypercontext.initBlock;
		}
		this.design = this.initDesign();
		this.max_singleword = this.block.options && this.block.options.json && this.block.options.json.hyper_max_singleword || 1;
		this.max_total = Begun.Autocontext.getBannersByBlockId(this.block.id, 'hypercontext').length * this.max_singleword;
		this.show_timeout = this.block.options && this.block.options.json && this.block.options.json.hyper_show_timeout || 300;
		this.hide_timeout = this.block.options && this.block.options.json && this.block.options.json.hyper_hide_timeout || 300;
		this.hide_timer = [];
		this.show_timer = [];
		this.fragments = [];
		this.phrases = [];
		this.texts = [];
		this.banners = [];
		this.feeds_handled = 0;
	},
	initDesign: function() {
		var vars = {};
		this.block.options.visual.hyper_phrase = (function(block) {
			if (block.options && block.options.json && block.options.json.hyper_phrase) {
				return block.options.json.hyper_phrase;
			} else {
				return {};
			}
		})(this.block);
		var styles = this.block.options.visual;
		for (var key in styles){
			if (styles[key] && styles.hasOwnProperty && styles.hasOwnProperty(key)){
				for (var key2 in styles[key]){
					if (styles[key][key2] && styles[key].hasOwnProperty && styles[key].hasOwnProperty(key2)){
						if (styles[key][key2].toLowerCase && styles[key][key2].toLowerCase() == 'transparent') {
							styles[key][key2] = '#FFFFFF';
						}
						vars[key + ':' + key2] = typeof styles[key][key2] == 'number' ? styles[key][key2] + 'px' : styles[key][key2];
					}
				}
			}
		}
		vars['block_logo_color'] = Begun.Autocontext.getLogoColor(styles, this.block.id);
		vars['warning_bg_color'] = this.WARNING_BG;
		return vars;
	},
	onPhraseOver: function(phrase_index) {
		var _this = this;
		var phrase = this.phrases[phrase_index];
		if (this.hide_timer[phrase.banner.id]) {
			clearTimeout(this.hide_timer[phrase.banner.id]);
			this.hide_timer[phrase.banner.id] = false;
		}
		this.hideAllBanners();
		this.show_timer = setTimeout(function() {
			_this.showBanner(phrase_index);
		}, this.show_timeout);
	},
	onPhraseOut: function(phrase_index) {
		var _this = this;
		var phrase = this.phrases[phrase_index];
		this.hide_timer[phrase.banner.id] = setTimeout(function() {
			_this.hideBanner(phrase_index);
		}, this.hide_timeout);
	},
	showBanner: function(phrase_index) {
		var showInsertedBanner = function(phrase, banner) {
			var left, top;
            var winSize = Begun.Utils.countWindowSize(_this.hypercontextWindow);
			var winW = winSize.width;
			var winH = winSize.height;
			var winS = Begun.Utils.getScrollXY(_this.hypercontextWindow).y;
			var phraseX = phrase.element.left();
			var phraseY = phrase.element.top();
			var phraseW = phrase.element.width();
			var phraseH = phrase.element.height();
			var bannerW = banner.element.width();
			var bannerH = banner.element.height();
			var y_pos = null;
			var x_pos = null;
			var className = 'begun-h-pointer-';
			if (2 * phraseY > winH - phraseH + 2 * winS) {
				top = phraseY - bannerH;
				if (banner.type == 'graph') {
					top = winH - phraseY - phraseH + winS > bannerH/2 ? phraseY - bannerH/2 : winH + winS - bannerH - 10;
				}
				className += 'b';
				y_pos = 'b';
			} else {
				top = phraseY + phraseH + 3;
				if (banner.type == 'graph') {
					top = phraseY - winS > bannerH/2 ? phraseY - bannerH/2 : winS + 10;
				}
				className += 't';
				y_pos = 't';
			}
			if (2 * phraseX > winW - phraseW) {
				left = phraseX - bannerW - 3;
				className += 'r';
				x_pos = 'r';
			} else {
				left = phraseX + phraseW + 3;
				className += 'l';
				x_pos = 'l';
			}
			if (banner.type != 'graph') {
				banner.element.adjustArrowView(className, y_pos, x_pos);
			} else {
				var pic = banner.element.node.getElementsByTagName('img')[1] || banner.element.node.getElementsByTagName('embed')[0];
				if (pic && banner.data.source) {
					pic.src = pic.src.replace(/[^\?]*\?/, banner.data.source);
				}
				if (banner.show_url && !banner.alreadyShowed) {
					(new Image()).src = banner.show_url;
					banner.alreadyShowed = true;
				}
			}
			banner.element.adjustWidth(y_pos, x_pos);
			banner.element.move(top, left);
			banner.element.show();
			Begun.Utils.addClassName(banner.element.node, 'begun_hyper_active');

		};

		var _this = this;
		var phrase  = this.phrases[phrase_index];
		var banner  = phrase.banner;
		Begun.Hypercontext.VideoAds.cur_index = banner.id;
		if (!banner.element.node.parentNode || typeof banner.element.node.parentNode.tagName == 'undefined' || (banner.element.node.parentNode.tagName && banner.element.node.parentNode.tagName.toLowerCase() != 'body')) {
			if (this.hypercontextWindow.document.body) {
                this.hypercontextWindow.document.body.appendChild(banner.element.node);
				if (banner.type == 'video') {
					this.initVideoPlayer(banner);
				}
				banner.element.adjustView();
				if (Begun.Autocontext.bannersContainViewType('rich', _this.pad_id, 'hypercontext', _this.block.id) || Begun.Autocontext.bannersContainViewType('pseudorich', _this.pad_id, 'hypercontext', _this.block.id)) {
					var initRich = (function() {
						if (!window.Begun.richBlocks) {
							window.setTimeout(arguments.callee, Begun.DOM_TIMEOUT);
						} else {
							_this.initAutoRichBlock(banner);
							showInsertedBanner(phrase, banner);
						}
					})();
				} else {
					window.setTimeout(function() {
						showInsertedBanner(phrase, banner);
					}, Begun.DOM_TIMEOUT);
				}
			}
		} else {
			if (Begun.Browser.IE && banner.type == 'video') {
				this.initVideoPlayer(banner);
			}
			showInsertedBanner(phrase, banner);
		}
		Begun.Autocontext.Monitor.countBanner(banner, _this.pad_id, _this.block.id);
	},
	hideBanner: function(phrase_index) {
		var banner = this.phrases[phrase_index].banner;
		banner.element.hide();
		var movie = this.getMovie('begun_hyper_video_' + banner.banner_id);
		if (movie && movie.closePlayer && Begun.Hypercontext.VideoPlayer.loaded) {
			movie.closePlayer();
			Begun.Hypercontext.VideoPlayer.loaded = false;
		}
	},
	hideAllBanners: function() {
		var ln = this.banners.length;
		for (var i=0; i<ln; i++) {
			this.banners[i].element.hide();
			var movie = this.getMovie('begun_hyper_video_' + this.banners[i].banner_id);
			if (movie && movie.closePlayer && Begun.Hypercontext.VideoPlayer.loaded) {
				movie.closePlayer();
				Begun.Hypercontext.VideoPlayer.loaded = false;
			}
		}
	},
	onBannerOver: function(banner_num) {
		if (this.hide_timer[banner_num]) {
			clearTimeout(this.hide_timer[banner_num]);
			this.hide_timer[banner_num] = false;
		}
	},
	onBannerOut: function(banner_num) {
		var _this = this;
		if (this.hide_timer[banner_num]) {
			clearTimeout(this.hide_timer[banner_num]);
		}
		this.hide_timer[banner_num] = setTimeout(function() {
			_this.banners[banner_num].element.hide();
			var movie = _this.getMovie('begun_hyper_video_' + _this.banners[banner_num].banner_id);
			if (movie && movie.closePlayer && Begun.Hypercontext.VideoPlayer.loaded) {
				movie.closePlayer();
				Begun.Hypercontext.VideoPlayer.loaded = false;
			}
		}, this.hide_timeout);
	},
	isLegalNode: function (node) {
		var NO_INDEX_CLASS = 'begun-noindex',
			NO_INDEX_CLASS_VERTELKA = 'vertelka_inline',
			NO_INDEX_CLASS_PRICE = 'price_inline';

		return (
			node.innerHTML &&
			node.tagName &&
			!(/^(script|a|h1|h2|h3|h4|h5|h6|big|noscript|legend|textarea|select|style|caption|figcaption|audio|video|canvas|applet)$/i).test(node.tagName) &&
			!Begun.Utils.hasClassName(node, NO_INDEX_CLASS) && !Begun.Utils.hasClassName(node, NO_INDEX_CLASS_VERTELKA) && !Begun.Utils.hasClassName(node, NO_INDEX_CLASS_PRICE)
		);
	},
	findPhrases: function(p, offset) {
		if (p.hasChildNodes()) {
			var nodes = p.childNodes,
				l = nodes.length,
				node;

			for (var i = 0; i < l; i++) {
				node = nodes[i];

				if (3 === node.nodeType) {
					var fragment = new Begun.Hypercontext.Fragment(node, offset);
					this.fragments[this.fragments.length] = fragment;
					var bannersLength = this.banners.length,
                        phrase;
					for (var j = 0; j < bannersLength; j++) {
						while ((phrase = this.banners[j].findPhrases(fragment)) != false) {
							if (this.feeds_handled > this.max_total) {
								break;
							}
							this.phrases[this.phrases.length] = phrase;
						}
					}
					offset = offset + fragment.text.length;
				} else if (1 === node.nodeType && this.isLegalNode(node)) {
					offset = this.findPhrases(node, offset);
				}
			}
		}
		return offset;
	},
	highlight: function() {
		var phrasesLength = this.phrases.length;
		var phrase;
		var phrases;

		for (var i = 0; i < phrasesLength; i++) {
			phrase = this.phrases[i];
			phrases = phrase.fragment.phrases;
			phrases[phrases.length] = phrase;
		}
		var fragmentsLength = this.fragments.length;
		for (i = 0; i < fragmentsLength; i++) {
			var index = 0;
			var nodes = [];
			var fragment = this.fragments[i];
			var text = fragment.node.nodeValue;
			phrasesLength = fragment.phrases.length;
			for (var j = 0; j < phrasesLength; j++) {
				phrase = fragment.phrases[j];
				var textNode = document.createTextNode(text.substr(index, phrase.index - index));
				nodes[nodes.length] = textNode;
				nodes[nodes.length] = this.createHTMLPhrase(phrase);
				index = phrase.index + phrase.length;
			}
			if (text.length > index) {
				nodes[nodes.length] = document.createTextNode(text.substr(index));
			}
			var prevNode = fragment.node;
			try {
				var parent = fragment.node.parentNode;
				while (nodes.length > 0) {
					prevNode = parent.insertBefore(nodes.pop(), prevNode);
				}
				parent.removeChild(fragment.node);
			} catch(e) {
			}
		}
	},

	createHTMLBanner: function (banner) {
		banner.data = Begun.Autocontext.prepareBannerMode(banner.data) || {};

		var vars;

		if (null != banner.domain) {
			banner.fullDomain = banner.domain;
			banner.status = 'http://' + banner.domain + '/';
			banner.domain = Begun.Utils.unescapeTruncateDomain(banner.domain);
		} else {
			banner.fullDomain = banner.domain = banner.status = '';
		}
		banner.data.domain = banner.domain = banner.domain.replace(/\./g, '.&shy;');
		var banner_contacts = Begun.Autocontext.getBannerContacts(banner.data, this.block, banner.fullDomain, this.pad_id, 'hypercontext', banner.data.banner_id);
		var contact = banner_contacts.join(Begun.Autocontext.Tpls.getHTML('bnnr_glue'));
		var arrow_top = this.tpls.arrow;
		var arrow_bottom = this.tpls.arrow;
		if (Begun.Browser && Begun.Browser.IE && Begun.Browser.version() < 9) {
			var design = {};
			design['block:backgroundColor'] = this.design['block:backgroundColor'];
			design['block:borderColor'] = this.design['block:borderColor'];
			arrow_top = arrow_bottom = (new Begun.Template(this.tpls.arrowIE)).evaluate(design);
			if (banner.constraints) {
				design['block:backgroundColor'] = this.WARNING_BG;
				arrow_bottom = (new Begun.Template(this.tpls.arrowIE)).evaluate(design);
			}
		}
		var shadow = (Begun.Browser && Begun.Browser.IE && Begun.Browser.version() <= 6) ? '' : this.tpls.shadow;
		if (banner.type == 'hyper' || banner.type == 'price_hyper') {
			vars = {
				title: banner.title,
				descr: banner.descr.replace(/(\,|\.|\?|\!|\:)(\S\D)/g,'$1 $2'),
				url: banner.url,
				domain: banner.domain,
				arrow_top: arrow_top,
				arrow_bottom: arrow_bottom,
				shadow: shadow,
				contact: contact,
				fullDomain: banner.fullDomain
			};
			if (banner.type == 'price_hyper') {
				vars.contact = (new Begun.Template(Begun.Autocontext.Tpls.getHTML('bnnr_domain'))).evaluate(banner);
				vars.price = banner.price;
                vars.price_url = Begun.Autocontext.Strings.urls.price;
			}
			vars.favicon = '';
			vars.css_picture = '';
			vars.thumb = '';
			vars.picture = '';
			if (Begun.Autocontext.checkBannerViewType(banner.data, 'rich') || Begun.Autocontext.checkBannerViewType(banner.data, 'pseudorich') || Begun.Autocontext.checkBannerViewType(banner.data, 'offerrich')) {
				var pictures = Begun.Autocontext.getRichPictureSrc(banner.data),
                    pictureTpl;
                if (Begun.Autocontext.checkBannerViewType(banner.data, 'offerrich')) {
                    pictureTpl = this.tpls.price_picture;
                } else {
                    pictureTpl = Begun.Autocontext.Tpls.getHTML('bnnr_picture');
                }
                vars.picture = (new Begun.Template(pictureTpl)).evaluate({src: pictures.small, big_photo_src:  pictures.big, url: banner.url, price_url: vars.price_url});
                vars.css_picture = 'begun_adv_rich';
			} else if (Number(this.block.options.show_thumbnails)) {
				vars.thumb = (new Begun.Template(Begun.Autocontext.Tpls.getHTML('bnnr_thumb'))).evaluate({
					url: banner.url,
					src: Begun.Autocontext.getThumbSrc(banner.data)
				});
				vars.picture = vars.thumb;
				vars.css_picture = Begun.Autocontext.Strings.css.thumb;
			} else if (this.block.options.show_favicons) {
				vars.favicon = new Begun.Template(Begun.Autocontext.Tpls.getHTML('bnnr_favicon')).evaluate({
					src: Begun.Autocontext.getFaviconSrc(banner.data)
				});
			} else {}
			vars.css_warning = banner.constraints ? 'begun-h-warning' : '';

            if (banner.constraints) {
                var parsedWarning = Begun.Autocontext.warningModule.parseWarning(banner.constraints);
                if (parsedWarning) {
                    vars.warning = (new Begun.Template(this.tpls.warning)).evaluate({
                        type: parsedWarning.type,
                        text: parsedWarning.text
                    });
                } else {
                    vars.warning = '';
                }
            } else {
                vars.warning = '';
            }
			vars.inner = (new Begun.Template(banner.type == 'price_hyper' ? this.tpls.price_text : this.tpls.text)).evaluate(vars);
		} else if (banner.type == 'graph') {
			var dimensions = Begun.Autocontext.getGraphDimensions(banner.view_type);
			var begunJs;
			var _this = this;

			var block_id = (banner.block ? banner.block.id : null);

			vars = {
				arrow_top: '',
				arrow_bottom: '',
				css_warning: '',
				warning: '',
				shadow: shadow,
				inner: Begun.Autocontext.getGraphHTML(banner, function() {
					if (typeof begunJsBannerString === "string") {
						insertTheBanner(begunJsBannerString, _this);
					}
				}, dimensions.width, dimensions.height, block_id)
			};
		} else if (banner.type == 'video') {
			vars = {
				arrow_top: arrow_top,
				arrow_bottom: arrow_bottom,
				shadow: shadow,
				css_warning: '',
				warning: '',
				inner: this.tpls.videoContainer
			};
		}

		vars.logo_src = 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAAQCAYAAABKkhw/AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA8VJREFUeNrkl1loE1EUhs8k6R63ulSt4tKKVcGNuvvgQgU3FB8UEVEEURBBcUHxQX3wQSuoIGpdUKpYBHeoiLigolZapEpbqEUpxbZujVqjRGsS/9P+KTcxwmj6UOiBL5PcuTNz/3v+e+7ECgaD0pHCZVlWZxwTwEfQrtQnZohk5olYOrBAa/NYjPIxx/zP4QBHQR1Iam/Z8L0SaXwIwfFhzZqUpv+9pwp2aqb1/kBvnfyXvtovhX2jhV7rlpaERD7DinKvyLbkaFn7eAEfgSi9bcTPwJ+W1cH4yV7wCDwD+c3WobPAOnALlIM7YBPFa6SCXQC5kApwBazguQHgMlhqPDMbXAcz+HsKOAVegCfgABgU6vy9UsRzAzOUYk+kCvTj49svkTFdsyUjZXjzb1NwkDO+HnwC78BycBx0ATvAYdAN3ASdwH6wh/c4AXbyHvfAVHCGIjVjC8AoY0zpYA7oDzJBIVgFSsEXsAFcoltaRmejsqgoL0Q2IavxjkSZ12eRHBp9VdKTBsov43oXRWuMBC/5XYXlgCwwC9SDeSxs3cFdsBio4Rbydw7NN5aZWkbHSMSa8/PoBXM5qWtBHtvzOeHDQLGdrKrIFFeC5KTNllFdJsqE7jNlROfs5nPvf9S2CgwJtjiH1Ua7lxOh6+obbXub/TCP0hc0gMHsX0+xGjV0SqTTohZiHiuMthIKtlWFNbNul1tyR56T6b0WhJ0r8tyWKm+ZOK3oGTYjYBzjQCMoMM7r2vwAKnl9H2Pisri+/UapMQX7IpaT8Blm8RO7W+QPjHDjkG1hYr80eaTYc0/2VW4Wn98Pi4cLbuDAVnLtaNYmsf0NB+5m0XrGdZfPrUyLVREL0HM6Yyj7qxM+8znzwVmu0VAB+xrrtqXZTXY6ZFzqNHz3S2F9gdx8WyB1vhp57S3HZAQlwRE+cyr4GAtNnrGONLYD7IRykAWsyFw24KROMIudFpp+uhOwKi9jllVgLthi1AeN+1z3U41xRNrcZUd0kjNRqr9XyenqXAi+JtDYbGHNarzjT5uELJfGotOXM1/KwhMKtelk0BN4WExKaT+tzLWszFrhx4Mj4DyFO+iYcazkVeABs59Jiuko4ZakLnkaqgXpmM4eS5DRFk+MgQq93q1i4hxxyLJbGn5+kjgbe7UVo6ssbklbI97UVMBq2jy2d1+UywG7YRdsbAFfuGBz33XZVOKKcTxBruOL3FeFti6hnWMO92hs/BNREDzR02OJfbFtITgUZaTNo/caZLAxTKyz9aXkfyzZ0f4e/hZgAMX8C7KjSuh8AAAAAElFTkSuQmCC';
		vars.logo_url = Begun.Autocontext.Strings.urls.begun;
		function insertTheBanner(begunJs, _this) {
			vars.inner = begunJs;
			div_main_wrapper.innerHTML = (new Begun.Template(_this.tpls.banner)).evaluate(vars);
		}

		var div_main_wrapper = document.createElement('DIV');
		Begun.Utils.addClassName(div_main_wrapper, 'begun-h-block');
		div_main_wrapper.innerHTML = (new Begun.Template(banner.type == 'price_hyper' ? this.tpls.price_banner : this.tpls.banner)).evaluate(vars);
		if (banner.type == 'graph' && Begun.Utils.getElementsByClassName(div_main_wrapper, 'div', 'begun-h-rounded-box')) {
			Begun.Utils.getElementsByClassName(div_main_wrapper, 'div', 'begun-h-rounded-box')[0].style.width = parseInt(dimensions.width || 260) + 37 + 'px';
		}
		banner.element = new Begun.Hypercontext.HTMLNodeWrapper(div_main_wrapper);
		if (banner.type != 'graph') {
			Begun.Utils.addClassName(banner.element.node, 'begun-h-pointer-tl');
			banner.element.node._oldClassName = 'begun-h-pointer-tl';
		} else {
			Begun.Utils.addClassName(banner.element.node, 'begun-h-no-pointer');
		}
		banner.element.type = banner.type;
		banner.element.node._url = banner.url;
		banner.element.node.id = 'begun_hyper_' + banner.id;
		banner.element.node._id = Math.random();
		banner.element.node.setAttribute('_url', banner.url);
		banner.element.node.setAttribute('_banner_id', banner.id);
		if (banner.type != 'video') {
			var targetDiv = Begun.Utils.getElementsByClassName(banner.element.node, 'div', 'begun-h-inner-box')[0];
			if (!targetDiv) {
				targetDiv = Begun.Utils.getElementsByClassName(banner.element.node, 'div', 'begun_adv_common')[0];
			}
			targetDiv.onclick = function(event) {
				Begun.Autocontext.clickBanner(event, this);
			};
		} else {
			Begun.Utils.addClassName(banner.element.node, 'begun-h-video');
		}
	},
	getMovie: function(name) {
		return Begun.$(name);
	},
	initVideoPlayer: function(banner) {
		if (typeof Begun.Hypercontext.VideoAds[banner.id] != 'object') {
			Begun.Hypercontext.VideoAds[banner.id] = {};
			Begun.Hypercontext.VideoAds[banner.id].stats     = banner.show_url ? {"impressions": [banner.show_url]} : {};
			Begun.Hypercontext.VideoAds[banner.id].source    = banner.source;
			Begun.Hypercontext.VideoAds[banner.id].url       = banner.url;
			Begun.Hypercontext.VideoAds[banner.id].banner_id = banner.id;
			Begun.Hypercontext.VideoAds[banner.id].pad_id    = Begun.Autocontext.Pads.getPad().pad_id;
		}
		Begun.Utils.getElementsByClassName(banner.element.node, 'div', 'begun-h-video-container')[0].innerHTML = (new Begun.Template(this.tpls.flash)).evaluate({
			flash_url: Begun.Autocontext.Strings.urls.video,
			flash_id: 'begun_hyper_video_' + banner.id,
			callback_name: 'Begun.Hypercontext.videoPlayerEvent'
		});
	},
	createHTMLPhrase: function(phrase) {
		var a = document.createElement('A');
		a.target = '_blank';
		Begun.Utils.addClassName(a, 'begun_hyper_link');
		a.appendChild(document.createTextNode(phrase.getText()));
		a.href = phrase.banner.url;
		a._url = phrase.banner.url;
		a.setAttribute('_url', phrase.banner.url);
		a.setAttribute('_banner_id', phrase.banner.id);
		a.onclick = function(event) {
			Begun.Autocontext.clickBanner(event, this);
		};
		phrase.element = new Begun.Hypercontext.HTMLNodeWrapper(a);
		return phrase.element.node;
	},
	callRich: function(options, rich_blocks_div, banner) {
		var rich_blocks = (new Begun.richBlocks(rich_blocks_div, options));
		rich_blocks.init();
		banner.is_rich_blocks_processing = true;
	},
	initAutoRichBlock: function(banner) {
		var _this = this;
		if (!Begun.richBlocks) {
			return false;
		}
		var rich_blocks_div = Begun.$('begun_hyper_' + banner.id);
		if (!banner.is_rich_blocks_processing && rich_blocks_div){
			var options = {
				is_equal: true,
				left_max_default: 10,
				top_max_default: -20
			};
			var min = 70;
			var max = 120;
			Begun.Autocontext._big_rich_sizes = {};
			var small_images = [];
			var i;
			var l;
			var cells = Begun.Utils.getElementsByClassName(rich_blocks_div, '*', 'begun_adv_rich');
			var ln = 0;
			for (i = 0, l = cells.length; i < l; i++) {
				small_images[i] = Begun.Utils.getElementsByClassName(cells[i], 'img', 'begun_adv_picture') && Begun.Utils.getElementsByClassName(cells[i], 'img', 'begun_adv_picture')[0];
				if (small_images[i]) {
					ln += 2;
				}
			}
			for (i = 0, l = small_images.length; i < l; i++) {
				if (small_images[i]) {
					var setSizes = function(num, image, max, key) {
						var img = Begun.Autocontext.getRichSizes(image, max);
						Begun.Autocontext._big_rich_sizes['img_width_' + key + '_' + num] = img._width;
						Begun.Autocontext._big_rich_sizes['img_height_' + key + '_' + num] = img._height;
						if (--ln == 0) {
							options.sizes = Begun.Autocontext._big_rich_sizes;
							_this.callRich(options, rich_blocks_div, banner);
							image.onload = null;
						}
					};
					var detectImgDimensions = function(img, i, value, key) {
						if (typeof img.width != 'undefined' && typeof img.height != 'undefined' && img.width > 5 && img.height > 5) {
							setSizes(i, img, value, key);
						} else {
							window.setTimeout((function(img, i, value, key) {
								return function() {
									detectImgDimensions(img, i, value, key);
								};
							})(img, i, value, key), Begun.DOM_TIMEOUT);
						}
					};
					detectImgDimensions(small_images[i], i, min, 'min');
					var big = new Image();
					big.src = small_images[i].getAttribute('_big_photo_src');
					detectImgDimensions(big, i, max, 'max');
				}
			}
		}
	},
	deletePhrase: function(i) {
		i = parseInt(i);
		this.phrases[ i ].banner.phrasesCount--;
		this.phrases.splice(i, 1);
		this.calculatePhrasesDensity(i);
		this.calculatePhrasesDensity(i - 1);
	},
	calculatePhrasesDensity: function(i) {
		i = parseInt(i);
		if (0 <= i && i < this.phrases.length) {
			var count = 0;
			this.phrases[ i ].density = 0;
			if (i > 0) {
				this.phrases[ i ].density += this.phrases[ i ].space - this.phrases[ i - 1 ].space;
				count++;
			}
			if (i < this.phrases.length - 1) {
				this.phrases[ i ].density += this.phrases[ i + 1 ].space - this.phrases[ i ].space;
				count++;
			}
			if (count > 1) {
				this.phrases[ i ].density /= count;
			}
		}
	},
	deleteCrossing: function() {
		var i = 1, curr, prev;
		var MIN_WORDS_BETWEEN = 5;
		var _this = this;
		var clearNearPhrases = function(leftPhraseIndex, rightPhraseIndex) {
			var phraseLeft = _this.phrases[leftPhraseIndex];
			var phraseRight = _this.phrases[rightPhraseIndex];
			if (typeof phraseRight === "undefined" || phraseLeft.fragment !== phraseRight.fragment) {
				return;
			}
			var interval = phraseLeft.fragment.text.substring(phraseLeft.space + phraseLeft.length - phraseRight.fragment.offset, phraseRight.space - phraseRight.fragment.offset);
			if (interval.replace(/^\s+/, '').replace(/\s+$/, '').split(/\s+/).length < MIN_WORDS_BETWEEN) {
				_this.deletePhrase(rightPhraseIndex);
				clearNearPhrases(leftPhraseIndex, rightPhraseIndex);
			}
		};
		while (i < this.phrases.length) {
			curr = this.phrases[ i ];
			prev = this.phrases[ i - 1 ];
			if (prev.space + prev.length > curr.space) {
				if (curr.banner.phrasesCount > prev.banner.phrasesCount) {
					this.deletePhrase(i);
				} else {
					this.deletePhrase(i - 1);
				}
			} else {
				clearNearPhrases(i-1, i);
				i++;
			}
		}
	},
	combineRelatives: function() {
		var i = 1, curr, prev;
		var regexp = new RegExp('^(\\s|-|\\+|/|&#150;|&nbsp;|&|[0-9a-z' + Begun.Utils.unescapeHTML('&#1040;') + '-' + Begun.Utils.unescapeHTML('&#1103;') + ']){1,14}$', 'i');
		while (i < this.phrases.length) {
			curr = this.phrases[ i ];
			prev = this.phrases[ i - 1 ];
			if (curr.banner == prev.banner && curr.fragment == prev.fragment) {
				var lining = curr.fragment.text.substr(prev.index + prev.length, curr.index - prev.index - prev.length);
				if (regexp.test(lining)) {
					prev.length = prev.length + lining.length + curr.length;
					this.deletePhrase(i);
					continue;
				}
			}
			i++;
		}
	},
	deleteMoreThanOne: function() {
		var phrasesLength = this.phrases.length;
		var phrase;
		var i, j;
		for (i = 0; i < phrasesLength; i++) {
			phrase = this.phrases[ i ];
			phrase.banner.phrases[ phrase.banner.phrases.length ] = phrase;
		}
		var bannersLength = this.banners.length;
		for (i = 0; i < bannersLength; i++) {
			if (this.banners[ i ].phrases.length > 0) {
				var maxDensity  = 0;
				var maxLength   = 0;
				var maxRating   = 0;
				var maxSpace= 0;
				var minSpace= Number.POSITIVE_INFINITY;
				var bestPhrase  = this.banners[ i ].phrases[ 0 ];
				phrasesLength = this.banners[ i ].phrases.length;
				for (j = 0; j < phrasesLength; j++) {
					phrase = this.banners[ i ].phrases[ j ];
					if (phrase.space < minSpace) minSpace = phrase.space;
					if (phrase.space > maxSpace) maxSpace = phrase.space;
					if (phrase.length > maxLength) maxLength = phrase.length;
					if (phrase.density > maxDensity) maxDensity = phrase.density;
				}
				phrasesLength = this.banners[ i ].phrases.length;
				for (j = 0; j < phrasesLength; j++) {
					var phrase = this.banners[ i ].phrases[ j ];
					var kD = phrase.density / maxDensity;
					var kL = phrase.length / maxLength;
					var kS = (maxSpace + minSpace - phrase.space) / maxSpace;
					var kR = kL * 100 + kD * 10 + kS;
					if (kR > maxRating) {
						maxRating = kR;
						bestPhrase = phrase;
					}
				}
				bestPhrase.rating = 1;
			}
		}
		this.phrases = this.phrases.sort(function(a, b) {
			return b.rating - a.rating;
		});
		while (this.phrases.length > this.banners.length) {
			this.deletePhrase(this.phrases.length - 1);
		}
		this.phrases = this.phrases.sort(function(a, b) {
			return a.space - b.space;
		});
	},
	cleanForBestView: function() {
		if (this.max_total === undefined){
			return;
		}
		while (this.phrases.length > this.max_total) {
			var index = null;
			var minDensity = Number.POSITIVE_INFINITY;
			var phrasesLength = this.phrases.length;
			for (var i = 0; i < phrasesLength; i++) {
				if ( this.phrases[ i ].banner.phrasesCount > 1) {
					if (minDensity > this.phrases[ i ].density) {
						index = i;
						minDensity = this.phrases[ i ].density;
					}
				}
			}
			if (index == null) {
				break;
			}
			this.deletePhrase(index);
		}
	}
};
Begun.Hypercontext.Banner = function(type, props, obj) {
	if (!type || !props || !obj.block) {
		return false;
	}
	this.occurencies 		= 0;
	this.phrases_count 		= 0;
	Begun.extend(this, props);
	this.words 				= Begun.Utils.trim(Begun.Utils.unescapeHTML(this.words));
	this.type 				= type;
	this.block 				= obj.block;
	this.obj 				= obj;

	var regexpWordBorder	= '(^|$|[^0-9A-z' + Begun.Utils.unescapeHTML('&#1040;') + '-' + Begun.Utils.unescapeHTML('&#1103;') + ']+)';

	var regexpPattern		= regexpWordBorder + '(' +  this.words.replace(Begun.Utils.unescapeHTML('&#1077;'), "(" + Begun.Utils.unescapeHTML('&#1077;') + "|" + Begun.Utils.unescapeHTML('&#1105;') + ")").replace(Begun.Utils.unescapeHTML('&#1045;'), "(" + Begun.Utils.unescapeHTML('&#1045;') + "|" + Begun.Utils.unescapeHTML('&#1025;') + ")") + ')' + regexpWordBorder;

	this.regexp				= new RegExp(regexpPattern, 'ig');
};
Begun.Hypercontext.Banner.prototype = {
	findPhrases: function(fragment) {
		if (this.occurencies >= this.obj.max_singleword) {
			return false;
		}
		var result = this.regexp.exec(fragment.text);
		if (result != null) {
			var x0 = result.index + result[1].length;
			var length = result[2].length;

			var ln = this.obj.texts.length;
			for (var i=0; i<ln; i++) {
				if (x0 == this.obj.texts[i][0] && this.obj.texts[i][2] == fragment) {
					return false;
				}
			}
			this.obj.texts.push([x0, length, fragment]);
			this.occurencies++;
			this.obj.feeds_handled++;
			return new Begun.Hypercontext.Phrase(
				this,
				fragment,
				x0,
				length
			);
		}
		return false;
	}
};
Begun.Hypercontext.Phrase = function(banner, fragment, index, length) {
	if (!banner || !fragment || typeof index == 'undefined' || !length) {
		return false;
	}
	this.banner 	= banner;
	this.fragment 	= fragment;
	this.index 		= index;
	this.length 	= length;
	this.density 	= null;
	this.element 	= null;
	this.rating 	= 0;
	this.space 		= fragment.offset + index;
	this.banner.phrases_count++;
};
Begun.Hypercontext.Phrase.prototype.getText = function() {
	return this.fragment.text.substr(
		this.index,
		this.length
	);
};
Begun.Hypercontext.Fragment = function(node, offset) {
	this.node		= node;
	this.text		= node.nodeValue;
	this.offset		= offset;
	this.phrases	= [];
};
Begun.Hypercontext.HTMLNodeWrapper = function(node) {
	this.node = node;
};
Begun.Hypercontext.HTMLNodeWrapper.prototype = {
	top: function() {
		return Begun.Utils.findPos(this.node).top;
	},
	left: function() {
		return Begun.Utils.findPos(this.node).left;
	},
	width: function() {
		return this.old_width || this.node.offsetWidth;
	},
	height: function() {
		return this.old_height || this.node.offsetHeight;
	},
	show: function() {
		Begun.Utils.addClassName(this.node, 'begun_hyper_active');
	},
	hide: function() {
		Begun.Utils.removeClassName(this.node, 'begun_hyper_active');
	},
	move: function(top, left) {
		this.node.style.top = parseInt(top) + 'px';
		this.node.style.left= parseInt(left) + 'px';
	},
	windowWidth: function() {
		return Begun.Utils.countWindowSize().width;
	},
	windowHeight: function() {
		return Begun.Utils.countWindowSize().height;
	},
	windowScrollTop: function(){
		return Begun.Utils.getScrollXY().y;
	},
	windowScrollLeft: function(){
		return Begun.Utils.getScrollXY().x;
	},
	adjustView: function() {
		var element = Begun.Utils.getElementsByClassName(this.node, 'div',this.type == 'price_hyper' ? 'begun_offer_hyper' : 'begun-h-rounded-box')[0];
		this.move(-2000, -2000);
		this.show();
		this.old_width = element.offsetWidth;
		this.old_height = element.offsetHeight;
		this.hide();
		this.move(0, 0);
		this.t_edge = Begun.Utils.getElementsByClassName(this.node, 'div', 'begun-h-stc')[0];
		this.c_edge = Begun.Utils.getElementsByClassName(this.node, 'div', 'begun-h-smc')[0];
		this.c_block = Begun.Utils.getElementsByClassName(this.node, 'div', 'begun-h-sc')[0];
		this.b_edge = Begun.Utils.getElementsByClassName(this.node, 'div', 'begun-h-sbc')[0];
		this.t_arrow = Begun.Utils.getElementsByClassName(this.node, '*', 'begun-h-vml-group') && Begun.Utils.getElementsByClassName(this.node, '*', 'begun-h-vml-group')[0];
		this.b_arrow = Begun.Utils.getElementsByClassName(this.node, '*', 'begun-h-vml-group') && Begun.Utils.getElementsByClassName(this.node, '*', 'begun-h-vml-group')[1];
		if (this.c_edge) {
			this.c_edge.style.width = this.old_width - 18 + 'px';
		}
		if (this.c_block) {
			this.c_block.style.height = this.old_height - (this.type == 'graph' ? 18 : 45) + 'px';
		}
	},
	adjustArrowView: function(className, y_pos, x_pos) {
		Begun.Utils.removeClassName(this.node, this.node._oldClassName);
		Begun.Utils.addClassName(this.node, className);
		this.node._oldClassName = className;
		var old_y_pos = (y_pos == 't') ? 'b' : 't';
		if (this[y_pos + '_arrow'] && this[old_y_pos + '_arrow']) {
			this[old_y_pos + '_arrow'].style.display = 'none';
			this[y_pos + '_arrow'].style.display = 'block';
			if (y_pos == 't' && x_pos == 'r') {
				this[y_pos + '_arrow'].style.flip = 'x';
			} else if (y_pos == 'b' && x_pos == 'l') {
				this[y_pos + '_arrow'].style.flip = 'y';
			} else if (y_pos == 'b' && x_pos == 'r') {
				this[y_pos + '_arrow'].style.flip = 'x y';
			} else {
				this[y_pos + '_arrow'].style.flip = '';
			}
		}
	},
	adjustWidth: function(y_pos, x_pos) {
		var old_y_pos = (y_pos == 't') ? 'b' : 't';
		if (!this[y_pos + '_edge'] || !this[old_y_pos + '_edge']) {
			return;
		}
		if (x_pos == 'r') {
			this[y_pos + '_edge'].style.width = this.old_width - 18 + 'px';
			this[old_y_pos + '_edge'].style.width = this.old_width - 18 + 'px';
		} else {
			this[y_pos + '_edge'].style.width = this.old_width - (this.type == 'graph' ? 18 : 27) + 'px';
			this[old_y_pos + '_edge'].style.width = this.old_width - 18 + 'px';
		}
	}
};

Begun.Hypercontext.VideoPlayer = {};
Begun.Hypercontext.VideoAds = [];
Begun.Hypercontext.VideoAds.cur_index = 0;

Begun.Hypercontext.videoPlayerEvent = function(event, stats) {
	var movie = Begun.Hypercontext.VideoAds[Begun.Hypercontext.VideoAds.cur_index];
	if (!movie.source) {
		return;
	}
	if (event === "loaded") {
		Begun.Hypercontext.VideoPlayer[event] = true;
		var obj = Begun.$('begun_hyper_video_' + movie.banner_id);
		obj.initPlayer(movie.source, movie.url, movie.stats, movie.banner_id, movie.pad_id);
	}
	if (event === "impressions" && !movie.alreadyShowed && stats.length) {
		for (var i = 0; i < stats.length; i++) {
			(new Image()).src = stats[i];
		}
		movie.alreadyShowed = true;
	}
};
