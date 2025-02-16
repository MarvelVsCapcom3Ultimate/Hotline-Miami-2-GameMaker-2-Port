image_angle+=diradd*speed

if speed=0 {
if bled=0 {bled=1 scrBodyPieceBleed()}
}

if !place_free(x,y) speed=0
