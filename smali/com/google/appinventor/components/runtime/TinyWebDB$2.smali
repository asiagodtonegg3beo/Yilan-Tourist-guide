.class Lcom/google/appinventor/components/runtime/TinyWebDB$2;
.super Ljava/lang/Object;
.source "TinyWebDB.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/TinyWebDB;->postStoreValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/TinyWebDB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/TinyWebDB;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$2;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$2;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/TinyWebDB;->access$100(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/TinyWebDB$2$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB$2$2;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$2;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 187
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TinyWebDB$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TinyWebDB$2;->this$0:Lcom/google/appinventor/components/runtime/TinyWebDB;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/TinyWebDB;->access$100(Lcom/google/appinventor/components/runtime/TinyWebDB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/TinyWebDB$2$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/TinyWebDB$2$1;-><init>(Lcom/google/appinventor/components/runtime/TinyWebDB$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method
