.class Lcom/google/appinventor/components/runtime/Canvas$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "Canvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Canvas;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Canvas;

.field final synthetic val$me:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Canvas;
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 782
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$1;->this$0:Lcom/google/appinventor/components/runtime/Canvas;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Canvas$1;->val$me:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$1;->val$me:Lcom/google/appinventor/components/runtime/Canvas;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Canvas;->access$902(Lcom/google/appinventor/components/runtime/Canvas;Z)Z

    .line 786
    return-void
.end method
