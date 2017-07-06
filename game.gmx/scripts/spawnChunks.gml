var px = obj_Player.x;
var py = obj_Player.y;

px -= px % chunkSize;
py -= py % chunkSize;

var chunkRadius = chunkSize * ceil(spawnRadius/chunkSize);
    
for(var i = px - chunkRadius; i <= px + chunkRadius; i+= chunkSize){
    for(var j = py - chunkRadius; j <= py + chunkRadius; j+= chunkSize){
        if(!chunkLoaded(i,j) && inSpawnRange(i+chunkSize/2,j+chunkSize/2)){
            instance_create(i,j,obj_Chunk);
        } 
    }
}
    

