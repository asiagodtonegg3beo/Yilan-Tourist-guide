.class Lcom/google/appinventor/components/runtime/CloudDB$1;
.super Ljava/lang/Thread;
.source "CloudDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->startListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 388
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis(Z)Lredis/clients/jedis/Jedis;

    move-result-object v1

    .line 389
    .local v1, "jedis":Lredis/clients/jedis/Jedis;
    if-eqz v1, :cond_1

    .line 391
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;-><init>(Lcom/google/appinventor/components/runtime/CloudDB;)V

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->access$002(Lcom/google/appinventor/components/runtime/CloudDB;Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    .line 392
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->access$000(Lcom/google/appinventor/components/runtime/CloudDB;)Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lredis/clients/jedis/Jedis;->subscribe(Lredis/clients/jedis/JedisPubSub;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v2, v6}, Lcom/google/appinventor/components/runtime/CloudDB;->access$202(Lcom/google/appinventor/components/runtime/CloudDB;Z)Z

    .line 424
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->access$300(Lcom/google/appinventor/components/runtime/CloudDB;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->access$400(Lcom/google/appinventor/components/runtime/CloudDB;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$1;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/CloudDB;->access$500(Lcom/google/appinventor/components/runtime/CloudDB;)V

    .line 431
    :cond_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CloudDB"

    const-string v3, "Error in listener thread"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    :try_start_1
    invoke-virtual {v1}, Lredis/clients/jedis/Jedis;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 404
    :goto_1
    const-wide/16 v2, 0xbb8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 405
    :catch_1
    move-exception v2

    goto :goto_0

    .line 416
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-wide/16 v2, 0xbb8

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 417
    :catch_2
    move-exception v2

    goto :goto_0

    .line 397
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    goto :goto_1
.end method
