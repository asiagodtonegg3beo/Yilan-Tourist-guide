.class Lcom/google/appinventor/components/runtime/LocationSensor$1;
.super Ljava/lang/Object;
.source "LocationSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

.field final synthetic val$caller:Ljava/lang/String;

.field final synthetic val$me:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/LocationSensor;

    .prologue
    .line 676
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$caller:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$1;->val$me:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    new-instance v2, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/LocationSensor$1$1;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 694
    return-void
.end method
