var xx = argument[0];
var yy = argument[1];
var blockType = argument[2];

var xp = x;
var yp = y;

x = xx;
y = yy;


var chunkTop = bbox_top - (bbox_top % (chunkSize*blockSize));
var chunkBottom =bbox_bottom - (bbox_bottom % (chunkSize*blockSize));
var chunkLeft = bbox_left - (bbox_left % (chunkSize*blockSize));
var chunkRight = bbox_right - (bbox_right % (chunkSize*blockSize));
var gridTop =(bbox_top - chunkTop)div blockSize;
var gridBottom = (bbox_bottom - chunkBottom)div blockSize;
var gridLeft = (bbox_left - chunkLeft)div blockSize;
var gridRight = (bbox_right - chunkRight)div blockSize;

var x_meeting = (ds_map_find_value(chunkLoadedSet,getKey(chunkRight,chunkTop)).grid[gridRight,gridTop]=blockType)||
                (ds_map_find_value(chunkLoadedSet,getKey(chunkLeft,chunkTop)).grid[gridLeft,gridTop]=blockType);
                
var y_meeting = (ds_map_find_value(chunkLoadedSet,getKey(chunkRight,chunkBottom)).grid[gridRight,gridBottom]=blockType)||
                (ds_map_find_value(chunkLoadedSet,getKey(chunkLeft,chunkBottom)).grid[gridLeft,gridBottom]=blockType);
                
x = xp;
y = yp;

return x_meeting || y_meeting;
