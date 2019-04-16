<h1><img src="resources/icon.png" height="64" width="64"/> Chrome-Extension-UnLazy</h1>

<h2>★★★★★ Lazy-Loading Be-Gone!</h2>

Removes lazy-loading delay from everything that has it (mostly image and iframe elements have it),
You will get your content very fast, and your page will react faster to scroll and mouse movement/touch gestures.


<img alt="" src="resources/screenshot_1.png"/>

<img alt="" src="resources/screenshot_2.png"/>


Will Work Everywhere! (eBay, Amazon, WordPress, Blogger,...)

<pre>
Developer's HUB / Changelog

8.0.2.13
* removed mutation-observer, making the web-extension faster but might not work as well on dynamic-content.
* enhancing the 'little gift' with nice colors and stop loading the page asap. so funny Ha haaa Haaaa :)

8.0.2.12
* bring back the 'little gift' for specialized domains because it was so funny Ha haaa Haaaa :)

8.0.2.10
* fixing missing 'get source' from a generic lazy-loading attribute.
- removing gift for specialized domain, although it was pretty funny.

8.0.2.9
* adding a little gift for specialized domain.

8.0.2.8
+ remove 'lazy' marking in class-list, this helps to prevent various loading-engines from addressing the images even when the SRC was already fixed.
* include various WordPress generic-cases that uses data-lazy-src, data-lazy-srcset, and data-lazy-sizes attributes.
+ adding an 'unhide' tweak to handle pre-hidden content.

8.0.2.7
+ adding support for images with data-img-src markup for the real image.

8.0.2.6
* improving cross-browser-API compatibility.

8.0.2.5
* adding support for simple 'data-url' to replace 'src'.

8.0.2.4
* adding support for custom lazy-loading used in thinkgeek-website.

8.0.2.3
* small fix for eBay new page-structure with img/src (1x1pixel)/data-src (real image).

8.0.2.2
+ adding support of PICTURE-SOURCE as used in several blogs (lifehacker uses it).

8.0.2.1
* observing DOM-changes more closely, in addition to existing ways.

8.0.1.7
* listening to 'yt-page-*' and 'yt-navigate-*' events for page-content changing.

8.0.1.6
+ adding support for lazy-loading IMG-elements holding the real-image in 'data-echo' attribute, used in some online-carts pages.

8.0.1.5
+ adding support for images with 'data-lazysrc' attributes used in custom lazy-loading solutions.

8.0.1.4
+ adding flattening of "grid-images" (such in "nerdist.com" website) where the image is nesting with a lazy-loading (fallback is a loading-gif) with data-1x1 or data-2x2 attributes.
* providing global fix for cross-origin http-https mistakes in websites.

8.0.1.3
+ adding another variation of jQuery-lazy, common in video-galleries where the image hides under 'data-original' attribute.

8.0.1.2
* cleaning some CDN's non-sense syntax in final IMG URLs.

8.0.1.1
+ add support for several cases of "div as img" when it uses "data-src" and "data-original-src" attributes.
* split main code to two short cases of img/div as main containers.

8.0.0.2
* including generalized alternative/custom pagespeed functionality used in ebay.

8.0.0.1
* reduced functionality - handling just pagespeed.

7.0.3.3
* improved handling of SPF loading. Note that YouTube will still cache the webp animated-video previews, if you want to block it (since you will use the jpg static preview anyway) you should add something like this "ytimg.com/*/mqdefault_6s.webp" rule to your ublock-origin list, which will load the page faster.

7.0.1.1
* handling all images on the page and improved results heuristically.
+ dynamic-pages element discovering - efficiently and w/o timers!
* including non-mainstream hacks for YouTube's static/moving thumbnail.

6.2.0.9
+ prefer to always show the video-preview on YouTube.

6.2.0.8
+ adding support for YouTube animated-video thumbs.

6.2.0.7
+ adding fixout for lazy-loading images, being hidden, mostly used in youtube...

6.2.0.6
+ added support for Chrome's idle state.
- reduce package size.
- limit re-discovery to once per-page life-cycle state-change (load/ready).
- removed isolation.

6.2.0.4
* improve element-discovery.
+ adding "hiding"-removal.

6.2.0.3
* improve element-discovery-query for hidden or ad-blocked images.

6.2.0.1
* refactor code for global scope isolation (reduced memory print).
* refactor code for image background pre-caching outside of DOM (reduced reflow, reduced CPU).
* generic code-style refactor, to be slightly-less-centralised (reduce usage of anonymous-function in main loop since those are now cached-once and referenced onced in-look by name).
* specified ONLY handling of IMG elements - ignore IFRAMEs, although possible to being handled by this extension :../  ...and ignore SCRIPTs since it was never-meant to be handled by this extension :/

6.1.4.2
* improved element discovery (ignoring 'srcset' - which is a legitimate HTML5's attribute and not "lazy" related..)

6.1.4.1
+ add support for LazyLoading using generic 'js-preload'.

6.1.3.1
+ added generic heuristics-pattern matching for jQuery's LazyLoad.

6.1.2.7
+ added anti-YouTube-LazyLoading.

6.1.2.5
* refactor flag identification.

6.1.2.4
* improved flag definition.

6.1.2.3
+ added fix for unescaped-HTML-entities leftovers.

6.1.2.2
+ initial (mostly used in Google's PageSpeed LazyLoading - for example: used on eBay)
</pre>

<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->