.class public Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;
.super Ljava/lang/Object;
.source "ArchiveFileFactory.java"


# static fields
.field static extensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/osmdroid/tileprovider/modules/IArchiveFile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    .line 17
    sget-object v0, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    const-string v1, "zip"

    const-class v2, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 19
    sget-object v0, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    const-string v1, "sqlite"

    const-class v2, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    const-string v1, "mbtiles"

    const-class v2, Lorg/osmdroid/tileprovider/modules/MBTilesFileArchive;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    const-string v1, "gemf"

    const-class v2, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArchiveFile(Ljava/io/File;)Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    .locals 7
    .param p0, "pFile"    # Ljava/io/File;

    .prologue
    .line 53
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "extension":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    :try_start_0
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 61
    :cond_0
    :goto_0
    sget-object v4, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 62
    .local v0, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/osmdroid/tileprovider/modules/IArchiveFile;>;"
    if-eqz v0, :cond_1

    .line 64
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    .line 65
    .local v3, "provider":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    invoke-interface {v3, p0}, Lorg/osmdroid/tileprovider/modules/IArchiveFile;->init(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 77
    .end local v3    # "provider":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    :goto_1
    return-object v3

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v4, "OsmDroid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error initializing archive file provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :cond_1
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    .line 69
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "OsmDroid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error initializing archive file provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 71
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "OsmDroid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error opening archive file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 57
    .end local v0    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/osmdroid/tileprovider/modules/IArchiveFile;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public static getRegisteredExtensions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 86
    .local v0, "r":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 87
    return-object v0
.end method

.method public static isFileExtensionRegistered(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-object v0, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static registerArchiveFileProvider(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileExtension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/osmdroid/tileprovider/modules/IArchiveFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "provider":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/osmdroid/tileprovider/modules/IArchiveFile;>;"
    sget-object v0, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method
