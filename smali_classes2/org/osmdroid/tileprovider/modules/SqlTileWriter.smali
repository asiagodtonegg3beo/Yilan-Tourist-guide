.class public Lorg/osmdroid/tileprovider/modules/SqlTileWriter;
.super Ljava/lang/Object;
.source "SqlTileWriter.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/IFilesystemCache;


# static fields
.field public static CLEANUP_ON_START:Z = false

.field public static final COLUMN_EXPIRES:Ljava/lang/String; = "expires"

.field public static final DATABASE_FILENAME:Ljava/lang/String; = "cache.db"

.field private static final expireQueryColumn:[Ljava/lang/String;

.field static hasInited:Z = false

.field private static final primaryKey:Ljava/lang/String; = "key=? and provider=?"

.field private static final queryColumns:[Ljava/lang/String;


# instance fields
.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field protected db_file:Ljava/io/File;

.field protected lastSizeCheck:J

.field tileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    sput-boolean v3, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->CLEANUP_ON_START:Z

    .line 67
    sput-boolean v2, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->hasInited:Z

    .line 594
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "tile"

    aput-object v1, v0, v2

    const-string v1, "expires"

    aput-object v1, v0, v3

    sput-object v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->queryColumns:[Ljava/lang/String;

    .line 600
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "expires"

    aput-object v1, v0, v2

    sput-object v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->expireQueryColumn:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide v2, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->lastSizeCheck:J

    .line 66
    iput-wide v2, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->tileSize:J

    .line 71
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 72
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cache.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    .line 76
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CREATE TABLE IF NOT EXISTS tiles (key INTEGER , provider TEXT, tile BLOB, expires INTEGER, PRIMARY KEY (key, provider));"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    sget-boolean v2, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->hasInited:Z

    if-nez v2, :cond_0

    .line 82
    sput-boolean v5, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->hasInited:Z

    .line 84
    sget-boolean v2, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->CLEANUP_ON_START:Z

    if-eqz v2, :cond_0

    .line 86
    new-instance v1, Lorg/osmdroid/tileprovider/modules/SqlTileWriter$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter$1;-><init>(Lorg/osmdroid/tileprovider/modules/SqlTileWriter;)V

    .line 92
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 93
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 96
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "OsmDroid"

    const-string v3, "Unable to start the sqlite tile writer. Check external storage availability."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getIndex(JJJ)J
    .locals 4
    .param p0, "pX"    # J
    .param p2, "pY"    # J
    .param p4, "pZ"    # J

    .prologue
    .line 516
    long-to-int v0, p4

    shl-long v0, p4, v0

    add-long/2addr v0, p0

    long-to-int v2, p4

    shl-long/2addr v0, v2

    add-long/2addr v0, p2

    return-wide v0
.end method

.method public static getIndex(Lorg/osmdroid/tileprovider/MapTile;)J
    .locals 6
    .param p0, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 527
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTile;->getX()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTile;->getY()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPrimaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    const-string v0, "key=? and provider=?"

    return-object v0
.end method

.method public static getPrimaryKeyParameters(JLjava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "pIndex"    # J
    .param p2, "pTileSourceInfo"    # Ljava/lang/String;

    .prologue
    .line 576
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    return-object v0
.end method

.method public static getPrimaryKeyParameters(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)[Ljava/lang/String;
    .locals 2
    .param p0, "pIndex"    # J
    .param p2, "pTileSourceInfo"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 565
    invoke-interface {p2}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public exists(Ljava/lang/String;Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 8
    .param p1, "pTileSource"    # Ljava/lang/String;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    const/4 v4, 0x0

    .line 216
    iget-object v5, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-nez v5, :cond_1

    .line 217
    :cond_0
    const-string v5, "OsmDroid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to test for tile exists cached tile from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", database not available."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return v4

    .line 221
    :cond_1
    :try_start_0
    invoke-static {p2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(Lorg/osmdroid/tileprovider/MapTile;)J

    move-result-wide v2

    .line 222
    .local v2, "index":J
    invoke-static {v2, v3, p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLjava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->expireQueryColumn:[Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getTileCursor([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 224
    .local v0, "cur":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 226
    const/4 v4, 0x1

    goto :goto_0

    .line 228
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v0    # "cur":Landroid/database/Cursor;
    .end local v2    # "index":J
    :catch_0
    move-exception v1

    .line 230
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v5, "OsmDroid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to store cached tile from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 246
    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->exists(Ljava/lang/String;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v0

    return v0
.end method

.method public getExpirationTimestamp(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Ljava/lang/Long;
    .locals 4
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(Lorg/osmdroid/tileprovider/MapTile;)J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->expireQueryColumn:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getTileCursor([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 535
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 541
    if-eqz v0, :cond_0

    .line 542
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 545
    :cond_0
    :goto_0
    return-object v2

    .line 541
    :cond_1
    if-eqz v0, :cond_2

    .line 542
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 545
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v1

    .line 539
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "OsmDroid"

    const-string v3, "error getting expiration date from the tile cache"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    if-eqz v0, :cond_2

    .line 542
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 541
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 542
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public getFirstExpiry()J
    .locals 7

    .prologue
    .line 496
    :try_start_0
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "select min(expires) from tiles"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 497
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 498
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 499
    .local v2, "time":J
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "time":J
    :goto_0
    return-wide v2

    .line 501
    :catch_0
    move-exception v1

    .line 502
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v4, "OsmDroid"

    const-string v5, "Unable to query for oldest tile"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 504
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getRowCount(Ljava/lang/String;)J
    .locals 7
    .param p1, "tileSourceName"    # Ljava/lang/String;

    .prologue
    .line 468
    const/4 v3, 0x0

    .line 469
    .local v3, "mCount":Landroid/database/Cursor;
    if-nez p1, :cond_0

    .line 470
    :try_start_0
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "select count(*) from tiles"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 473
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 474
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 475
    .local v0, "count":J
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 480
    .end local v0    # "count":J
    :goto_1
    return-wide v0

    .line 472
    :cond_0
    iget-object v4, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select count(*) from tiles where provider=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 477
    :catch_0
    move-exception v2

    .line 478
    .local v2, "ex":Ljava/lang/Throwable;
    const-string v4, "OsmDroid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to query for row count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTileCursor([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "pPrimaryKeyParameters"    # [Ljava/lang/String;
    .param p2, "pColumns"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 587
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tiles"

    const-string v3, "key=? and provider=?"

    move-object v2, p2

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public importFromFileCache(Z)[I
    .locals 36
    .param p1, "removeFromFileSystem"    # Z

    .prologue
    .line 308
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    .line 313
    .local v22, "ret":[I
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/osmdroid/config/IConfigurationProvider;->getOsmdroidTileCache()Ljava/io/File;

    move-result-object v23

    .line 314
    .local v23, "tilePathBase":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v31

    if-eqz v31, :cond_c

    .line 315
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v24

    .line 316
    .local v24, "tileSources":[Ljava/io/File;
    if-eqz v24, :cond_c

    .line 317
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    .line 318
    aget-object v31, v24, v16

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->isDirectory()Z

    move-result v31

    if-eqz v31, :cond_b

    aget-object v31, v24, v16

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->isHidden()Z

    move-result v31

    if-nez v31, :cond_b

    .line 320
    aget-object v31, v24, v16

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v29

    .line 321
    .local v29, "z":[Ljava/io/File;
    if-eqz v29, :cond_a

    .line 322
    const/16 v30, 0x0

    .local v30, "zz":I
    :goto_1
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    .line 323
    aget-object v31, v29, v30

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->isDirectory()Z

    move-result v31

    if-eqz v31, :cond_8

    aget-object v31, v29, v30

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->isHidden()Z

    move-result v31

    if-nez v31, :cond_8

    .line 324
    aget-object v31, v29, v30

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v25

    .line 325
    .local v25, "x":[Ljava/io/File;
    if-eqz v25, :cond_8

    .line 326
    const/16 v26, 0x0

    .local v26, "xx":I
    :goto_2
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v26

    move/from16 v1, v31

    if-ge v0, v1, :cond_8

    .line 327
    aget-object v31, v25, v26

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->isDirectory()Z

    move-result v31

    if-eqz v31, :cond_6

    aget-object v31, v25, v26

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->isHidden()Z

    move-result v31

    if-nez v31, :cond_6

    .line 328
    aget-object v31, v25, v26

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v27

    .line 329
    .local v27, "y":[Ljava/io/File;
    if-eqz v25, :cond_6

    .line 330
    const/16 v28, 0x0

    .local v28, "yy":I
    :goto_3
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    .line 331
    aget-object v31, v27, v28

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->isHidden()Z

    move-result v31

    if-nez v31, :cond_0

    aget-object v31, v27, v28

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->isDirectory()Z

    move-result v31

    if-nez v31, :cond_0

    .line 334
    :try_start_0
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 335
    .local v14, "cv":Landroid/content/ContentValues;
    aget-object v31, v25, v26

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 336
    .local v4, "x1":J
    aget-object v31, v27, v28

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    aget-object v33, v27, v28

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v33

    const-string v34, "."

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 337
    .local v6, "y1":J
    aget-object v31, v29, v30

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 338
    .local v8, "z1":J
    invoke-static/range {v4 .. v9}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(JJJ)J

    move-result-wide v18

    .line 339
    .local v18, "index":J
    const-string v31, "provider"

    aget-object v32, v24, v16

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    aget-object v31, v24, v16

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    new-instance v32, Lorg/osmdroid/tileprovider/MapTile;

    long-to-int v0, v8

    move/from16 v33, v0

    long-to-int v0, v4

    move/from16 v34, v0

    long-to-int v0, v6

    move/from16 v35, v0

    invoke-direct/range {v32 .. v35}, Lorg/osmdroid/tileprovider/MapTile;-><init>(III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->exists(Ljava/lang/String;Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v31

    if-nez v31, :cond_0

    .line 342
    new-instance v11, Ljava/io/BufferedInputStream;

    new-instance v31, Ljava/io/FileInputStream;

    aget-object v32, v27, v28

    invoke-direct/range {v31 .. v32}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v31

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 344
    .local v11, "bis":Ljava/io/BufferedInputStream;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v13, 0x0

    .line 347
    .local v13, "current":I
    :goto_4
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->read()I

    move-result v13

    const/16 v31, -0x1

    move/from16 v0, v31

    if-eq v13, v0, :cond_1

    .line 348
    int-to-byte v0, v13

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v31

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 378
    .end local v4    # "x1":J
    .end local v6    # "y1":J
    .end local v8    # "z1":J
    .end local v11    # "bis":Ljava/io/BufferedInputStream;
    .end local v13    # "current":I
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v18    # "index":J
    :catch_0
    move-exception v15

    .line 381
    .local v15, "ex":Ljava/lang/Throwable;
    const-string v32, "OsmDroid"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Unable to store cached tile from "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    aget-object v33, v24, v16

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v33, " db is "

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v31, v0

    if-nez v31, :cond_5

    const-string v31, "null"

    :goto_5
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    const/16 v31, 0x1

    aget v32, v22, v31

    add-int/lit8 v32, v32, 0x1

    aput v32, v22, v31

    .line 330
    .end local v15    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_6
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_3

    .line 351
    .restart local v4    # "x1":J
    .restart local v6    # "y1":J
    .restart local v8    # "z1":J
    .restart local v11    # "bis":Ljava/io/BufferedInputStream;
    .restart local v13    # "current":I
    .restart local v14    # "cv":Landroid/content/ContentValues;
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v18    # "index":J
    :cond_1
    :try_start_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    new-array v12, v0, [B

    .line 352
    .local v12, "bits":[B
    const/4 v10, 0x0

    .local v10, "bi":I
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v31

    move/from16 v0, v31

    if-ge v10, v0, :cond_2

    .line 353
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Byte;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Byte;->byteValue()B

    move-result v31

    aput-byte v31, v12, v10

    .line 352
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 355
    :cond_2
    const-string v31, "key"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 356
    const-string v31, "tile"

    move-object/from16 v0, v31

    invoke-virtual {v14, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v31, v0

    const-string v32, "tiles"

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v20

    .line 359
    .local v20, "insert":J
    const-wide/16 v32, 0x0

    cmp-long v31, v20, v32

    if-lez v31, :cond_4

    .line 360
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 361
    const-string v31, "OsmDroid"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "tile inserted "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    aget-object v33, v24, v16

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_3
    const/16 v31, 0x0

    aget v32, v22, v31

    add-int/lit8 v32, v32, 0x1

    aput v32, v22, v31
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 363
    if-eqz p1, :cond_0

    .line 365
    :try_start_2
    aget-object v31, v27, v28

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z

    .line 366
    const/16 v31, 0x2

    aget v32, v22, v31

    add-int/lit8 v32, v32, 0x1

    aput v32, v22, v31
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 368
    :catch_1
    move-exception v15

    .line 369
    .local v15, "ex":Ljava/lang/Exception;
    const/16 v31, 0x3

    :try_start_3
    aget v32, v22, v31

    add-int/lit8 v32, v32, 0x1

    aput v32, v22, v31

    goto/16 :goto_6

    .line 374
    .end local v15    # "ex":Ljava/lang/Exception;
    :cond_4
    const-string v31, "OsmDroid"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "tile NOT inserted "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    aget-object v33, v24, v16

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "/"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    .line 381
    .end local v4    # "x1":J
    .end local v6    # "y1":J
    .end local v8    # "z1":J
    .end local v10    # "bi":I
    .end local v11    # "bis":Ljava/io/BufferedInputStream;
    .end local v12    # "bits":[B
    .end local v13    # "current":I
    .end local v14    # "cv":Landroid/content/ContentValues;
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v18    # "index":J
    .end local v20    # "insert":J
    .local v15, "ex":Ljava/lang/Throwable;
    :cond_5
    const-string v31, "not null"

    goto/16 :goto_5

    .line 387
    .end local v15    # "ex":Ljava/lang/Throwable;
    .end local v27    # "y":[Ljava/io/File;
    .end local v28    # "yy":I
    :cond_6
    if-eqz p1, :cond_7

    .line 390
    :try_start_4
    aget-object v31, v25, v26

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 326
    :cond_7
    :goto_8
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_2

    .line 391
    :catch_2
    move-exception v15

    .line 392
    .local v15, "ex":Ljava/lang/Exception;
    const-string v31, "OsmDroid"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Unable to delete directory from "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    aget-object v33, v25, v26

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    const/16 v31, 0x3

    aget v32, v22, v31

    add-int/lit8 v32, v32, 0x1

    aput v32, v22, v31

    goto :goto_8

    .line 398
    .end local v15    # "ex":Ljava/lang/Exception;
    .end local v25    # "x":[Ljava/io/File;
    .end local v26    # "xx":I
    :cond_8
    if-eqz p1, :cond_9

    .line 401
    :try_start_5
    aget-object v31, v29, v30

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 322
    :cond_9
    :goto_9
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    .line 402
    :catch_3
    move-exception v15

    .line 403
    .restart local v15    # "ex":Ljava/lang/Exception;
    const-string v31, "OsmDroid"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Unable to delete directory from "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    aget-object v33, v29, v30

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    const/16 v31, 0x3

    aget v32, v22, v31

    add-int/lit8 v32, v32, 0x1

    aput v32, v22, v31

    goto :goto_9

    .line 410
    .end local v15    # "ex":Ljava/lang/Exception;
    .end local v30    # "zz":I
    :cond_a
    if-eqz p1, :cond_b

    .line 413
    :try_start_6
    aget-object v31, v24, v16

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 317
    .end local v29    # "z":[Ljava/io/File;
    :cond_b
    :goto_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 414
    .restart local v29    # "z":[Ljava/io/File;
    :catch_4
    move-exception v15

    .line 415
    .restart local v15    # "ex":Ljava/lang/Exception;
    const-string v31, "OsmDroid"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Unable to delete directory from "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    aget-object v33, v24, v16

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    const/16 v31, 0x3

    aget v32, v22, v31

    add-int/lit8 v32, v32, 0x1

    aput v32, v22, v31

    goto :goto_a

    .line 427
    .end local v15    # "ex":Ljava/lang/Exception;
    .end local v16    # "i":I
    .end local v24    # "tileSources":[Ljava/io/File;
    .end local v29    # "z":[Ljava/io/File;
    :cond_c
    return-object v22

    .line 308
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public loadTile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 604
    const/4 v10, 0x0

    .line 606
    .local v10, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static/range {p2 .. p2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(Lorg/osmdroid/tileprovider/MapTile;)J

    move-result-wide v8

    .line 607
    .local v8, "index":J
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)[Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->queryColumns:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getTileCursor([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 608
    .local v3, "cur":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 609
    .local v2, "bits":[B
    const-wide/16 v6, 0x0

    .line 611
    .local v6, "expirationTimestamp":J
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-eqz v14, :cond_0

    .line 612
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 613
    const-string v14, "tile"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 614
    const-string v14, "expires"

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 616
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 617
    if-nez v2, :cond_3

    .line 618
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v14

    invoke-interface {v14}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 619
    const-string v14, "OsmDroid"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SqlCache - Tile doesn\'t exist: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    :cond_1
    const/4 v4, 0x0

    .line 637
    if-eqz v10, :cond_2

    .line 638
    invoke-static {v10}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    .line 635
    :cond_2
    :goto_0
    return-object v4

    .line 623
    :cond_3
    :try_start_1
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .local v11, "inputStream":Ljava/io/InputStream;
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getDrawable(Ljava/io/InputStream;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 626
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 627
    .local v12, "now":J
    cmp-long v14, v6, v12

    if-gez v14, :cond_7

    const/4 v5, 0x1

    .line 629
    .local v5, "fileExpired":Z
    :goto_1
    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    .line 630
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v14

    invoke-interface {v14}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 631
    const-string v14, "OsmDroid"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Tile expired: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_4
    const/4 v14, -0x2

    invoke-static {v4, v14}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->setState(Landroid/graphics/drawable/Drawable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 637
    :cond_5
    if-eqz v11, :cond_6

    .line 638
    invoke-static {v11}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_6
    move-object v10, v11

    .line 635
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 627
    .end local v5    # "fileExpired":Z
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 637
    .end local v2    # "bits":[B
    .end local v3    # "cur":Landroid/database/Cursor;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "expirationTimestamp":J
    .end local v8    # "index":J
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "now":J
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v14

    :goto_2
    if-eqz v10, :cond_8

    .line 638
    invoke-static {v10}, Lorg/osmdroid/tileprovider/util/StreamUtils;->closeStream(Ljava/io/Closeable;)V

    :cond_8
    throw v14

    .line 637
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "bits":[B
    .restart local v3    # "cur":Landroid/database/Cursor;
    .restart local v6    # "expirationTimestamp":J
    .restart local v8    # "index":J
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v14

    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public onDetach()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 251
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 254
    const-string v1, "OsmDroid"

    const-string v2, "Database detached"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    iput-object v3, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 260
    iput-object v3, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    .line 261
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "OsmDroid"

    const-string v2, "Database detach failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public purgeCache()Z
    .locals 5

    .prologue
    .line 270
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tiles"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    const/4 v1, 0x1

    .line 278
    :goto_0
    return v1

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "OsmDroid"

    const-string v2, "Error purging the db"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public purgeCache(Ljava/lang/String;)Z
    .locals 8
    .param p1, "mTileSourceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 288
    iget-object v3, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    :try_start_0
    iget-object v3, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "tiles"

    const-string v5, "provider = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return v1

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "OsmDroid"

    const-string v3, "Error purging the db"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    move v1, v2

    .line 296
    goto :goto_0
.end method

.method public remove(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;)Z
    .locals 8
    .param p1, "pTileSourceInfo"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;

    .prologue
    const/4 v4, 0x0

    .line 441
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    .line 442
    const-string v1, "OsmDroid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete cached tile from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", database not available."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    sget v1, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    move v1, v4

    .line 456
    :goto_0
    return v1

    .line 447
    :cond_0
    :try_start_0
    invoke-static {p2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(Lorg/osmdroid/tileprovider/MapTile;)J

    move-result-wide v2

    .line 448
    .local v2, "index":J
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tiles"

    const-string v6, "key=? and provider=?"

    invoke-static {v2, v3, p1}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    const/4 v1, 0x1

    goto :goto_0

    .line 450
    .end local v2    # "index":J
    :catch_0
    move-exception v0

    .line 453
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v5, "OsmDroid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete cached tile from "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " db is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    sget v1, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    move v1, v4

    .line 456
    goto :goto_0

    .line 453
    :cond_1
    const-string v1, "not null"

    goto :goto_1
.end method

.method public runCleanupOperation()V
    .locals 14

    .prologue
    .line 105
    iget-object v10, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_1

    .line 106
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v10

    invoke-interface {v10}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 107
    const-string v10, "OsmDroid"

    const-string v11, "Finished init thread, aborted due to null database reference"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    :try_start_0
    iget-object v10, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v12

    invoke-interface {v12}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 125
    .local v6, "now":J
    const-string v10, "OsmDroid"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Local cache is now "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " max size is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v12

    invoke-interface {v12}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v10, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v12

    invoke-interface {v12}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheTrimBytes()J

    move-result-wide v12

    sub-long v2, v10, v12

    .line 127
    .local v2, "diff":J
    iget-wide v10, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->tileSize:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_2

    .line 128
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getRowCount(Ljava/lang/String;)J

    move-result-wide v0

    .line 129
    .local v0, "count":J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-lez v10, :cond_5

    iget-object v10, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    div-long/2addr v10, v0

    :goto_1
    iput-wide v10, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->tileSize:J

    .line 130
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v10

    invoke-interface {v10}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 131
    const-string v10, "OsmDroid"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Number of cached tiles is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mean size is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->tileSize:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v0    # "count":J
    :cond_2
    iget-wide v10, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->tileSize:J

    div-long v8, v2, v10

    .line 135
    .local v8, "tilesToKill":J
    const-string v10, "OsmDroid"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Local cache purging "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " tiles."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    .line 138
    :try_start_1
    iget-object v10, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DELETE FROM tiles WHERE key in (SELECT key FROM tiles ORDER BY expires DESC LIMIT "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    :cond_3
    :goto_2
    :try_start_2
    const-string v10, "OsmDroid"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "purge completed in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms, cache size is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 150
    .end local v2    # "diff":J
    .end local v6    # "now":J
    .end local v8    # "tilesToKill":J
    :cond_4
    :goto_3
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v10

    invoke-interface {v10}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 151
    const-string v10, "OsmDroid"

    const-string v11, "Finished init thread"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 129
    .restart local v0    # "count":J
    .restart local v2    # "diff":J
    .restart local v6    # "now":J
    :cond_5
    const-wide/16 v10, 0xfa0

    goto/16 :goto_1

    .line 139
    .end local v0    # "count":J
    .restart local v8    # "tilesToKill":J
    :catch_0
    move-exception v5

    .line 140
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v10, "OsmDroid"

    const-string v11, "error purging tiles from the tile cache"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 144
    .end local v2    # "diff":J
    .end local v5    # "t":Ljava/lang/Throwable;
    .end local v6    # "now":J
    .end local v8    # "tilesToKill":J
    :catch_1
    move-exception v4

    .line 145
    .local v4, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v10

    invoke-interface {v10}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 146
    const-string v10, "OsmDroid"

    const-string v11, "SqliteTileWriter init thread crash, db is probably not available"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/MapTile;Ljava/io/InputStream;)Z
    .locals 18
    .param p1, "pTileSourceInfo"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pTile"    # Lorg/osmdroid/tileprovider/MapTile;
    .param p3, "pStream"    # Ljava/io/InputStream;

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v11

    if-nez v11, :cond_1

    .line 158
    :cond_0
    const-string v11, "OsmDroid"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to store cached tile from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", database not available."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget v11, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    .line 160
    const/4 v11, 0x0

    .line 204
    :goto_0
    return v11

    .line 163
    :cond_1
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 164
    .local v5, "cv":Landroid/content/ContentValues;
    invoke-static/range {p2 .. p2}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getIndex(Lorg/osmdroid/tileprovider/MapTile;)J

    move-result-wide v8

    .line 165
    .local v8, "index":J
    const-string v11, "provider"

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    .local v2, "bis":Ljava/io/BufferedInputStream;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v4, 0x0

    .line 171
    .local v4, "current":I
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    const/4 v11, -0x1

    if-eq v4, v11, :cond_3

    .line 172
    int-to-byte v11, v4

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 194
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v4    # "current":I
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v8    # "index":J
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :catch_0
    move-exception v6

    .line 197
    .local v6, "ex":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->runCleanupOperation()V

    .line 204
    .end local v6    # "ex":Landroid/database/sqlite/SQLiteFullException;
    :cond_2
    :goto_2
    const/4 v11, 0x0

    goto :goto_0

    .line 175
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "current":I
    .restart local v5    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "index":J
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_3
    :try_start_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v3, v11, [B

    .line 176
    .local v3, "bits":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_4

    .line 177
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    aput-byte v11, v3, v7

    .line 176
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 179
    :cond_4
    const-string v11, "key"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    const-string v11, "tile"

    invoke-virtual {v5, v11, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/tileprovider/MapTile;->getExpires()Ljava/util/Date;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 183
    const-string v11, "expires"

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/tileprovider/MapTile;->getExpires()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "tiles"

    const-string v13, "key=? and provider=?"

    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->getPrimaryKeyParameters(JLorg/osmdroid/tileprovider/tilesource/ITileSource;)[Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "tiles"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 186
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v11

    invoke-interface {v11}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 187
    const-string v11, "OsmDroid"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tile inserted "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->lastSizeCheck:J

    const-wide/32 v16, 0x493e0

    add-long v14, v14, v16

    cmp-long v11, v12, v14

    if-lez v11, :cond_2

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->lastSizeCheck:J

    .line 190
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db_file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v11

    invoke-interface {v11}, Lorg/osmdroid/config/IConfigurationProvider;->getTileFileSystemCacheMaxBytes()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-lez v11, :cond_2

    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->runCleanupOperation()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 198
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "bits":[B
    .end local v4    # "current":I
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v7    # "i":I
    .end local v8    # "index":J
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :catch_1
    move-exception v6

    .line 201
    .local v6, "ex":Ljava/lang/Throwable;
    const-string v12, "OsmDroid"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to store cached tile from "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/tileprovider/MapTile;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, " db is "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v11, :cond_7

    const-string v11, "null"

    :goto_4
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    sget v11, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    add-int/lit8 v11, v11, 0x1

    sput v11, Lorg/osmdroid/tileprovider/util/Counters;->fileCacheSaveErrors:I

    goto/16 :goto_2

    .line 201
    :cond_7
    const-string v11, "not null"

    goto :goto_4
.end method
