

INSERT INTO Terrain_YieldChanges Values('TERRAIN_GRASS','YIELD_PRODUCTION',1);

INSERT INTO Terrain_YieldChanges Values('TERRAIN_TUNDRA','YIELD_PRODUCTION',1);

INSERT INTO Terrain_YieldChanges Values('TERRAIN_COAST','YIELD_PRODUCTION',1);

INSERT INTO Terrain_YieldChanges Values('TERRAIN_OCEAN','YIELD_PRODUCTION',1);

INSERT INTO Terrain_YieldChanges Values('TERRAIN_SNOW','YIELD_PRODUCTION',1);

INSERT INTO Terrain_YieldChanges Values('TERRAIN_DESERT','YIELD_PRODUCTION',1);

UPDATE Terrain_YieldChanges SET YieldChange=2 WHERE TerrainType='TERRAIN_PLAINS' and YieldType='YIELD_PRODUCTION';


