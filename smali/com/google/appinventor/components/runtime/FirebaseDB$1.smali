.class Lcom/google/appinventor/components/runtime/FirebaseDB$1;
.super Ljava/lang/Object;
.source "FirebaseDB.java"

# interfaces
.implements Lcom/firebase/client/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
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
    .line 146
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/firebase/client/FirebaseError;)V
    .locals 2
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->access$000(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$1$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$1$2;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$1;Lcom/firebase/client/FirebaseError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return-void
.end method

.method public onChildAdded(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/firebase/client/DataSnapshot;
    .param p2, "previousChildKey"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->access$000(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$1$1;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$1;Lcom/firebase/client/DataSnapshot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

.method public onChildChanged(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/firebase/client/DataSnapshot;
    .param p2, "previousChildKey"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/FirebaseDB;->access$000(Lcom/google/appinventor/components/runtime/FirebaseDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;-><init>(Lcom/google/appinventor/components/runtime/FirebaseDB$1;Lcom/firebase/client/DataSnapshot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    return-void
.end method

.method public onChildMoved(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V
    .locals 0
    .param p1, "snapshot"    # Lcom/firebase/client/DataSnapshot;
    .param p2, "previousChildKey"    # Ljava/lang/String;

    .prologue
    .line 183
    return-void
.end method

.method public onChildRemoved(Lcom/firebase/client/DataSnapshot;)V
    .locals 3
    .param p1, "snapshot"    # Lcom/firebase/client/DataSnapshot;

    .prologue
    .line 187
    const-string v0, "Firebase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChildRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/firebase/client/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " removed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method
