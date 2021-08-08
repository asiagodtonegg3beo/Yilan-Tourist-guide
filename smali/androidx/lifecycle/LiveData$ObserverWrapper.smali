.class abstract Landroidx/lifecycle/LiveData$ObserverWrapper;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ObserverWrapper"
.end annotation


# instance fields
.field mActive:Z

.field mLastVersion:I

.field final mObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    .local p2, "observer":Landroidx/lifecycle/Observer;, "Landroidx/lifecycle/Observer<-TT;>;"
    iput-object p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 396
    iput-object p2, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroidx/lifecycle/Observer;

    .line 397
    return-void
.end method


# virtual methods
.method activeStateChanged(Z)V
    .locals 5
    .param p1, "newActive"    # Z

    .prologue
    .local p0, "this":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    const/4 v1, 0x1

    .line 409
    iget-boolean v2, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-ne p1, v2, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    .line 415
    iget-object v2, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    iget v2, v2, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-nez v2, :cond_4

    move v0, v1

    .line 416
    .local v0, "wasInactive":Z
    :goto_1
    iget-object v2, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    iget v3, v2, Landroidx/lifecycle/LiveData;->mActiveCount:I

    iget-boolean v4, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v4, :cond_5

    :goto_2
    add-int/2addr v1, v3

    iput v1, v2, Landroidx/lifecycle/LiveData;->mActiveCount:I

    .line 417
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v1, :cond_2

    .line 418
    iget-object v1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->onActive()V

    .line 420
    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    iget v1, v1, Landroidx/lifecycle/LiveData;->mActiveCount:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v1, :cond_3

    .line 421
    iget-object v1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->onInactive()V

    .line 423
    :cond_3
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Landroidx/lifecycle/LiveData$ObserverWrapper;->this$0:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/LiveData;->dispatchingValue(Landroidx/lifecycle/LiveData$ObserverWrapper;)V

    goto :goto_0

    .line 415
    .end local v0    # "wasInactive":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 416
    .restart local v0    # "wasInactive":Z
    :cond_5
    const/4 v1, -0x1

    goto :goto_2
.end method

.method detachObserver()V
    .locals 0

    .prologue
    .line 406
    .local p0, "this":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    return-void
.end method

.method isAttachedTo(Landroidx/lifecycle/LifecycleOwner;)Z
    .locals 1
    .param p1, "owner"    # Landroidx/lifecycle/LifecycleOwner;

    .prologue
    .line 402
    .local p0, "this":Landroidx/lifecycle/LiveData$ObserverWrapper;, "Landroidx/lifecycle/LiveData<TT;>.ObserverWrapper;"
    const/4 v0, 0x0

    return v0
.end method

.method abstract shouldBeActive()Z
.end method
