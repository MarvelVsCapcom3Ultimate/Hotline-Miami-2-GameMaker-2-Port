current=-1
if on=0 exit
if objPlayer.y>y-34 and objPlayer.y<y+34 and objPlayer.x>x and objPlayer.x<x+40 {
current=round((objPlayer.y-(y-34))*(1/16))
if current>4 current=4
}
