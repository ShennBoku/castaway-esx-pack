var scriptUrl = 'https:\/\/www.youtube.com\/s\/player\/23604418\/www-widgetapi.vflset\/www-widgetapi.js';window['yt_embedsEnableHouseBrandAndYtCoexistence'] =  true ;try{var ttPolicy=window.trustedTypes.createPolicy("youtube-widget-api",{createScriptURL:function(x){return x}});scriptUrl=ttPolicy.createScriptURL(scriptUrl)}catch(e){}var YT;if(!window["YT"])YT={loading:0,loaded:0};var YTConfig;if(!window["YTConfig"])YTConfig={"host":"https://www.youtube.com"};
if(!YT.loading){YT.loading=1;(function(){var l=[];YT.ready=function(f){if(YT.loaded)f();else l.push(f)};window.onYTReady=function(){YT.loaded=1;var i=0;for(;i<l.length;i++)try{l[i]()}catch(e$0){}};YT.setConfig=function(c){var k;for(k in c)if(c.hasOwnProperty(k))YTConfig[k]=c[k]};var a=document.createElement("script");a.type="text/javascript";a.id="www-widgetapi-script";a.src=scriptUrl;a.async=true;var c=document.currentScript;if(c){var n=c.nonce||c.getAttribute("nonce");if(n)a.setAttribute("nonce",
n)}var b=document.getElementsByTagName("script")[0];b.parentNode.insertBefore(a,b)})()};

const handoverData = (window).nuiHandoverData ?? {
    vars: {
        playerName: 'Player',
        serverName: 'Server',
    },
    config: {
        serverMessage: '${playerName}, welcome to ${serverName}!'
    }
};

$(document).ready(function() {
    // R8I3FOX7aZY -- Kalam Eneih
    // 5j8pYsArkto -- Teruntuk Mia - Nuh
    // vynluCFY3hg -- Teruntuk Mia - Saxophone
    var videoId = '6fjSRFWN0vo', videoStart = 150, videoEnd = 0;
    var default_volume = 1, current_volume = 60, audioMuted = false, player;

    // Initialize stars and clouds
    createStars(200); // Create 100 stars
    createClouds(12); // Create 12 clouds

    function replaceVariables(str, vars) {
        for(const [k, v] of Object.entries(vars)) str = str.replace('${' + k + '}', v);
        return str;
    }
    
    $('.welcome-message').html(replaceVariables(handoverData.config.serverMessage, handoverData.vars));

    window.addEventListener('message', function(e) {
        if (e.data.eventName === 'loadProgress') {
            $('.progress').css('width', `${parseInt(e.data.loadFraction * 100)}%`);
        }
    });

    window.YT.ready(function() {
        player = new window.YT.Player('videoPlayer', {
            videoId: videoId,
            playerVars: {
                'modestbranding': 1,
                'playsinline': 1,
                'disablekb': 1,
                'controls': 0,
                'autoplay': 1,
                'controls': 0,
                'origin': 'https://www.youtube.com',
                'loop': 1,
                'end': videoEnd > 0 ? videoEnd : null,
                'fs': 0,
            },
            events: {
                'onReady': function(e) {
                    if(e.target.videoTitle == '') { e.target.loadVideoById(videoId); return; }
                    if(videoStart > 0) e.target.seekTo(videoStart);
                    e.target.setVolume(current_volume);
                    $('#volumeLevel').text(`${current_volume}%`);
                },
                onStateChange: function(e) {
                    if(e.data == 0) {
                        e.target.playVideo();
                        if(videoStart > 0) e.target.seekTo(videoStart);
                    }
                }
            }
        });
    });

    $('#decreaseVolume').on('click', decreaseVolume);
    $('#muteUnmute').on('click', muteUnmute);
    $('#increaseVolume').on('click', increaseVolume);
    $(document).on('keydown', function(e) {
        // JS key code https://keycode.info
        if(e.which == 113 || e.which == 77) {
            muteUnmute();
        } else if((e.which == 107 || e.which == 61 || e.which == 38) && current_volume < 100) {
            increaseVolume();
        } else if((e.which == 109 || e.which == 173 || e.which == 40) && current_volume > 0) {
            decreaseVolume();
        }
    });

    function increaseVolume() {
        current_volume += 1;
        if(current_volume > 100) return;
        if(current_volume >= 1 || audioMuted) {
            audioMuted = false;
            $('#muteUnmute').html('<i class="fas fa-volume-xmark"></i>');
        }
        player.setVolume(current_volume);
        $('#volumeLevel').text(`${current_volume}%`);
    }
    
    function decreaseVolume() {
        current_volume -= 1;
        if(current_volume < 1) return;
        if(current_volume >= 1 || audioMuted) {
            audioMuted = false;
            $('#muteUnmute').html('<i class="fas fa-volume-xmark"></i>');
        }
        player.setVolume(current_volume);
        $('#volumeLevel').text(`${current_volume}%`);
    }
    
    function muteUnmute() {
        if(audioMuted) {
            audioMuted = false;
            current_volume = current_volume > 0 ? current_volume : default_volume;
            player.setVolume(current_volume);
            $('#muteUnmute').html('<i class="fas fa-volume-xmark"></i>');
            $('#volumeLevel').text(`${current_volume}%`);
        } else {
            audioMuted = true;
            player.setVolume(0);
            $('#muteUnmute').html('<i class="fas fa-headphones"></i>');
            $('#volumeLevel').text(`0%`);
        }
    }
});

