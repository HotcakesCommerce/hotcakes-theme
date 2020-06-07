/*!
 * Contact Buttons Plugin Demo 0.1.0
 * https://github.com/joege/contact-buttons-plugin
 *
 * Copyright 2015, José Gonçalves
 *
 * Licensed under the MIT license:
 * http://www.opensource.org/licenses/MIT
 */
 
// Google Fonts
WebFontConfig = {
  google: { families: [ 'Lato:400,700,300:latin' ] }
};
(function() {
  var wf = document.createElement('script');
  wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
    '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
  wf.type = 'text/javascript';
  wf.async = 'true';
  var s = document.getElementsByTagName('script')[0];
  s.parentNode.insertBefore(wf, s);
})();



// Initialize Share-Buttons
$.contactButtons({
  effect  : 'slide-on-scroll',
  buttons : {
    'facebook':   { class: 'facebook', use: true, link: 'https://www.facebook.com/sharer/sharer.php?u={url}&t={title}', extras: 'target="_blank"' },
    'linkedin':   { class: 'linkedin', use: true, link: 'https://www.linkedin.com/shareArticle?mini=true&url={url}&title={title}&summary={description}&source=' , extras: 'target="_blank"'},
    'google':     { class: 'gplus',    use: true, link: 'https://plus.google.com/share?url={url}', extras: 'target="_blank"' },	
	'twitter':    { class: 'twitter',  use: true, link: 'https://twitter.com/home?status={url}', title: 'Follow on Twitter', extras: 'target="_blank"' }
    //'mybutton':   { class: 'git',      use: true, link: 'http://github.com', icon: 'github', title: 'My title for the button' },
    // 'phone':      { class: 'phone separated',    use: true, link: '+000' },
    // 'email':      { class: 'email',    use: true, link: 'test@web.com' }
  }
});

    function openPopUp(url, title) {
		var width  = 400;
		var height = 300;
        var w = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width,
            h = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height,
            left = (w / 2) - (width / 2) +  10,
            top  = (h / 2) - (height / 2) +  50;
        window.open(url, title, 'scrollbars=yes, width=' + width + ', height=' + height + ', top=' + top + ', left=' + left).focus();
    }