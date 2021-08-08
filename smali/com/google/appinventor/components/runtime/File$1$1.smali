.class Lcom/google/appinventor/components/runtime/File$1$1;
.super Ljava/lang/Object;
.source "File.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File$1;->HandlePermissionResponse(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/File$1;

.field final synthetic val$asyncInputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File$1;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/File$1;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File$1$1;->this$1:Lcom/google/appinventor/components/runtime/File$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/File$1$1;->val$asyncInputStream:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$1$1;->this$1:Lcom/google/appinventor/components/runtime/File$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/File$1;->this$0:Lcom/google/appinventor/components/runtime/File;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/File$1$1;->val$asyncInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File$1$1;->this$1:Lcom/google/appinventor/components/runtime/File$1;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/File$1;->val$fileName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/File;->access$100(Lcom/google/appinventor/components/runtime/File;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 187
    return-void
.end method
