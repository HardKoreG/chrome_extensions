<h1><img src="resources/icon.png" height="64" width="64"/> HTTPS-Fix</h1>

Fixes <a href="https://developer.mozilla.org/en-US/docs/Web/Security/Mixed_content">mixed-content cases</a> by trying to load them from HTTPS instead.

It looks for videos, iframes, images, css-links and other stuff,
on badly programmed pages, that loaded from HTTPS location, but still uses hard-coded HTTP prefix URLs,
Then it fixes the URL so it won't raise an error in your browser,
--- since the URL would have never had been loaded successfully anyway,
    in its original state, at least you have a chance of putting HTTPS as new prefix will fix the problem for you.

--- It can magically make websites work again!

<img src="resources/screenshot_1.png"/>

<h3>This Extension Is A Great Work Enhancer!</h3>

<hr/>

To-Do: add a ""server-side"" (meaning extension, but not client-side) blocking of all HTTP resources loading, based on "entry point" of the HTTP<strong>S</strong> page (filter can be something like <code>"https://*"</code>).

<pre>
Developer's HUB / Changelog

1.0.0.5
- removing leftover CSS-styles from copying the folder from XDA.
* changing the icon.

1.0.0.4
* improving cross-browser-API compatibility.

1.0.0.3
* simplified engine and item discovery.

1.0.0.2
+ initial
</pre>

<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->
