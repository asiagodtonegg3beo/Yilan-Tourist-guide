.class Lcom/google/appinventor/components/runtime/Form$1$1;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form$1;->HandlePermissionResponse(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Form$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Form$1;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->this$1:Lcom/google/appinventor/components/runtime/Form$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->this$1:Lcom/google/appinventor/components/runtime/Form$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$1$1;->this$1:Lcom/google/appinventor/components/runtime/Form$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Initialize"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->PermissionDenied(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method
