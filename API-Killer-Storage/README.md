<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-Storage</h1>

Kills HTML5' Storage API, <br/>
it directly purge the <code>sessionStorage</code> object (https://developer.mozilla.org/en-US/docs/Web/API/Window/sessionStorage), <br/>
it will try to purge the (originally readonly) <code>localStorage</code> object (https://developer.mozilla.org/en-US/docs/Web/API/Window/localStorage), <br/>
it will decimate the <code>Storage</code> object-prototype, <br/>
killing the <code>getItem</code>, <code>setItem</code>, <code>removeItem</code>, <code>key</code> and few other-core methods. <br/>
effecting every object that was/will be created (...<code>new</code>) from the <code>Storage</code> constructor/factory.

Beware, <br/>
This <strong>may really mess $h!t-up</strong>, <br/>
I have not researched the lengths of what disabling <code>Storage</code> in that scale can do, <br/>
while obviously websites that do not fallback to using cookie (or even indexedDB), <br/>
will surely break, <br/>
some of the browser components might also suffer. I'm ~~pretty sure the browser-shell and other-extensions are isolated.


<img width="0" height="0" alt="" src="resources/screenshot1.png"/>


<pre>
Developer's HUB / Changelog

1.0.3.5
* modifying SRC variable for better compatibility.

1.0.3.4
+ initial.
</pre>
