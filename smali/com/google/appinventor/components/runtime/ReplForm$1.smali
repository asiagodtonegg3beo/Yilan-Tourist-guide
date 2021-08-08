.class Lcom/google/appinventor/components/runtime/ReplForm$1;
.super Ljava/lang/Object;
.source "ReplForm.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ReplForm;->onCreateFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ReplForm;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ReplForm;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$1;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ReplForm$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitialize()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm$1;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm$1;->val$data:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/ReplForm;->access$200(Lcom/google/appinventor/components/runtime/ReplForm;Ljava/lang/String;)V

    .line 161
    return-void
.end method
