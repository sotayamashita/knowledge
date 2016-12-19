# HTML

# 日本語

### `<video/>`

**インラインでの再生**
```html
<video inlineplay />
```
ref:
- https://webkit.org/blog/6784/new-video-policies-for-ios/

**AirPlay の選択肢を表示しない***
```html
<video x-webkit-airplay="allow | deny" ><video>
```

ref: 
- https://developer.apple.com/library/content/documentation/AudioVideo/Conceptual/AirPlayGuide/OptingInorOutofAirPlay/OptingInorOutofAirPlay.html
- http://stackoverflow.com/questions/13655237/airplay-with-custom-html5-controls

**Chromecast の選択肢を表示しない**
```css
video::-internal-media-controls-overlay-cast-button {
    display: none;
}
```

ref: 
- http://stackoverflow.com/questions/28153166/android-chrome-chromecast-icon-over-html5-video-position
- https://chromium.googlesource.com/experimental/chromium/blink/+/master/LayoutTests/media/controls-overlay-cast-button.html
