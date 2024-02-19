/// @description Insert description here
// You can write your code in this editor
//Mouse
mouselocation = [
	actualwidth/(width/mouse_x) - actualwidth/2,
	actualheight/(height/mouse_y) - actualheight/2
];

//Zooming
var pointzoom = [0,0];
if(mouse_check_button_pressed(mb_left)){
	pointzoom = mouselocation;
	actualwidth /= 2//maxvalueWidth-minvalueWidth;
	actualheight /= 2//maxvalueHeight-minvalueHeight;
	
	instance_destroy(renderer);
	pointarray = [];
	drawn = false;
}
if(mouse_check_button_pressed(mb_right)){
	actualwidth *= 2//maxvalueWidth-minvalueWidth;
	actualheight *= 2//maxvalueHeight-minvalueHeight;
	
	instance_destroy(renderer);
	pointarray = [];
	drawn = false;
}

//Reset
if(keyboard_check_pressed(ord("R"))){
	actualwidth = maxvalueWidth-minvalueWidth;
	actualheight = maxvalueHeight-minvalueHeight;
	
	instance_destroy(renderer);
	pointarray = [];
	drawn = false;
}

//Mandelbrot set
if(!drawn){
	for(var a = 0; a < width; a++){
		for(var b = 0; b < height; b++){

		    if(a != 0) var xa = actualwidth/(width/a) - actualwidth/2 + pointzoom[0];
			else var xa = 0 - actualwidth/2 + pointzoom[1];
	
			if(b != 0) var xb = actualheight/(height/b) - actualheight/2 + pointzoom[0];
			else var xb = 0 - actualheight/2 + pointzoom[1];

		    var ca = xa;
			var cb = xb;
			var n = 0;
	
			while(n < maxiterations){
				aa = power(xa,2) - power(xb,2);
				bb = 2 * xa * xb;
				xa = aa + ca;
				xb = bb + cb;
				if(xa+xb > 16) break;
				n++;
			}
	
			
			if(n != maxiterations){
				//Color
				var rgb = 255/(maxiterations/n);
				if(n < maxiterations/4) rgb = make_colour_rgb(0, 0, 255);
				else if(n < maxiterations*0.5) rgb = make_colour_rgb(255, 0, 255);
				else if(n < maxiterations*0.75) rgb = make_colour_rgb(255, 0, 255);
				else if(n == maxiterations) rgb = make_colour_rgb(0, 0, 0);
				
				array_push(pointarray, [a,b,rgb]);
			}
		
		
		}
	}
	with(instance_create_depth(0,0,0,renderer)){
		pixelarray = mandelbrotset.pointarray;
	}
	drawn = true;
}



