.class Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;
.super Ljava/lang/Object;
.source "FirebaseDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB$3;->onCancelled(Lcom/firebase/client/FirebaseError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/FirebaseDB$3;

.field final synthetic val$error:Lcom/firebase/client/FirebaseError;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB$3;Lcom/firebase/client/FirebaseError;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/FirebaseDB$3;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;->this$1:Lcom/google/appinventor/components/runtime/FirebaseDB$3;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;->val$error:Lcom/firebase/client/FirebaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;->this$1:Lcom/google/appinventor/components/runtime/FirebaseDB$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/FirebaseDB$3;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$3$2;->val$error:Lcom/firebase/client/FirebaseError;

    invoke-virtual {v1}, Lcom/firebase/client/FirebaseError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->FirebaseError(Ljava/lang/String;)V

    .line 520
    return-void
.end method
