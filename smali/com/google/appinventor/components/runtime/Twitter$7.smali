.class Lcom/google/appinventor/components/runtime/Twitter$7;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Twitter;->RequestFollowers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field friends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Twitter;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Twitter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Twitter;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->friends:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 678
    :try_start_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-interface {v5, v6, v7}, Ltwitter4j/Twitter;->getFollowersIDs(J)Ltwitter4j/IDs;

    move-result-object v1

    .line 679
    .local v1, "followerIDs":Ltwitter4j/IDs;
    invoke-interface {v1}, Ltwitter4j/IDs;->getIDs()[J

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-wide v2, v5, v4

    .line 681
    .local v2, "id":J
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->friends:Ljava/util/List;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v8}, Lcom/google/appinventor/components/runtime/Twitter;->access$200(Lcom/google/appinventor/components/runtime/Twitter;)Ltwitter4j/Twitter;

    move-result-object v8

    invoke-interface {v8, v2, v3}, Ltwitter4j/Twitter;->showUser(J)Ltwitter4j/User;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 688
    .end local v2    # "id":J
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/Twitter$7$1;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/Twitter$7$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$7;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 698
    .end local v1    # "followerIDs":Ltwitter4j/IDs;
    :goto_1
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ltwitter4j/TwitterException;
    :try_start_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Twitter;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    const-string v6, "RequestFollowers"

    const/16 v7, 0x134

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 686
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 684
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/google/appinventor/components/runtime/Twitter$7$1;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/Twitter$7$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$7;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .end local v0    # "e":Ltwitter4j/TwitterException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Twitter$7;->this$0:Lcom/google/appinventor/components/runtime/Twitter;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/Twitter;->access$100(Lcom/google/appinventor/components/runtime/Twitter;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/google/appinventor/components/runtime/Twitter$7$1;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/Twitter$7$1;-><init>(Lcom/google/appinventor/components/runtime/Twitter$7;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v4
.end method
