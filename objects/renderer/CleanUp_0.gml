/// @description Insert description here
//Clean vertex
if(array_length(pixelarray) != 0) && (!vertexonce){
	vertex_delete_buffer(vbuff);
	vertex_format_delete(format);
	vertexonce = true;
}






