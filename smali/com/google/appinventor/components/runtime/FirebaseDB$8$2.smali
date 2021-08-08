.class Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;
.super Ljava/lang/Object;
.source "FirebaseDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB$8;->onComplete(Lcom/firebase/client/FirebaseError;ZLcom/firebase/client/DataSnapshot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/FirebaseDB$8;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/FirebaseDB$8;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;->this$1:Lcom/google/appinventor/components/runtime/FirebaseDB$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 815
    const-string v0, "Firebase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppendValue(!committed): result.err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;->this$1:Lcom/google/appinventor/components/runtime/FirebaseDB$8;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;->this$1:Lcom/google/appinventor/components/runtime/FirebaseDB$8;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->this$0:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$8$2;->this$1:Lcom/google/appinventor/components/runtime/FirebaseDB$8;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FirebaseDB$8;->val$result:Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/FirebaseDB$ReturnVal;->err:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/FirebaseDB;->FirebaseError(Ljava/lang/String;)V

    .line 817
    return-void
.end method
