.class public abstract Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CacheManagerDialog"
.end annotation


# instance fields
.field private final mProgressDialog:Landroid/app/ProgressDialog;

.field private final mTask:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)V
    .locals 2
    .param p1, "pCtx"    # Landroid/content/Context;
    .param p2, "pTask"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .prologue
    const/4 v1, 0x1

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    iput-object p2, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mTask:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .line 605
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 606
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 607
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 609
    invoke-static {p2}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;->access$000(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getVerifyCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;

    invoke-direct {v1, p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$1;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 640
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$2;

    invoke-direct {v1, p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog$2;-><init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    .prologue
    .line 598
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mTask:Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    return-object v0
.end method

.method static synthetic access$200(Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;

    .prologue
    .line 598
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 679
    :cond_0
    return-void
.end method


# virtual methods
.method public downloadStarted()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->getUITitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 658
    return-void
.end method

.method protected abstract getUITitle()Ljava/lang/String;
.end method

.method public onTaskComplete()V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->dismiss()V

    .line 668
    return-void
.end method

.method public onTaskFailed(I)V
    .locals 0
    .param p1, "errors"    # I

    .prologue
    .line 672
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->dismiss()V

    .line 673
    return-void
.end method

.method public setPossibleTilesInArea(I)V
    .locals 1
    .param p1, "total"    # I

    .prologue
    .line 662
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 663
    return-void
.end method

.method public updateProgress(IIII)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "currentZoomLevel"    # I
    .param p3, "zoomMin"    # I
    .param p4, "zoomMax"    # I

    .prologue
    .line 650
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 651
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2, p3, p4}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->zoomMessage(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 652
    return-void
.end method

.method protected zoomMessage(III)Ljava/lang/String;
    .locals 2
    .param p1, "zoomLevel"    # I
    .param p2, "zoomMin"    # I
    .param p3, "zoomMax"    # I

    .prologue
    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling zoom level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
