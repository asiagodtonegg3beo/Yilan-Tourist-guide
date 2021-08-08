.class Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;
.super Ljava/lang/Object;
.source "AccelerometerSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/AccelerometerSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->this$0:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->this$0:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->this$0:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->getDeviceDefaultOrientation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->access$002(Lcom/google/appinventor/components/runtime/AccelerometerSensor;I)I

    .line 321
    const-string v0, "AccelerometerSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceDefaultOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->this$0:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->access$000(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v0, "AccelerometerSensor"

    const-string v1, "Configuration.ORIENTATION_LANDSCAPE = 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v0, "AccelerometerSensor"

    const-string v1, "Configuration.ORIENTATION_PORTRAIT = 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method
