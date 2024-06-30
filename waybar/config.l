{
    "layer": "top", // Waybar at top layer
    "position": "top", // Waybar position (top|bottom|left|right)
    "height": 40, // Waybar height (to be removed for auto height)
    "spacing": 2, // Gaps between modules (4px)

    "modules-left": ["hyprland/workspaces","custom/storage", "hyprland/language", ],
    "modules-center": ["hyprland/window"],
    "modules-right": ["tray",  "cpu","memory", "temperature", "pulseaudio", "network", "clock", "custom/powermenu"],
    "custom/powermenu": {
	"format": " ",
	"on-click": "terminator -e wlogout",
	"tooltip": false,
    },
    "hyprland/language": {
    "format": "{}",
},
    // Modules configuration

    // "hyprland/workspaces": {
    //     "disable-scroll": true,
    //     "all-outputs": true,
    //     "warp-on-scroll": false,
    //     "format": "{name}: {icon}",
    //     "format-icons": {
    //         "1": "",
    //         "2": "",
    //         "3": "",
    //         "4": "",
    //         "5": "",
    //         "urgent": "",
    //         "focused": "",
    //         "default": ""
    //     }
    // },
    "tray": {
//        "icon-size": 21,
        "spacing": 2
    },
    //"hyprland/window": {
     //   "max-length": 20,
      //  "format": "{class}",
       // "tooltip": false
   // },
    "clock": {
        // "timezone": "America/New_York",
        "tooltip-format": "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>",
        "format-alt": "{:%Y-%m-%d}"
    },
    "cpu": {
        "format": " {usage}%",
        "format-alt": " {avg_frequency} GHz",
        "interval": 1,
        "tooltip": false,
    },
    "memory": {
        "format-alt": "󰍛 {used}/{total} GiB",
        "interval": 1,
        "format": "{}% ",
    },
    "temperature": {
	 "thermal-zone": 2,
	 "hwmon-path": ["/sys/class/hwmon/hwmon1/temp1_input"],
        "critical-threshold": 80,
    //"format-critical": "{temperatureC}° ",
    //"format": "{temperatureC}° "
        // "thermal-zone": 2,
        // "hwmon-path": "/sys/class/hwmon/hwmon2/temp1_input",
    //    "critical-threshold": 80,
        // "format-critical": "{temperatureC}°C {icon}",
        "format": "{temperatureC}°C {icon}",
        "format-icons": ["", "", ""]
    },
    "network": {
        // "interface": "wlp2*", // (Optional) To force the use of this interface
        "format-wifi": "{essid} ({signalStrength}%) ",
        "format-ethernet": "{ipaddr}/{cidr} ",
        "tooltip-format": "{ifname} via {gwaddr} ",
        "format-linked": "{ifname} (No IP) ",
        "format-disconnected": "Disconnected ⚠",
        "format-alt": "{ifname}: {ipaddr}/{cidr}"
    },
    "pulseaudio": {
        // "scroll-step": 1, // %, can be a float
        "format": "{volume}% {icon} {format_source}",
        "format-bluetooth": "{volume}% {icon} {format_source}",
        "format-bluetooth-muted": " {icon} {format_source}",
        "format-muted": " {format_source}",
        "format-source": "{volume}% ",
        "format-source-muted": "",
        "format-icons": {
            "headphone": "",
            "hands-free": "",
            "headset": "",
            "phone": "",
            "portable": "",
            "car": "",
            "default": ["", "", ""]
        },
        "on-click": "pavucontrol"
    },
     "custom/spotify": {
        "interval": 1,
        "return-type": "json",
        "exec": "~/.config/waybar/modules/spotify.sh",
        "exec-if": "pgrep spotify",
        "escape": true
    },
    "custom/storage": {
        "format": "{} ",
        "format-alt": "{percentage}% ",
        "format-alt-click": "click-right",
        "return-type": "json",
        "interval": 60,
        "exec": "~/.config/waybar/modules/storage.sh"
    },
    

}
