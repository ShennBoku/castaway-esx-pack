on('playerConnecting', function(name, _setKickReason, deferrals) {
    deferrals.handover({
        vars: {
            playerName: name,
            serverName: GetConvar('sv_projectName', GetConvar('sv_hostname', '')),
        },

        config: {
            // serverMessage: GetConvar('loadscreen:serverMessage', '${playerName}, welcome to ${serverName}!'),
            serverMessage: 'Welcome, ${playerName}!',
        },
    });
});