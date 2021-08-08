.class Lcom/google/appinventor/components/runtime/ImagePicker$1;
.super Ljava/lang/Object;
.source "ImagePicker.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ImagePicker;->click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ImagePicker;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ImagePicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ImagePicker;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImagePicker$1;->this$0:Lcom/google/appinventor/components/runtime/ImagePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 107
    if-eqz p2, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker$1;->this$0:Lcom/google/appinventor/components/runtime/ImagePicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/ImagePicker;->access$002(Lcom/google/appinventor/components/runtime/ImagePicker;Z)Z

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker$1;->this$0:Lcom/google/appinventor/components/runtime/ImagePicker;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ImagePicker;->click()V

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker$1;->this$0:Lcom/google/appinventor/components/runtime/ImagePicker;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ImagePicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ImagePicker$1;->this$0:Lcom/google/appinventor/components/runtime/ImagePicker;

    const-string v2, "Click"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
