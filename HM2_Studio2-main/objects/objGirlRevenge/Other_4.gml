if room=rmPoliceStationFloor2MovieSet {
__view_set( e__VW.XView, 0, viewx )
__view_set( e__VW.YView, 0, viewy )
with objPlayerDead {
repeat (40) {
tile=choose(0,1,2,3,4,5,6,7)
if tile=0 {tilex=64 tiley=0}
if tile=1 {tilex=32 tiley=16}
if tile=2 {tilex=48 tiley=16}
if tile=3 {tilex=64 tiley=16}
if tile=4 {tilex=32 tiley=32}
if tile=5 {tilex=48 tiley=32}
if tile=6 {tilex=64 tiley=32}
if tile=7 {tilex=64 tiley=48}
tile_add(tlDirtBlood,tilex,tiley,16,16,(x-8)-24+random(48),(y-8)-24+random(48),1000)
}
}
}
