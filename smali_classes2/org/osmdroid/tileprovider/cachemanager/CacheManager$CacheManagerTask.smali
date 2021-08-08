.class public Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
.super Landroid/os/AsyncTask;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheManagerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

.field private final mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mZoomMax:I

.field private final mZoomMin:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/ArrayList;II)V
    .locals 6
    .param p1, "pManager"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
    .param p2, "pAction"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
    .param p4, "pZoomMin"    # I
    .param p5, "pZoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager;",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 710
    .local p3, "pGeoPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    invoke-static {p3, p4, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Ljava/util/ArrayList;II)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/List;II)V

    .line 711
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/List;II)V
    .locals 1
    .param p1, "pManager"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
    .param p2, "pAction"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
    .param p4, "pZoomMin"    # I
    .param p5, "pZoomMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager;",
            "Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/tileprovider/MapTile;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 699
    .local p3, "pTiles":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/MapTile;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    .line 700
    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    .line 701
    iput-object p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    .line 702
    iput-object p3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mTiles:Ljava/util/List;

    .line 703
    iget v0, p1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMinZoomLevel:I

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    .line 704
    iget v0, p1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mMaxZoomLevel:I

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    .line 705
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Lorg/osmdroid/util/BoundingBox;II)V
    .locals 6
    .param p1, "pManager"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
    .param p2, "pAction"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;
    .param p3, "pBB"    # Lorg/osmdroid/util/BoundingBox;
    .param p4, "pZoomMin"    # I
    .param p5, "pZoomMax"    # I

    .prologue
    .line 716
    invoke-static {p3, p4, p5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getTilesCoverage(Lorg/osmdroid/util/BoundingBox;II)Ljava/util/List;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;Ljava/util/List;II)V

    .line 717
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .prologue
    .line 689
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    return-object v0
.end method

.method private logFaultyCallback(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 740
    const-string v0, "OsmDroid"

    const-string v1, "Error caught processing cachemanager callback, your implementation is faulty"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    return-void
.end method


# virtual methods
.method public addCallback(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;)V
    .locals 1
    .param p1, "pCallback"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    .prologue
    .line 720
    if-eqz p1, :cond_0

    .line 721
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 778
    iget-object v4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    invoke-interface {v4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;->preCheck()Z

    move-result v4

    if-nez v4, :cond_0

    .line 779
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 801
    :goto_0
    return-object v4

    .line 782
    :cond_0
    const/4 v2, 0x0

    .line 783
    .local v2, "tileCounter":I
    const/4 v0, 0x0

    .line 785
    .local v0, "errors":I
    iget-object v4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mTiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/MapTile;

    .line 786
    .local v1, "tile":Lorg/osmdroid/tileprovider/MapTile;
    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v3

    .line 787
    .local v3, "zoom":I
    iget v5, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    if-lt v3, v5, :cond_2

    iget v5, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    if-gt v3, v5, :cond_2

    .line 788
    iget-object v5, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    invoke-interface {v5, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;->tileAction(Lorg/osmdroid/tileprovider/MapTile;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 789
    add-int/lit8 v0, v0, 0x1

    .line 792
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 793
    iget-object v5, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mAction:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;

    invoke-interface {v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerAction;->getProgressModulo()I

    move-result v5

    rem-int v5, v2, v5

    if-nez v5, :cond_1

    .line 794
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 795
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 797
    :cond_3
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTile;->getZoomLevel()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_1

    .line 801
    .end local v1    # "tile":Lorg/osmdroid/tileprovider/MapTile;
    .end local v3    # "zoom":I
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 689
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 758
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "specialCount"    # Ljava/lang/Integer;

    .prologue
    .line 762
    iget-object v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mManager:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->mPendingTasks:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 763
    iget-object v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    .line 765
    .local v0, "callback":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 766
    invoke-interface {v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->onTaskComplete()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 770
    :catch_0
    move-exception v1

    .line 771
    .local v1, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->logFaultyCallback(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 768
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->onTaskFailed(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 774
    .end local v0    # "callback":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 689
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 8

    .prologue
    .line 727
    iget-object v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mTiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 728
    .local v2, "total":I
    iget-object v3, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    .line 730
    .local v0, "callback":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    :try_start_0
    invoke-interface {v0, v2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->setPossibleTilesInArea(I)V

    .line 731
    invoke-interface {v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->downloadStarted()V

    .line 732
    const/4 v4, 0x0

    iget v5, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v6, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v7, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    invoke-interface {v0, v4, v5, v6, v7}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->updateProgress(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 733
    :catch_0
    move-exception v1

    .line 734
    .local v1, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->logFaultyCallback(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 737
    .end local v0    # "callback":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 7
    .param p1, "count"    # [Ljava/lang/Integer;

    .prologue
    .line 746
    iget-object v2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;

    .line 748
    .local v0, "callback":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMin:I

    iget v6, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->mZoomMax:I

    invoke-interface {v0, v3, v4, v5, v6}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;->updateProgress(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 749
    :catch_0
    move-exception v1

    .line 750
    .local v1, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->logFaultyCallback(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 753
    .end local v0    # "callback":Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 689
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
