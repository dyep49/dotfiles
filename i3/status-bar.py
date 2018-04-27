 # -*- coding: utf-8 -*-
from i3pystatus import Status
from i3pystatus.weather import weathercom

status = Status()

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
    format="♪{volume}",)

# Shows mpd status
# Format:
# Cloud connected▶Reroute to Remain
status.register("mpd",
    format="{title}{status}{album}",
    status={
        "pause": "▷",
        "play": "▶",
        "stop": "◾",
    },)

status.register(
    'battery',
    interval=5,
    format='{battery_ident}: [{status} ]{percentage_design:.2f}%',
    status = {
        'DPL': 'DPL',
        'CHR': 'CHR',
        'DIS': 'DIS',
        'FULL': '',
    }
)

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("clock",
    format="%a %-d %b %X KW%V",
    color = "#ff00ff",
    )

status.register("weather",
    backend=weathercom.Weathercom(
        location_code="94110:4:US",
        units="imperial"
    ),
    colorize=True)


# Note: requires both netifaces and basiciw (for essid and quality)
status.register("network",
    interface="wlp2s0",
    format_up="{essid} {quality:03.0f}%",)


# Shows your CPU temperature, if you have a Intel CPU
status.register("temp",
    format="CPU: {temp:.0f}°C",)

status.register("cpu_usage_graph",)

# Show memory bar
status.register("mem_bar",
    multi_colors=True,)

status.register("spotify",)

status.run()
