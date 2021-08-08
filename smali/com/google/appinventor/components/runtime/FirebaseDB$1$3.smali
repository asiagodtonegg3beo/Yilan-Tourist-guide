.class Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;
.super Ljava/lang/Object;
.source "FirebaseDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB$1;->onChildChanged(Lcom/firebase/client/DataSnapshot;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/FirebaseDB$1;

.field final synthetic val$snapshot:Lcom/firebase/client/DataSnapshot;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB$1;Lcom/firebase/client/DataSnapshot;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/FirebaseDB$1;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;->this$1:Lcom/google/appinventor/components/runtime/FirebaseDB$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;->val$snapshot:Lcom/firebase/client/DataSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;->this$1:Lcom/google/appinventor/components/runtime/FirebaseDB$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/FirebaseDB$1;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;->val$snapshot:Lcom/firebase/client/DataSnapshot;

    invoke-virtual {v1}, Lcom/firebase/client/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$1$3;->val$snapshot:Lcom/firebase/client/DataSnapshot;

    invoke-virtual {v2}, Lcom/firebase/client/DataSnapshot;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/FirebaseDB;->DataChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    return-void
.end method
