// Force enable hardware acceleration and WebRender in Firefox on Linux

// Enable WebRender (GPU-based rendering)
user_pref("gfx.webrender.all", true);
user_pref("gfx.webrender.enabled", true);
// Use WebRender for compositing
user_pref("gfx.webrender.compositor", true);
// Ensure GPU process is enabled
user_pref("dom.ipc.gpu.enabled", true);
user_pref("widget.wayland-dmabuf-webgl.enabled", true);
user_pref("widget.wayland-dmabuf-vaapi.enabled", true);

// Force hardware acceleration even if Firefox thinks it's unsupported
user_pref("layers.acceleration.force-enabled", true);

// Enable OpenGL compositor
user_pref("layers.acceleration.disabled", false);

// Enable VA-API (Video Acceleration API) for video decoding
user_pref("media.ffmpeg.vaapi.enabled", true);
user_pref("media.ffvpx.enabled", false); // Prefer system codecs over built-in software decoder

// Enable hardware accelerated video decoding for WebRTC
user_pref("media.navigator.mediadatadecoder_vpx_enabled", true);

// Reduce CPU usage for video playback
user_pref("media.hardware-video-decoding.force-enabled", true);

// Allow Firefox to use GPU for canvas rendering
user_pref("gfx.canvas.accelerated", true);
user_pref("gfx.canvas.azure.accelerated", true);

// Enable GPU process
user_pref("layers.gpu-process.enabled", true);

// Optional: Enable hardware accelerated WebGL
user_pref("webgl.force-enabled", true);
user_pref("webgl.disabled", false);


// === TELEMETRY ===
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.server", "");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);

// === STUDIES / EXPERIMENTS ===
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");

// === CRASH REPORTS ===
user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false);
user_pref("browser.crashReports.unsubmittedCheck.enabled", false);

// === HEALTH REPORT ===
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("datareporting.sessions.current.clean", true);

// === PINGS & RECOMMENDATIONS ===
user_pref("browser.discovery.enabled", false);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);

// === URL / INTERACTION DATA ===
user_pref("browser.urlbar.eventTelemetry.enabled", false);
user_pref("browser.urlbar.quicksuggest.enabled", false);
user_pref("browser.urlbar.quicksuggest.scenario", "history");
user_pref("browser.urlbar.sponsoredTopSites", false);

// === POCKET ===
user_pref("extensions.pocket.enabled", false);