// Function to create stars
function createStars(numStars) {
    const starsContainer = document.querySelector('.stars');
    for (let i = 0; i < numStars; i++) {
        const star = document.createElement('div');
        star.classList.add('star');
        star.style.top = `${Math.random() * 100}%`;
        star.style.left = `${Math.random() * 100}%`;

        // Randomize blink delay and duration
        const delay = Math.random() * 5; // Random delay (0 to 5 seconds)
        const duration = 0.5 + Math.random() * 1.5; // Random duration (0.5 to 2 seconds)

        // Apply GSAP animation for blinking
        gsap.to(star, {
            opacity: 1,
            duration: duration,
            repeat: -1, // Infinite loop
            yoyo: true, // Fade in and out
            delay: delay, // Random delay
            ease: 'power1.inOut',
        });

        starsContainer.appendChild(star);
    }
}

// Function to create clouds
function createClouds(numClouds) {
    const cloudsContainer = document.querySelector('.clouds');
    const cloudSVG = `<svg viewBox="0 0 100 50" width="100%">
                        <path d="M20,25 C20,10 40,5 50,15 C60,5 80,10 80,25 C95,25 95,40 80,40 C80,55 60,60 50,50 C40,60 20,55 20,40 C5,40 5,25 20,25 Z" fill="white"/>
                      </svg>`;

    const cloudPositions = [];
    const minDistance = 20; // Minimum distance between clouds (in %)

    for (let i = 0; i < numClouds; i++) {
        let x, y;
        let isValidPosition = false;

        // Ensure clouds are spaced out
        while (!isValidPosition) {
            x = Math.random() * 125; // Random horizontal position
            y = Math.random() * 250; // Random vertical position within the top 15%

            // Check if the new position is far enough from existing clouds
            isValidPosition = cloudPositions.every(pos => {
                const dx = pos.x - x;
                const dy = pos.y - y;
                return Math.sqrt(dx * dx + dy * dy) >= minDistance;
            });
        }

        // Store the new cloud position
        cloudPositions.push({ x, y });

        const cloud = document.createElement('div');
        cloud.classList.add('cloud');
        cloud.innerHTML = cloudSVG;
        cloud.style.top = `${y}%`;
        cloud.style.left = `${x}%`;
        cloudsContainer.appendChild(cloud);

        // Animate clouds using GSAP
        gsap.to(cloud, {
            x: '+=150%', // Move clouds further away (responsive distance)
            y: '-=5%', // Move clouds slightly upward
            duration: 30 + Math.random() * 30, // Random speed (slower for a more relaxed feel)
            repeat: -1, // Infinite loop
            ease: 'none',
        });
    }
}