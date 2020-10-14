#/bin/sh

curr=$(light -s sysfs/leds/asus::kbd_backlight -G | sed 's/[.]//g')

echo $curr

if [ $1 == 'increase' ]
then
    if [ $curr -eq 000 ]
    then
        $(light -s sysfs/leds/asus::kbd_backlight -S 34)
    else
        if [ $curr -eq 3333 ]
        then
            $(light -s sysfs/leds/asus::kbd_backlight -S 70)
        else
            if [ $curr -eq 6667 ]
            then
                $(light -s sysfs/leds/asus::kbd_backlight -S 100)
            fi
        fi
    fi
fi


if [ $1 == 'decrease' ]
then
    if [ $curr -eq 10000 ]
    then
        $(light -s sysfs/leds/asus::kbd_backlight -S 70)
    else
        if [ $curr -eq 6667 ]
        then
            $(light -s sysfs/leds/asus::kbd_backlight -S 34)
        else
            if [ $curr -eq 3333 ]
            then
                $(light -s sysfs/leds/asus::kbd_backlight -S 0)
            fi
        fi
    fi
fi

