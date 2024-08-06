import { Clock } from "./misc.js"
import { Workspaces } from "./workspaces.js"
import { MediaControl } from "./MediaControl.js";
import { SysTray } from "./tray.js";

function Top() {
    return Widget.Box({
        spacing: 2,
        vertical: true,
        children: [
            Clock(),
            SysTray()
            //287 pixel from top
        ],
    })
}

function Center() {
    return Widget.Box({
        spacing: 2,
        vertical: true,
        hpack: "center",
        vpack: "end",
        children: [
        ],
    })
}

function Bottom() {
    return Widget.Box({
        spacing: 2,
        vertical: true,
        hpack: "center",
        vpack: "end",
        children: [
            MediaControl(),
            Workspaces(),
        ],
    })
}

export function vertical_bar(monitor = 0) {
    return Widget.Window({
        name: `bar-${monitor}`,
        monitor,
        exclusivity: "exclusive",
        anchor: ["right"],
        child: Widget.CenterBox({
            class_name: "vertical_bar",
            vertical: true,
            start_widget: Top(),
            center_widget: Center(),
            end_widget: Bottom(),
        }),
    })
}
