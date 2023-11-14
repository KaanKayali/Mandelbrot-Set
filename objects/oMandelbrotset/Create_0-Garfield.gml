/// @description Insert description here
//Mandelbrot set

width = 1280;
height = 720;

actualwidth = 4;
actualheight = 4;

for(var a = 0; a < width; a++){
	for(var b = 0; b < height; b++){

        
		var xa = actualwidth/(width/a) - actualwidth/2
		var xb = actualheight/(height/b) - actualheight/2

        var ca = xa;
		var cb = xb;
		
		for(var n = 0; n < 100; n++){
			aa = power(a,2) - power(b,2);
			bb = 2 * a * b;
			xa = aa + ca;
			xb = bb + cb;
			if(a+b > 16){
				break;
			}
		}
		
		with(instance_create_layer(a,b,layer,oPixel)){
			var rgb = 255/(100/n);
            image_blend = make_colour_rgb(rgb, rgb, rgb);
        }
	}

}





