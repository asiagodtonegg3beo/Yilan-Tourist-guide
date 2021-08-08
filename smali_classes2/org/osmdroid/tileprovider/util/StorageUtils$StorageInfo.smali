.class public Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/util/StorageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageInfo"
.end annotation


# instance fields
.field displayName:Ljava/lang/String;

.field public final display_number:I

.field public freeSpace:J

.field public final internal:Z

.field public final path:Ljava/lang/String;

.field public readonly:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "internal"    # Z
    .param p3, "readonly"    # Z
    .param p4, "display_number"    # I

    .prologue
    const/4 v6, 0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    .line 48
    const-string v3, ""

    iput-object v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    .line 52
    iput-boolean p2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->internal:Z

    .line 54
    iput p4, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->display_number:I

    .line 55
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 56
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    .line 58
    :cond_0
    if-nez p3, :cond_2

    .line 60
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 64
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v2, "res":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_3

    .line 73
    const-string v3, "Internal SD card"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :goto_1
    if-eqz p3, :cond_1

    .line 80
    const-string v3, " (Read only)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    .line 83
    return-void

    .line 65
    .end local v2    # "res":Ljava/lang/StringBuilder;
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Throwable;
    iput-boolean v6, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    iput-boolean p3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z

    goto :goto_0

    .line 74
    .restart local v2    # "res":Ljava/lang/StringBuilder;
    :cond_3
    if-le p4, v6, :cond_4

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SD card "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 77
    :cond_4
    const-string v3, "SD card"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    .line 91
    return-void
.end method
