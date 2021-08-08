.class Lcom/google/appinventor/components/runtime/VideoPlayer$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/VideoPlayer;->Source(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

.field final synthetic val$tempPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/VideoPlayer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/VideoPlayer;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$1;->val$tempPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 204
    if-eqz p2, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$1;->val$tempPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/VideoPlayer;->Source(Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/VideoPlayer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/VideoPlayer$1;->this$0:Lcom/google/appinventor/components/runtime/VideoPlayer;

    const-string v2, "Source"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
