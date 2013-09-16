!function(){module("html5shiv tests");var e="article,aside,figcaption,figure,footer,header,hgroup,nav,section".split(","),t=[{doc:document,initialShivMethods:html5.shivMethods,html5:html5,name:"default"}],n=function(e,n){n||(n=t[0]),n.html5.shivMethods=!0,e(),n.html5.shivMethods=n.initialShivMethods},i=function(e,n,i){i||(i=["default"]),asyncTest(e,function(){$.each(t,function(e,t){-1!=$.inArray(t.name,i)&&n(t)}),t.length>1?start():a()})};QUnit.reset=function(){$.each(t,function(e,t){$("#qunit-fixture",t.doc).html(t.fixture)})};var a=function(){t.length>1||(t[0].fixture=$("#qunit-fixture").html(),$("iframe.test-frame").each(function(){var e=this.contentWindow;$("#qunit-fixture",e.document).length&&t.push({doc:e.document,html5:e.html5,initialShivMethods:(e.html5||{}).shivMethods,fixture:$("#qunit-fixture",e.document).html(),name:this.src.split("?")[1]})}),t.length>1?start():setTimeout(a,30))};$(a),i("display block tests",function(t){$.each(e,function(e,n){equals($(n,t.doc).css("display"),"block",n+" has display: block")})},["default","disableMethodsBefore"]),i("test html5.createElement/html5.createDocumentFragment",function(e){var t=html5;e.html5&&(t=e.html5,e.html5.shivMethods=!1),html5.shivMethods=!1;var n=t.createElement("div",e.doc),i=t.createDocumentFragment(e.doc),a="with these words highlighted",s=$(t.createElement("div",e.doc)).html("<section><article><mark>s</mark></article>?</section>").appendTo(e.doc.getElementById("qunit-fixture"));n.innerHTML="<section>This native javascript sentence is in a green box <mark>"+a+"</mark>?</section>",i.appendChild(n),n.innerHTML+="<article>This native javascript sentence is also in a green box <mark>"+a+"</mark>?</article>",e.doc.getElementById("qunit-fixture").appendChild(i),equals($("section article > mark",s).length,1,"found mark in section > article"),equals($("section > mark",n).html(),a,"innerHTML getter equals innerHTML setter"),equals($("article",n).css("borderTopWidth"),"2px","article has a 2px border"),e.html5&&(e.html5.shivMethods=e.initialShivMethods),html5.shivMethods=!0},["disableMethodsBefore","disableMethodsAfter"]),html5.supportsUnknownElements||(i("config shivMethods test",function(e){var t=$("<div/>",e.doc).html("<section><article><mark></mark></article>?</section>").appendTo(e.doc.getElementById("qunit-fixture"));equals($("section article > mark",t).length,e.html5.shivMethods?1:0,"found/no found mark in section > article")},["default","disableMethodsBefore","disableMethodsAfter"]),i("config shivCSS test",function(t){$.each(e,function(e,n){equals($(n,t.doc).css("display"),"inline",n+" has display: inline if unshived")}),t.html5.shivCSS=!0,t.html5.shivDocument(),$.each(e,function(e,n){equals($(n,t.doc).css("display"),"block",n+" has display: block. after reshiving")})},["disableCSS"])),i("config add elements test",function(e){var t=$.trim($("abcxyz",e.doc).html());ok(html5.supportsUnknownElements||-1!==e.html5.elements.indexOf("abcxyz")?t:!t,"unknownelement has one/none div inside: "+t)},["default","disableMethodsBefore","addUnknownBefore","addUnknownAfter"]),i("parsing tests",function(t){$.each(e,function(e,n){equals($(n+" div.inside",t.doc).length,1,n+" has a div inside")})},["default","disableMethodsBefore"]),i("style test",function(e){var t=$("article",e.doc);equals(t.css("borderTopWidth"),"2px","article has a 2px border")},["default","disableMethodsBefore"]),html5.supportsUnknownElements||i("shiv different document",function(e){var t="with these words highlighted3",n="<section><article>This jQuery 1.6.4 sentence is in a green box <mark>"+t+"</mark></article>?</section>",i=$("<div/>",e.doc).html(n).appendTo(e.doc.getElementById("qunit-fixture"));equals($("section article > mark",i).length,0,"document is not shived"),html5.shivDocument(e.doc),i=$("<div/>",e.doc).html(n).appendTo(e.doc.getElementById("qunit-fixture")),equals($("section article > mark",i).length,1,"document is shived"),equals($("article",i).css("borderTopWidth"),"2px","article has a 2px border")},["noEmbed"]),i("createElement/innerHTML test",function(e){n(function(){var t=e.doc.createElement("div"),n="This native javascript sentence is in a green box <mark>with these words highlighted</mark>?";t.innerHTML='<section id="section">'+n+"</section>",e.doc.getElementById("qunit-fixture").appendChild(t),equals($("#section",e.doc).html(),n,"innerHTML getter equals innerHTML setter"),equals($("#section mark",e.doc).length,1,"section has a mark element inside")},e)},["default","disableMethodsBefore"]),i("createElement/createDocumentFragment/innerHTML test",function(e){n(function(){var t=e.doc.createElement("div"),n=e.doc.createDocumentFragment(),i="with these words highlighted";t.innerHTML="<section>This native javascript sentence is in a green box <mark>"+i+"</mark>?</section>",n.appendChild(t),t.innerHTML+="<article>This native javascript sentence is also in a green box <mark>"+i+"</mark>?</article>",e.doc.getElementById("qunit-fixture").appendChild(n),equals($("section > mark",t).html(),i,"innerHTML getter equals innerHTML setter"),equals($("article",t).css("borderTopWidth"),"2px","article has a 2px border")},e)},["default","disableMethodsBefore"]),i("createDocumentFragment/cloneNode/innerHTML test",function(e){n(function(){var t,n=e.doc.createDocumentFragment(),i=e.doc.createElement("div"),a="with these words highlighted2";n.appendChild(i),i.innerHTML="<div><article>This native javascript sentence is also in a green box <mark>"+a+"</mark>?</article></div>",t=i.cloneNode(!0),e.doc.getElementById("qunit-fixture").appendChild(t),equals($("mark",e.doc).html(),a,"innerHTML getter equals innerHTML setter")},e)},["default","addUnknownAfter"]),test("form test",function(){n(function(){var e=document.createElement("form"),t=document.createElement("select"),n=document.createElement("input"),i=document.createElement("button"),a=document.createElement("option"),s="with these words highlighted2";if(e.setAttribute("action","some/path"),e.setAttribute("name","formName"),e.target="_blank",t.name="selectName",a.value="1.value",i.setAttribute("type","submit"),n.type="submit",e.innerHTML="<article>This native javascript sentence is also in a green box <mark>"+s+"</mark>?</article>",e.appendChild(t),e.appendChild(i),e.appendChild(n),t.add)try{t.add(a)}catch(r){t.appendChild(a)}else t.appendChild(a);document.getElementById("qunit-fixture").appendChild(e),equals($("select option",e).val(),"1.value","select has one option with value"),equals($("article > mark",e).html(),s,"innerHTML getter equals innerHTML setter"),equals($("article",e).css("borderTopWidth"),"2px","article has a 2px border")})}),i("jQuery test",function(e){n(function(){var t="with these words highlighted3",n=$("<div/>",e.doc).html("<section><article>This jQuery 1.6.4 sentence is in a green box <mark>"+t+"</mark></article>?</section>").appendTo(e.doc.getElementById("qunit-fixture"));equals($("article > mark",n).html(),t,"innerHTML getter equals innerHTML setter"),equals($("article",n).css("borderTopWidth"),"2px","article has a 2px border")},e)})}();