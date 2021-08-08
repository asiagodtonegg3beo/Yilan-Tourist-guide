.class Lcom/google/appinventor/components/runtime/MediaStore$1$1;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MediaStore$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/MediaStore$1;

.field final synthetic val$response:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MediaStore$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/MediaStore$1;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MediaStore$1$1;->this$1:Lcom/google/appinventor/components/runtime/MediaStore$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/MediaStore$1$1;->val$response:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MediaStore$1$1;->this$1:Lcom/google/appinventor/components/runtime/MediaStore$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/MediaStore$1;->this$0:Lcom/google/appinventor/components/runtime/MediaStore;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MediaStore$1$1;->val$response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/MediaStore;->MediaStored(Ljava/lang/String;)V

    .line 121
    return-void
.end method
