image_speed=0
wall=instance_nearest(x,y,objWall)
if instance_exists(wall) {
if wall.object_index=objEditorWallV or wall.object_index=objEditorWallH sprite_index=sprWindowV
if wall.object_index=objEditorBrickWallV or wall.object_index=objEditorBrickWallH sprite_index=sprBrickWindowV
}
