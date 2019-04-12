<h1><img src="resources/icon.png" height="64" width="64"/> EMDR</h1>

A web-based EMDR training exercise, <br/>
with optional binural audio, <br/>
taken from https://github.com/eladkarako/emdr/ <br/>
in a form of a web-extension for Chrome and Firefox, <br/>
available for both desktop and mobile-phones, <br/>
with all the resources, so this way it is available offline. <br/>

<hr/>

Clicking the icon will open the EMDR training exercise in a new-tab, <br/>
or switch to an already opened tab of the EMDR training exercise. <br/>
There is a hidden button to go to full-screen on the top left-corner and <br/>
a hidden audio-player for a binural-audio slightly to the right of the button. <br/>
more information at https://github.com/eladkarako/emdr/ .

<hr/>

Difference from https://github.com/eladkarako/emdr/blob/master/index.html <br/>
the following part: 
<ol>
<li>

```html
<!-- ╔════════════════════╗
     ║ security           ║
     ║ (overcome framing) ║
     ╚════════════════════╝ -->
  <script async                       crossorigin="anonymous"  type="application/javascript"  charset="UTF-8"  src="data:application/javascript;charset=UTF-8;base64,LypQcmV2ZW50LUlGcmFtZS1IaWphY2tfKFBlcm1pc3NpdmUpLl9EZXZlbG9wZWRfQnlfRWxhZF9LYXJha29fSnVseV8yMDE4Ki9pZih0b3AubG9jYXRpb24uaG9zdG5hbWUhPT1zZWxmLmxvY2F0aW9uLmhvc3RuYW1lKXRvcC5sb2NhdGlvbi5hc3NpZ24oc2VsZi5sb2NhdGlvbi5ocmVmKTs="></script> <!-- prevent other websites loading this page in an IFRAME. -->
```

was removed since web-extensions have default <code>Content Security Policy</code> that forbids (by default) opening a BASE64-encoded script, <br/>
and I don't want to override the definition (although possible).
</li>
<li>
In-order to keep the extension-size small, the audio is limited to MP3 and OGG, <br/>
removing the M4A and OPUS files. 
The MP3+OGG are still about ~24MB.

The HTML-markup in the index.html was modified as-well to exclude them.
</li>
</ol>

<hr/>

<pre>
Developer's HUB / Changelog


1.0.0.1
+ initial.
</pre>

<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->