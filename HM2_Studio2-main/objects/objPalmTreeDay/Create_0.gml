branches=8+round(random(8))
i=0
dir=random(360)
repeat branches {
branchdir[i]=dir+i*(360/branches)
branchsway[i]=random(360)
branchangle[i]=8+random(8)
branchindex[i]=floor(random(6))
branchscale[i]=choose(1,-1)
blend[i]=merge_color(c_aqua,c_teal,random(0.8))
i+=1
}
image_angle=random(360)
image_speed=0
image_index=round(random(1))
sway=random(360)
on=1
