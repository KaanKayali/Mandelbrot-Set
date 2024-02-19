/// @description Insert description here
//Variables
pix = pixel;
frames = 1;
texture = sprite_get_texture(pix, 0);

width = 1;
height = 1;

alpha = 1;

pixelarray = [];

vertexonce = false;
vertexcreateonce = false;

//Vertex format
vertex_format_begin();

vertex_format_add_position();
vertex_format_add_texcoord();
vertex_format_add_color();

format = vertex_format_end();

//Vertex buffer
vbuff = vertex_create_buffer();









