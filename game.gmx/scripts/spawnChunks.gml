var px = obj_Player.x;
var py = obj_Player.y;

px -= px % (chunkSize*blockSize);
py -= py % (chunkSize*blockSize);

var chunkRadius = chunkSize*blockSize * ceil(spawnRadius/(chunkSize*blockSize));
    
for(var i = px - chunkRadius; i <= px + chunkRadius; i+= chunkSize*blockSize){
    for(var j = py - chunkRadius; j <= py + chunkRadius; j+= chunkSize*blockSize){
        if(!chunkLoaded(i,j) && inSpawnRange(i+chunkSize*blockSize/2,j+chunkSize*blockSize/2)){
            instance_create(i,j,obj_Chunk);
        } 
    }
}
    

