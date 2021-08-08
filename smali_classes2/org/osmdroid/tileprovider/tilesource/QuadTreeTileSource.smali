.class public Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.source "QuadTreeTileSource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;
    .param p2, "aZoomMinLevel"    # I
    .param p3, "aZoomMaxLevel"    # I
    .param p4, "aTileSizePixels"    # I
    .param p5, "aImageFilenameEnding"    # Ljava/lang/String;
    .param p6, "aBaseUrl"    # [Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getTileURLString(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;
    .locals 2
    .param p1, "aTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;->quadTree(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/QuadTreeTileSource;->mImageFilenameEnding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected quadTree(Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/String;
    .locals 6
    .param p1, "aTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v3, "quadKey":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_2

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "digit":I
    const/4 v4, 0x1

    add-int/lit8 v5, v1, -0x1

    shl-int v2, v4, v5

    .line 31
    .local v2, "mask":I
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_0

    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_1

    .line 34
    add-int/lit8 v0, v0, 0x2

    .line 35
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 38
    .end local v0    # "digit":I
    .end local v2    # "mask":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
