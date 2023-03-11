create_explo_circle(yonsei_hitbox.x,yonsei_hitbox.y,60,15,1,0,6,0,0,0)

var angle__1 = spotlight1.image_angle+180
var angle__2 = spotlight2.image_angle+180

var _spotlight1_laser = create_laser(spotlight1.x,spotlight1.y,60,10,0.1,0,2,angle__1)
_spotlight1_laser.image_angle = angle__1+45
		
var _spotlight2_laser = create_laser(spotlight2.x,spotlight2.y,60,10,0.1,0,2,angle__2)
_spotlight2_laser.image_angle = angle__2-45