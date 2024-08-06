import { vertical_bar } from "./widgets/vertical_bar/vertical_bar.js";
const css = `/home/leah/.config/ags/scss/my-style.css`

Utils.monitorFile(
    `/home/leah/.config/ags/scss`,

    function() {
        const scss = `/home/leah/.config/ags/scss/style.scss`
        
        Utils.exec(`sassc ${scss} ${css}`)
        App.resetCss()
        App.applyCss(css)
    },
)

const hyprland = await Service.import('hyprland')

let monitors = [];

hyprland.monitors.forEach(function(value){
    monitors.push(vertical_bar(value.id));
});

App.addIcons(`${App.configDir}/assets`)
App.config({
    style: css,
    windows: monitors
})

