.class Lcom/google/appinventor/components/runtime/Twitter$12$1;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Twitter$12;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Twitter$12;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 938
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Twitter;->access$1400(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 939
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$12;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltwitter4j/Status;

    .line 940
    .local v0, "message":Ltwitter4j/Status;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 941
    .local v1, "status":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ltwitter4j/Status;->getUser()Ltwitter4j/User;

    move-result-object v3

    invoke-interface {v3}, Ltwitter4j/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    invoke-interface {v0}, Ltwitter4j/Status;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->access$1400(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 945
    .end local v0    # "message":Ltwitter4j/Status;
    .end local v1    # "status":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Twitter$12$1;->this$1:Lcom/google/appinventor/components/runtime/Twitter$12;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Twitter$12;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Twitter;->access$1400(Lcom/google/appinventor/components/runtime/Twitter;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Twitter;->FriendTimelineReceived(Ljava/util/List;)V

    .line 946
    return-void
.end method
