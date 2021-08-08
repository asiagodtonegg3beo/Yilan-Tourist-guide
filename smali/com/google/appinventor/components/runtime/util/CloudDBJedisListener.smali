.class public Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;
.super Lredis/clients/jedis/JedisPubSub;
.source "CloudDBJedisListener.java"


# static fields
.field private static final DEBUG:Z

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field public cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

.field private myThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "CloudDB"

    sput-object v0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 1
    .param p1, "thisCloudDB"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 31
    invoke-direct {p0}, Lredis/clients/jedis/JedisPubSub;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->myThread:Ljava/lang/Thread;

    .line 34
    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p2, v7}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 55
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 56
    .local v4, "tag":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 57
    .local v6, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 60
    .local v5, "value":Ljava/lang/Object;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/CloudDB;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentationIfValueFileName(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "retValue":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 62
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v8, v4, v5}, Lcom/google/appinventor/components/runtime/CloudDB;->DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v3    # "retValue":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->LOG_TAG:Ljava/lang/String;

    const-string v8, "onMessage: JSONException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "System Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 73
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    return-void

    .line 64
    .restart local v3    # "retValue":Ljava/lang/String;
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/Object;
    .restart local v6    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->cloudDB:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v8, v4, v3}, Lcom/google/appinventor/components/runtime/CloudDB;->DataChanged(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onSubscribe(Ljava/lang/String;I)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "subscribedChannels"    # I

    .prologue
    .line 41
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/CloudDBJedisListener;->myThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 77
    return-void
.end method
