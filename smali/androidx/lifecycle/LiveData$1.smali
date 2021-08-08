.class Landroidx/lifecycle/LiveData$1;
.super Ljava/lang/Object;
.source "LiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/lifecycle/LiveData;

    .prologue
    .line 82
    .local p0, "this":Landroidx/lifecycle/LiveData$1;, "Landroidx/lifecycle/LiveData$1;"
    iput-object p1, p0, Landroidx/lifecycle/LiveData$1;->this$0:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 86
    .local p0, "this":Landroidx/lifecycle/LiveData$1;, "Landroidx/lifecycle/LiveData$1;"
    iget-object v1, p0, Landroidx/lifecycle/LiveData$1;->this$0:Landroidx/lifecycle/LiveData;

    iget-object v2, v1, Landroidx/lifecycle/LiveData;->mDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/LiveData$1;->this$0:Landroidx/lifecycle/LiveData;

    iget-object v0, v1, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 88
    .local v0, "newValue":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/lifecycle/LiveData$1;->this$0:Landroidx/lifecycle/LiveData;

    sget-object v3, Landroidx/lifecycle/LiveData;->NOT_SET:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/lifecycle/LiveData;->mPendingData:Ljava/lang/Object;

    .line 89
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v1, p0, Landroidx/lifecycle/LiveData$1;->this$0:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    .line 92
    return-void

    .line 89
    .end local v0    # "newValue":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
