.class Lcom/google/appinventor/components/runtime/CloudDB$5;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$value:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$valueIfTagNotThere:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 810
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->val$valueIfTagNotThere:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 812
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/CloudDB;->getJedis()Lredis/clients/jedis/Jedis;

    move-result-object v1

    .line 817
    .local v1, "jedis":Lredis/clients/jedis/Jedis;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->val$tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lredis/clients/jedis/Jedis;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, "returnValue":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 822
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/CloudDB;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v4, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentationIfValueFileName(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 823
    .local v3, "val":Ljava/lang/String;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 851
    .end local v3    # "val":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/CloudDB;->access$900(Lcom/google/appinventor/components/runtime/CloudDB;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/CloudDB$5$1;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/CloudDB$5$1;-><init>(Lcom/google/appinventor/components/runtime/CloudDB$5;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 859
    .end local v2    # "returnValue":Ljava/lang/String;
    :goto_1
    return-void

    .line 824
    .restart local v2    # "returnValue":Ljava/lang/String;
    .restart local v3    # "val":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 832
    .end local v2    # "returnValue":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JSON conversion error for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->val$tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    goto :goto_1

    .line 830
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "returnValue":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->val$value:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->val$valueIfTagNotThere:Ljava/lang/Object;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 835
    .end local v2    # "returnValue":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 836
    .local v0, "e":Ljava/lang/NullPointerException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System Error getting tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->val$tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 837
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v4, v7}, Lcom/google/appinventor/components/runtime/CloudDB;->access$800(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    goto :goto_1

    .line 839
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 840
    .local v0, "e":Lredis/clients/jedis/exceptions/JedisException;
    const-string v4, "CloudDB"

    const-string v5, "Exception in GetValue"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 842
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v4, v7}, Lcom/google/appinventor/components/runtime/CloudDB;->access$800(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    goto :goto_1

    .line 844
    .end local v0    # "e":Lredis/clients/jedis/exceptions/JedisException;
    :catch_3
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CloudDB"

    const-string v5, "Exception in GetValue"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 847
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/CloudDB$5;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v4, v7}, Lcom/google/appinventor/components/runtime/CloudDB;->access$800(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    goto :goto_1
.end method
