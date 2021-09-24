

# Custom or Tweaking your Scrollbar Settings in Ubuntu MATE 20.04

## Problem:
Scrollbars are so tiny. I need to make "bigger" or "wider".

#Solution:
This solution was tested in Ubuntu MATE 20.04. It should be in any desktop environment using gkt.

1. Create the file `~/.config/gtk-3.0/gtk.css` with this content:
```
scrollbar slider {
    /* Size of the slider */
    min-width: 20px;
    min-height: 20px;
    border-radius: 22px;

    /* Padding around the slider */
    border: 2px solid transparent;
}

scrollbar trough {
    background-color: shade(@theme_bg_color, 0.60);
}

scrollbar button,
scrollbar button.vertical,
scrollbar button.horizontal,
scrollbar .button,
scrollbar .button.vertical,
scrollbar .button.horizontal {
    color: shade(@theme_bg_color, 0.10);
    background-color: shade(@theme_bg_color, 0.4);
}
```

2. Log out and log in again.

Your scroll bar (vertical y horizontal) should be looks "bigger" or "wider", try to open a file explorer (Nautilus or Caja) to verify them.




## Source:
<https://ubuntu-mate.community/t/tweaking-your-scrollbar-settings/16161/4>
