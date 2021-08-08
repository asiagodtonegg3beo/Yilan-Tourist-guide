.class Landroidx/lifecycle/ComputableLiveData$2;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ComputableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/ComputableLiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/ComputableLiveData;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/lifecycle/ComputableLiveData;

    .prologue
    .line 87
    .local p0, "this":Landroidx/lifecycle/ComputableLiveData$2;, "Landroidx/lifecycle/ComputableLiveData$2;"
    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .prologue
    .local p0, "this":Landroidx/lifecycle/ComputableLiveData$2;, "Landroidx/lifecycle/ComputableLiveData$2;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 95
    .local v0, "computed":Z
    iget-object v2, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v2, v2, Landroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    const/4 v1, 0x0

    .line 99
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v2, v2, Landroidx/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    const/4 v0, 0x1

    .line 101
    iget-object v2, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/ComputableLiveData;->compute()Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 103
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    if-eqz v0, :cond_2

    .line 104
    iget-object v2, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v2, v2, Landroidx/lifecycle/ComputableLiveData;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_2
    iget-object v2, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v2, v2, Landroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 118
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v2, v2, Landroidx/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    :cond_4
    return-void

    .line 108
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroidx/lifecycle/ComputableLiveData$2;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v3, v3, Landroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method
