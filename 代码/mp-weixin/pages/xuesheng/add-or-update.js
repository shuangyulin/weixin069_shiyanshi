(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/xuesheng/add-or-update"],{"0625":function(e,t,n){},"535e":function(e,t,n){"use strict";var i=n("0625"),r=n.n(i);r.a},7381:function(e,t,n){"use strict";var i,r=function(){var e=this,t=e.$createElement;e._self._c},a=[];n.d(t,"b",(function(){return r})),n.d(t,"c",(function(){return a})),n.d(t,"a",(function(){return i}))},"7e3d":function(e,t,n){"use strict";n.r(t);var i=n("7381"),r=n("c50e");for(var a in r)"default"!==a&&function(e){n.d(t,e,(function(){return r[e]}))}(a);n("535e");var u,o=n("f0c5"),s=Object(o["a"])(r["default"],i["b"],i["c"],!1,null,"97f4f398",null,!1,i["a"],u);t["default"]=s.exports},a969:function(e,t,n){"use strict";(function(e){n("47ed"),n("921b");i(n("66fd"));var t=i(n("7e3d"));function i(e){return e&&e.__esModule?e:{default:e}}e(t.default)}).call(this,n("543d")["createPage"])},b2e4:function(e,t,n){"use strict";(function(e){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var i=r(n("a34a"));function r(e){return e&&e.__esModule?e:{default:e}}function a(e,t,n,i,r,a,u){try{var o=e[a](u),s=o.value}catch(c){return void n(c)}o.done?t(s):Promise.resolve(s).then(i,r)}function u(e){return function(){var t=this,n=arguments;return new Promise((function(i,r){var u=e.apply(t,n);function o(e){a(u,i,r,o,s,"next",e)}function s(e){a(u,i,r,o,s,"throw",e)}o(void 0)}))}}var o=function(){Promise.all([n.e("common/vendor"),n.e("components/w-picker/w-picker")]).then(function(){return resolve(n("cacf"))}.bind(null,n)).catch(n.oe)},s={data:function(){return{ruleForm:{xuehao:"",mima:"",xingming:"",nianling:"",xingbie:"",shouji:"",zhaopian:""},xingbieOptions:[],xingbieIndex:0,user:{},ro:{xuehao:!1,mima:!1,xingming:!1,nianling:!1,xingbie:!1,shouji:!1,zhaopian:!1}}},components:{wPicker:o},computed:{},onLoad:function(){var t=u(i.default.mark((function t(n){var r,a,u,o;return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return r=e.getStorageSync("nowTable"),t.next=3,this.$api.session(r);case 3:if(a=t.sent,this.user=a.data,this.xingbieOptions="男,女".split(","),this.ruleForm.userid=e.getStorageSync("userid"),n.refid&&(this.ruleForm.refid=n.refid,this.ruleForm.nickname=e.getStorageSync("nickname")),!n.id){t.next=14;break}return this.ruleForm.id=n.id,t.next=12,this.$api.info("xuesheng",this.ruleForm.id);case 12:a=t.sent,this.ruleForm=a.data;case 14:if(!n.cross){t.next=49;break}u=e.getStorageSync("crossObj"),t.t0=i.default.keys(u);case 17:if((t.t1=t.t0()).done){t.next=49;break}if(o=t.t1.value,"xuehao"!=o){t.next=23;break}return this.ruleForm.xuehao=u[o],this.ro.xuehao=!0,t.abrupt("continue",17);case 23:if("mima"!=o){t.next=27;break}return this.ruleForm.mima=u[o],this.ro.mima=!0,t.abrupt("continue",17);case 27:if("xingming"!=o){t.next=31;break}return this.ruleForm.xingming=u[o],this.ro.xingming=!0,t.abrupt("continue",17);case 31:if("nianling"!=o){t.next=35;break}return this.ruleForm.nianling=u[o],this.ro.nianling=!0,t.abrupt("continue",17);case 35:if("xingbie"!=o){t.next=39;break}return this.ruleForm.xingbie=u[o],this.ro.xingbie=!0,t.abrupt("continue",17);case 39:if("shouji"!=o){t.next=43;break}return this.ruleForm.shouji=u[o],this.ro.shouji=!0,t.abrupt("continue",17);case 43:if("zhaopian"!=o){t.next=47;break}return this.ruleForm.zhaopian=u[o],this.ro.zhaopian=!0,t.abrupt("continue",17);case 47:t.next=17;break;case 49:this.styleChange();case 50:case"end":return t.stop()}}),t,this)})));function n(e){return t.apply(this,arguments)}return n}(),methods:{styleChange:function(){this.$nextTick((function(){}))},xingbieChange:function(e){this.xingbieIndex=e.target.value,this.ruleForm.xingbie=this.xingbieOptions[this.xingbieIndex]},zhaopianTap:function(){var e=this;this.$api.upload((function(t){e.ruleForm.zhaopian=e.$base.url+"upload/"+t.file,e.$forceUpdate(),e.$nextTick((function(){e.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var e=u(i.default.mark((function e(){return i.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(this.ruleForm.xuehao){e.next=3;break}return this.$utils.msg("学号不能为空"),e.abrupt("return");case 3:if(this.ruleForm.mima){e.next=6;break}return this.$utils.msg("密码不能为空"),e.abrupt("return");case 6:if(this.ruleForm.xingming){e.next=9;break}return this.$utils.msg("姓名不能为空"),e.abrupt("return");case 9:if(this.ruleForm.nianling){e.next=12;break}return this.$utils.msg("年龄不能为空"),e.abrupt("return");case 12:if(!this.ruleForm.shouji||this.$validate.isMobile(this.ruleForm.shouji)){e.next=15;break}return this.$utils.msg("手机应输入手机格式"),e.abrupt("return");case 15:if(!this.ruleForm.id){e.next=20;break}return e.next=18,this.$api.update("xuesheng",this.ruleForm);case 18:e.next=22;break;case 20:return e.next=22,this.$api.add("xuesheng",this.ruleForm);case 22:this.$utils.msgBack("提交成功");case 23:case"end":return e.stop()}}),e,this)})));function t(){return e.apply(this,arguments)}return t}(),optionsChange:function(e){this.index=e.target.value},bindDateChange:function(e){this.date=e.target.value},getDate:function(e){var t=new Date,n=t.getFullYear(),i=t.getMonth()+1,r=t.getDate();return"start"===e?n-=60:"end"===e&&(n+=2),i=i>9?i:"0"+i,r=r>9?r:"0"+r,"".concat(n,"-").concat(i,"-").concat(r)},toggleTab:function(e){this.$refs[e].show()}}};t.default=s}).call(this,n("543d")["default"])},c50e:function(e,t,n){"use strict";n.r(t);var i=n("b2e4"),r=n.n(i);for(var a in i)"default"!==a&&function(e){n.d(t,e,(function(){return i[e]}))}(a);t["default"]=r.a}},[["a969","common/runtime","common/vendor"]]]);