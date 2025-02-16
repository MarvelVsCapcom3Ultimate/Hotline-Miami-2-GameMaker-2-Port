surf=surface_create(room_width,room_height)
surface_set_target(surf)
draw_clear_alpha(c_black,0)
surface_reset_target()
title[0]="MIDNIGHT ANIMAL"
title[1]="DOWN UNDER"
title[2]="HOMICIDE"
title[3]="HARD NEWS"
title[4]="FINAL CUT"
title[5]="TRIAL & ERROR"
title[6]="MOVING UP"
title[7]="NO MERCY"
title[8]="EXECUTION"
title[9]="GREEN INFERNO"
title[10]="INTO THE PIT"
subtitle[0]="OPENING CREDITS"
subtitle[1]="1ST SCENE"
subtitle[2]="2ND SCENE"
subtitle[3]="3RD SCENE"
subtitle[4]="4TH SCENE"
subtitle[5]="5TH SCENE"
subtitle[6]="6TH SCENE"
subtitle[7]="7TH SCENE"
subtitle[8]="8TH SCENE"
subtitle[9]="9TH SCENE"
subtitle[10]="10TH SCENE"
select=0
dir=0
i=0
repeat (11) {
myx[i]=0
targetx[i]=0
i+=1
}
reload=0
c_amount=0
fade=0
intro=1
introquery=0
introalpha=0
global.done=0
global.paused=0
scrSetDates(23,47,10,10,1991,23,47,10,10,1991,"MIAMI, FLORIDA","MIAMI, FLORIDA")
