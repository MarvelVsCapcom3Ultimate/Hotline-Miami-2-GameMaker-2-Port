if __background_get( e__BG.X, 0 )<-480 __background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) + (480) ) {
draw_background(__background_get( e__BG.Index, 0 ),__background_get( e__BG.X, 0 ),0)
draw_background(__background_get( e__BG.Index, 0 ),__background_get( e__BG.X, 0 )+480,0)
}
