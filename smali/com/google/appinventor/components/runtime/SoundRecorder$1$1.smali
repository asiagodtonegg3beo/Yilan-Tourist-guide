.class Lcom/google/appinventor/components/runtime/SoundRecorder$1$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "SoundRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SoundRecorder$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/SoundRecorder$1;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/SoundRecorder$1;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/SoundRecorder$1;
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1$1;->this$1:Lcom/google/appinventor/components/runtime/SoundRecorder$1;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1$1;->this$1:Lcom/google/appinventor/components/runtime/SoundRecorder$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->val$me:Lcom/google/appinventor/components/runtime/SoundRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/SoundRecorder;->access$002(Lcom/google/appinventor/components/runtime/SoundRecorder;Z)Z

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$1$1;->this$1:Lcom/google/appinventor/components/runtime/SoundRecorder$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$1;->val$me:Lcom/google/appinventor/components/runtime/SoundRecorder;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->Start()V

    .line 174
    return-void
.end method
