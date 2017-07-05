var deltaX = argument[0];
var deltaY = argument[1];
//change this latter to cheak for any colision wanted
var block = 1;

if(chunkCC(x+deltaX,y,block)){
    while(!chunkCC(x+sign(deltaX),y,block)){
        x+=sign(deltaX);
    }
    deltaX =0;
}
x+=deltaX;

if(chunkCC(x,y+deltaY,block)){
    while(!chunkCC(x,y+sign(deltaY),block)){
        y+=sign(deltaY);
    }
    deltaY = 0;
}
y+=deltaY;
