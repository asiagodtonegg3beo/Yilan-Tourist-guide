.class public Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;
.super Ljava/lang/Object;
.source "SqliteArchiveTileWriter.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/IFilesystemCache;


# static fields
.field static hasInited:Z

.field private static final queryColumns:[Ljava/lang/String;


# instance fields
.field final db:Landroid/database/sqlite/SQLiteDatabase;

.field final db_file:Ljava/io/File;

.field final questimate:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    sput-boolean v2, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->hasInited:Z

    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tile"

    aput-object v1, v0, v2

    sput-object v0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->queryColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "outputFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v2, 0x1f40

    iput v2, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->questimate:I

    .line 45
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->db_file:Ljava/io/File;

    .line 47
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->db_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CREATE TABLE IF NOT EXISTS tiles (key INTEGER , provider TEXT, tile BLOB, PRIMARY KEY (key, provider));"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trouble creating database file at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 54
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 55
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    const-string v2, "OsmDroid"

    const-string v3, "error setting db schema, it probably exists already"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 9
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    const/4 v5, 0x0

    .line 94
    :try_start_0
    invoke-static {p2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(Lorg/osmdroid/tileprovider/MapTile;)J

    move-result-wide v2

    .line 95
    .local v2, "index":J
    invoke-static {v2, v3, p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->getTileCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 97
    .local v0, "cur":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    .line 98
    .local v4, "result":Z
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "cur":Landroid/database/Cursor;
    .end local v2    # "index":J
    .end local v4    # "result":Z
    :goto_1
    return v4

    .restart local v0    # "cur":Landroid/database/Cursor;
    .restart local v2    # "index":J
    :cond_0
    move v4, v5

    .line 97
    goto :goto_0

    .line 100
    .end local v0    # "cur":Landroid/database/Cursor;
    .end local v2    # "index":J
    :catch_0
    move-exception v1

    .line 101
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v6, "OsmDroid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to store cached tile from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v5

    .line 103
    goto :goto_1
.end method

.method public getExpirationTimestamp(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/Long;
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTileCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "pPrimaryKeyParameters"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 136
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tiles"

    sget-object v2, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->queryColumns:[Ljava/lang/String;

    invoke-static {}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKey()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public loadTile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v4, 0x0

    .line 150
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(Lorg/osmdroid/tileprovider/MapTile;)J

    move-result-wide v2

    .line 151
    .local v2, "index":J
    invoke-static {v2, v3, p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->getTileCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 152
    .local v1, "cur":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 154
    .local v0, "bits":[B
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_0

    .line 155
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    const-string v6, "tile"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 158
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    if-nez v0, :cond_3

    .line 160
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    const-string v6, "OsmDroid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SqlCache - Tile doesn\'t exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    const/4 v6, 0x0

    .line 168
    if-eqz v4, :cond_2

    .line 169
    invoke-static {v4}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 166
    :cond_2
    :goto_0
    return-object v6

    .line 165
    :cond_3
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_2
    invoke-interface {p1, v5}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 168
    if-eqz v5, :cond_4

    .line 169
    invoke-static {v5}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_4
    move-object v4, v5

    .line 166
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 168
    .end local v0    # "bits":[B
    .end local v1    # "cur":Landroid/database/Cursor;
    .end local v2    # "index":J
    :catchall_0
    move-exception v6

    :goto_1
    if-eqz v4, :cond_5

    .line 169
    invoke-static {v4}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_5
    throw v6

    .line 168
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "bits":[B
    .restart local v1    # "cur":Landroid/database/Cursor;
    .restart local v2    # "index":J
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 110
    :cond_0
    return-void
.end method

.method public remove(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 1
    .param p1, "tileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "tile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;Ljava/io/InputStream;)Z
    .locals 12
    .param p1, "pTileSourceInfo"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p3, "pStream"    # Ljava/io/InputStream;

    .prologue
    .line 64
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-static {p2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(Lorg/osmdroid/tileprovider/MapTile;)J

    move-result-wide v6

    .line 66
    .local v6, "index":J
    const-string v9, "provider"

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .line 72
    .local v2, "current":I
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_1

    .line 73
    int-to-byte v9, v2

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "current":I
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v6    # "index":J
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :catch_0
    move-exception v4

    .line 85
    .local v4, "ex":Ljava/lang/Throwable;
    const-string v9, "OsmDroid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to store cached tile from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    const/4 v9, 0x0

    return v9

    .line 76
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "current":I
    .restart local v3    # "cv":Landroid/content/ContentValues;
    .restart local v6    # "index":J
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_1
    :try_start_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v1, v9, [B

    .line 77
    .local v1, "bits":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    aput-byte v9, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 78
    :cond_2
    const-string v9, "key"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    const-string v9, "tile"

    invoke-virtual {v3, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 81
    iget-object v9, p0, Lorg/osmdroid/tileprovider/modules/SqliteArchiveTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "tiles"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 82
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v9

    invoke-interface {v9}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 83
    const-string v9, "OsmDroid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tile inserted "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
