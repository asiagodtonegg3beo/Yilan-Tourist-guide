.class public Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
.super Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;
.source "ReusableBitmapDrawable.java"


# instance fields
.field private mBitmapRecycled:Z

.field private mUsageRefCount:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "pBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mBitmapRecycled:Z

    .line 18
    iput v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    .line 22
    return-void
.end method


# virtual methods
.method public beginUsingDrawable()V
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iget v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public finishUsingDrawable()V
    .locals 2

    .prologue
    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    .line 33
    iget v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    if-gez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced endUsingDrawable() called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    return-void
.end method

.method public isBitmapValid()Z
    .locals 1

    .prologue
    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mBitmapRecycled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tryRecycle()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    .line 40
    :try_start_0
    iget v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mUsageRefCount:I

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->mBitmapRecycled:Z

    .line 42
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit p0

    .line 45
    :goto_0
    return-object v0

    .line 44
    :cond_0
    monitor-exit p0

    .line 45
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
