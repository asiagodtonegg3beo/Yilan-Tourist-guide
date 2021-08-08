.class Lcom/google/appinventor/components/runtime/Web$6$1;
.super Ljava/lang/Object;
.source "Web.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web$6;->onGranted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Web$6;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Web$6;

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$6$1;->this$1:Lcom/google/appinventor/components/runtime/Web$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$6$1;->this$1:Lcom/google/appinventor/components/runtime/Web$6;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Web$6;->val$me:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$6$1;->this$1:Lcom/google/appinventor/components/runtime/Web$6;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Web$6;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Web$6$1;->this$1:Lcom/google/appinventor/components/runtime/Web$6;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Web$6;->val$postData:[B

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$6$1;->this$1:Lcom/google/appinventor/components/runtime/Web$6;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Web$6;->val$postFile:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web$6$1;->this$1:Lcom/google/appinventor/components/runtime/Web$6;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/Web$6;->val$httpVerb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$6$1;->this$1:Lcom/google/appinventor/components/runtime/Web$6;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Web$6;->val$method:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Web;->access$800(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    return-void
.end method
