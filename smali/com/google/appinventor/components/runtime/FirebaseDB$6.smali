.class Lcom/google/appinventor/components/runtime/FirebaseDB$6;
.super Ljava/lang/Object;
.source "FirebaseDB.java"

# interfaces
.implements Lcom/firebase/client/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->GetTagList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/FirebaseDB;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$6;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 0
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 728
    return-void
.end method

.method public onDataChange(Lcom/firebase/client/DataSnapshot;)V
    .locals 5
    .param p1, "data"    # Lcom/firebase/client/DataSnapshot;

    .prologue
    .line 713
    invoke-virtual {p1}, Lcom/firebase/client/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 714
    .local v1, "value":Ljava/lang/Object;
    instance-of v3, v1, Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 715
    new-instance v2, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/HashMap;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v2, "value":Ljava/util/ArrayList;
    move-object v0, v2

    .line 716
    check-cast v0, Ljava/util/List;

    .line 717
    .local v0, "listValue":Ljava/util/List;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$6;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/FirebaseDB;->access$000(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/google/appinventor/components/runtime/FirebaseDB$6$1;

    invoke-direct {v4, p0, v0}, Lcom/google/appinventor/components/runtime/FirebaseDB$6$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$6;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 724
    .end local v0    # "listValue":Ljava/util/List;
    .end local v2    # "value":Ljava/util/ArrayList;
    :cond_0
    return-void
.end method
