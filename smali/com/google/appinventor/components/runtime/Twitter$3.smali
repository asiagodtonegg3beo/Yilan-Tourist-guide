.class Lcom/google/appinventor/components/runtime/Twitter$3;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->resultReturned(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;

.field final synthetic val$oauthVerifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->val$oauthVerifier:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 403
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->access$300(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/auth/RequestToken;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->val$oauthVerifier:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ltwitter4j/Twitter;->getOAuthAccessToken(Ltwitter4j/auth/RequestToken;Ljava/lang/String;)Ltwitter4j/auth/AccessToken;

    move-result-object v1

    .line 405
    .local v1, "resultAccessToken":Ltwitter4j/auth/AccessToken;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/Twitter;->access$702(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/AccessToken;)Ltwitter4j/auth/AccessToken;

    .line 406
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->access$700(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/auth/AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/Twitter;->access$802(Lcom/google/appinventor/components/runtime/Twitter;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/Twitter;->access$900(Lcom/google/appinventor/components/runtime/Twitter;Ltwitter4j/auth/AccessToken;)V

    .line 408
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/Twitter$3$1;

    invoke-direct {v3, p0}, Lcom/google/appinventor/components/runtime/Twitter$3$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$3;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v1    # "resultAccessToken":Ltwitter4j/auth/AccessToken;
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ltwitter4j/TwitterException;
    const-string v2, "Twitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->printStackTrace()V

    .line 417
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const-string v4, "Authorize"

    const/16 v5, 0x130

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 419
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 417
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 420
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$3;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->access$1000(Lcom/google/appinventor/components/runtime/Twitter;)V

    goto :goto_0
.end method
