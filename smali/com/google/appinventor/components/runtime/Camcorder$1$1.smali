.class Lcom/google/appinventor/components/runtime/Camcorder$1$1;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Camcorder$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Camcorder$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Camcorder$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Camcorder$1;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Camcorder$1$1;->this$1:Lcom/google/appinventor/components/runtime/Camcorder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 89
    if-eqz p2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camcorder$1$1;->this$1:Lcom/google/appinventor/components/runtime/Camcorder$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Camcorder$1;->val$me:Lcom/google/appinventor/components/runtime/Camcorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Camcorder;->access$002(Lcom/google/appinventor/components/runtime/Camcorder;Z)Z

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camcorder$1$1;->this$1:Lcom/google/appinventor/components/runtime/Camcorder$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Camcorder$1;->val$me:Lcom/google/appinventor/components/runtime/Camcorder;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Camcorder;->RecordVideo()V

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camcorder$1$1;->this$1:Lcom/google/appinventor/components/runtime/Camcorder$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Camcorder$1;->this$0:Lcom/google/appinventor/components/runtime/Camcorder;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Camcorder;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Camcorder$1$1;->this$1:Lcom/google/appinventor/components/runtime/Camcorder$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Camcorder$1;->val$me:Lcom/google/appinventor/components/runtime/Camcorder;

    const-string v2, "RecordVideo"

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
