
export function misc_button() {
    const icon = Widget.Icon({
        icon: "calendar-symbolic",
        hpack: "center",
        vpack: "center",
        cursor: "pointer",
        class_name: "misc_icon"
    })

    return Widget.Button({
        onClicked: () => print("test"),
        hpack: "center",
        vpack: "center",
        cursor: "pointer",
        child: icon,
        class_name: "misc_button",
    })
}
