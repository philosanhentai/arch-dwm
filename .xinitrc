xidlehook --not-when-audio --not-when-fullscreen --timer 600 "slock&  sudo loginctl suspend" - &
xrandr --output HDMI-1 --auto
exec ~/.fehbg&
exec xcompmgr& 
exec xrdb -merge ~/.Xresources&
/home/philosan/.bar&
exec  dbus-launch --sh-syntax --exit-with-session dwm 
#exec pwm 
#exec awesome
##########



