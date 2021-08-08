.class Lcom/google/appinventor/components/runtime/BarcodeScanner$1;
.super Ljava/lang/Object;
.source "BarcodeScanner.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BarcodeScanner;->DoScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BarcodeScanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/BarcodeScanner;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 103
    if-eqz p2, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/BarcodeScanner;->access$002(Lcom/google/appinventor/components/runtime/BarcodeScanner;Z)Z

    .line 105
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BarcodeScanner;->DoScan()V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/BarcodeScanner;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->this$0:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    const-string v2, "DoScan"

    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
