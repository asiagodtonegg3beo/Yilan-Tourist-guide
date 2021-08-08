.class Lcom/google/appinventor/components/runtime/FirebaseDB$2$1;
.super Ljava/lang/Object;
.source "FirebaseDB.java"

# interfaces
.implements Lcom/firebase/client/Firebase$AuthResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB$2;->onAuthStateChanged(Lcom/firebase/client/AuthData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/FirebaseDB$2;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/FirebaseDB$2;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$2$1;->this$1:Lcom/google/appinventor/components/runtime/FirebaseDB$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticated(Lcom/firebase/client/AuthData;)V
    .locals 2
    .param p1, "authData"    # Lcom/firebase/client/AuthData;

    .prologue
    .line 210
    const-string v0, "Firebase"

    const-string v1, "Auth Successful."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public onAuthenticationError(Lcom/firebase/client/FirebaseError;)V
    .locals 3
    .param p1, "error"    # Lcom/firebase/client/FirebaseError;

    .prologue
    .line 215
    const-string v0, "Firebase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auth Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/firebase/client/FirebaseError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method
