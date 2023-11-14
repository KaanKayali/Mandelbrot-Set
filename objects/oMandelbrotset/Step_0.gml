/// @description Variables & Beginning
//Variables
if(mouse_check_button_pressed(mb_left)){
	xPointtozoom = actualwidth/(width/mouse_x) - actualwidth/2;
	yPointtozoom = actualheight/(height/mouse_y) - actualheight/2;
	
	minvalueWidth = minvalueWidth/2;
	maxvalueWidth = maxvalueWidth/2;
	minvalueHeight = minvalueHeight/2;
	maxvalueHeight = maxvalueHeight/2;
	
	instance_destroy(oPixel);
	Drawn = true;
}

actualwidth = maxvalueWidth-minvalueWidth;
actualheight = maxvalueHeight-minvalueHeight;

if(Drawn){
	for(var a = 0; a < width; a++){
		for(var b = 0; b < height; b++){

		    if(a != 0){
				var xa = actualwidth/(width/a) - actualwidth/2 + xPointtozoom;
			}
			else{
				var xa = 0 - actualwidth/2 + xPointtozoom;
			}
	
			if(b != 0){
				var xb = actualheight/(height/b) - actualheight/2 + yPointtozoom;
			}
			else{
				var xb = 0 - actualheight/2 + yPointtozoom;
			}

		    var ca = xa;
			var cb = xb;
			var n = 0;
	
			while(n < maxiterations){
				aa = power(xa,2) - power(xb,2);
				bb = 2 * xa * xb;
				xa = aa + ca;
				xb = bb + cb;
				if(xa+xb > 16){
					break;
				}
				n++;
			}
	
			if(n != oMandelbrotset.maxiterations){
				with(instance_create_layer(a,b,layer,oPixel)){
					var rgb = 255/(oMandelbrotset.maxiterations/n);
			       image_blend = make_colour_rgb(rgb, rgb, rgb);
				}
			}
		
		
		
		}
		Drawn = false;
	}
}







