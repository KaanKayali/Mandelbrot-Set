/// @description Insert description here
// You can write your code in this editor
if(array_length(pixelarray) != 0) && (!vertexonce) && (!vertexcreateonce){

	vertex_begin(vbuff, format);

	for(var i = 0; i < array_length(pixelarray); i++){
		//Coordinates
		var cord1 = [pixelarray[i][0],pixelarray[i][1]];
		var cord2 = [cord1[0] + width, cord1[1] + height];
	
		//Texture coordinates
		var frame = irandom(frames - 1);
		var uvs = sprite_get_uvs(pix, frame);
		var color = pixelarray[i][2];
	
		//Triangle 1
		vertex_position(vbuff, cord1[0], cord1[1]);
		vertex_texcoord(vbuff, uvs[0], uvs[1]);
		vertex_color(vbuff, color, alpha);
	 
		vertex_position(vbuff, cord2[0], cord2[1]);
		vertex_texcoord(vbuff, uvs[2], uvs[1]);
		vertex_color(vbuff, color, alpha);
	
		vertex_position(vbuff, cord1[0], cord2[1]);
		vertex_texcoord(vbuff, uvs[0], uvs[3]);
		vertex_color(vbuff, color, alpha);
	
		//Triangle 2
		vertex_position(vbuff, cord2[0], cord1[1]);
		vertex_texcoord(vbuff, uvs[2], uvs[1]);
		vertex_color(vbuff, color, alpha);
	 
		vertex_position(vbuff, cord1[0], cord2[1]);
		vertex_texcoord(vbuff, uvs[0], uvs[3]);
		vertex_color(vbuff, color, alpha);
	
		vertex_position(vbuff, cord2[0], cord2[1]);
		vertex_texcoord(vbuff, uvs[2], uvs[3]);
		vertex_color(vbuff, color, alpha);
	
	}
	
	vertex_end(vbuff);
	vertex_freeze(vbuff);
	vertexcreateonce = true;
}





