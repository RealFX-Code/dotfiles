const hyprland = await Service.import("hyprland")

function getWorkspaceString(i) {
    return "";
    /* if (i != 10) {
        return `${i}`;
    } else {
        return `0`;
    }*/
}

function getClassNameString(workspaceID, activeWorkspace) {

    let classes = [];

    // check if workspace is empty

    // TODO: check if a workspace is empty

    // is workspace active

    if (workspaceID == activeWorkspace) {
        classes.push("workspaces_focused");
    } else {
        classes.push("workspaces_unfocused");
    }

    let finalClassList = classes.join(" ");

    //    console.log(workspaceID + " : " + finalClassList);
    
    return finalClassList;
}

export function Workspaces() {


    const activeId = hyprland.active.workspace.bind("id")

    return Widget.Box({
        vertical: true,
        class_name: "workspaces",
        hpack: "center",
        vpack: "center",
        children: Array.from({ length: 10 }, (_, i) => i + 1).map(i => Widget.Button({
            on_clicked: () => hyprland.messageAsync(`dispatch workspace ${i}`),
            class_name: activeId.as(
                j=>getClassNameString(i,j)
            ),
            vpack: "center",
            hpack: "center",
            attribute: i,
            label: getWorkspaceString(i),
            onClicked: () => dispatch(i),
        }))
    })
}