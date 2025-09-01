$(document).ready(function() {
    var howlAudioPlayer = null;

    window.addEventListener('message', function(e) {
        // Interact Sound
        if(e.data.action == 'interact-sound') {
            if(howlAudioPlayer != null) howlAudioPlayer.stop();
            howlAudioPlayer = new Howl({ src: [`nui://kyg_assets/public/sound/interact-${e.data.interact}.ogg`] });
            howlAudioPlayer.volume(e.data.volume);
            howlAudioPlayer.play();
        }
    });
});