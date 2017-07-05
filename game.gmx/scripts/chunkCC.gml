var xx = argument[0];
var yy = argument[1];
var blockType = argument[2];

var xp = x;
var yp = y;

x = xx;
y = yy;

var chunkTop = bbox_top div (chunkSize*blockSize);
var chunkBottom = bbox_bottom div (chunkSize*blockSize);
var chunkLeft = bbox_left div (chunkSize*blockSize);
var chunkRight = bbox_right div (chunkSize*blockSize);
var gridTop = (bbox_top - chunkTop*chunkSize*blockSize)div blockSize;
var gridBottom = (bbox_bottom - chunkBottom*chunkSize*blockSize)div blockSize;
var gridLeft = (bbox_left - chunkLeft*chunkSize*blockSize)div blockSize;
var gridRight = (bbox_right - chunkRight*chunkSize*blockSize)div blockSize;

var x_meeting = (ds_map_find_value(chunkId,string(chunkRight)+","+string(chunkTop)).testGrid[gridRight,gridTop]=blockType)||
                (ds_map_find_value(chunkId,string(chunkLeft)+","+string(chunkTop)).testGrid[gridLeft,gridTop]=blockType);
                
var y_meeting = (ds_map_find_value(chunkId,string(chunkRight)+","+string(chunkBottom)).testGrid[gridRight,gridBottom]=blockType)||
                (ds_map_find_value(chunkId,string(chunkLeft)+","+string(chunkBottom)).testGrid[gridLeft,gridBottom]=blockType);
                
x = xp;
y = yp;

return x_meeting || y_meeting;
