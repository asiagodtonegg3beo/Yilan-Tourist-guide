.class Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;
.super Ljava/lang/Object;
.source "WebRTCNativeMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->sendRendezvous(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

.field final synthetic val$data:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 441
    :try_start_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    const-string v4, "first"

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$1000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 442
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    const-string v4, "webrtc"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 443
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    const-string v4, "key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$1100(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-r"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$1000(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$1002(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;Z)Z

    .line 446
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    const-string v4, "apiversion"

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 448
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 449
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->this$0:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->access$1200(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/rendezvous2/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    .local v2, "post":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    const-string v3, "AppInvWebRTC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About to send = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr$5;->val$data:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 455
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 462
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    return-void

    .line 456
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "AppInvWebRTC"

    const-string v4, "sendRedezvous IOException"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 459
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AppInvWebRTC"

    const-string v4, "Exception in sendRendezvous"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
