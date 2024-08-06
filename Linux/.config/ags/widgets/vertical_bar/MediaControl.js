const paused  = "";
const playing = "";

const mpris = await Service.import('mpris')
const players = mpris.bind("players");

/** @param {import('types/service/mpris').MprisPlayer} player */
const Player = player => Widget.Button({
    class_name: "play-pause",
    on_clicked: () => player.playPause(),
    visible: player.bind("can_play"),
    child: Widget.Label({
        hpack: "center",
        vpack: "start",
        label: player.bind("play_back_status").transform(s => {
            switch (s) {
                case "Playing": return paused
                case "Paused": 
                case "Stopped": return playing
            }
        }),
    }),
})

export function MediaControl(){
    
    return Widget.Box({
        class_name: "batbox",
        hpack: "center",
        vpack: "center",
        vertical: true,
        children: players.as(p => p.map(Player))
    })
    

}