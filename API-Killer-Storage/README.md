<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-Storage</h1>

This web-extension kills the HTML5' Storage-API, <br/>
https://developer.mozilla.org/en-US/docs/Web/API/Window/sessionStorage
https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage
https://developer.mozilla.org/en-US/docs/Web/API/Storage
https://developer.mozilla.org/en-US/docs/Web/API/StorageEvent
https://developer.mozilla.org/en-US/docs/Web/API/Web_Storage_API

How does it works?
The web-extension first decimates the methods from the <code>Storage</code>-object prototype (<code>getItem</code>, <code>setItem</code>, <code>removeItem</code>,...), 
this is done in-order to purge all of the custom objects that were (or will) derived from it, <br/>
particularly <code>localStorage</code>-like objects which were initiated without a <strong>set</strong>-method in their <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty#Parameters">descriptor</a> (a.k.a "readonly"), 
when that's gone, there are various storage-related objects (<code>sessionStorage</code>, <code>localStorage</code>,...)
and browser-specific ones (<code>webkitStorageInfo</code>, <code>webkitPersistentStorage</code>,..).

<hr/>

Beware, <br/>
This <strong>will really mess $h!t-up</strong>, <br/>
the <code>Storage</code>-API was "here" long-enough so some web-apps/websites might not bother to fallback to using <code>document.cookie</code> (or even indexedDB), <br/>
plus - I havn't really researched what would happen to the core-pages (for example accounts.firefox.com) which tend to send-messages to the core of the browser, for example for sync. of the profile. <br/>
it will surely break something...
I'm ~~~pretty~~~ sure that the browser-shell (used to be called "CִHְROַME") and extensions are isolated, 

This web-extension will work better on Google-Chrome that Firefox.
Why?
Chrome will allow extension-JavaScript to run on a page that has its JavaScript disabled <br/>
(by either browser-setting or a very strict strict <code>Content-Cecurity-Policy</code> header), <br/>
Firefox will not allow JavaScript-from extensions to run if for some reason the JavaScript is disabled for the page.
This means that this web-extension won't work on websites such as https://addons.mozilla.org/ .
<strong>Just so you'll be aware.</strong>


<img width="0" height="0" alt="" src="resources/screenshot1.png"/>


<pre>
Developer's HUB / Changelog

1.0.3.5
* modifying SRC variable for better compatibility.

1.0.3.4
+ initial.
</pre>
