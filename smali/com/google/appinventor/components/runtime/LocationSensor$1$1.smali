.class Lcom/google/appinventor/components/runtime/LocationSensor$1$1;
.super Ljava/lang/Object;
.source "LocationSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationSensor$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/LocationSensor$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/LocationSensor$1;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    const/4 v1, 0x0

    .line 683
    if-eqz p2, :cond_0

    .line 684
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$1402(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z

    .line 685
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$caller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 686
    invoke-static {}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$1500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Permission Granted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$1402(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z

    .line 689
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->access$1002(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z

    .line 690
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$caller:Ljava/lang/String;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
