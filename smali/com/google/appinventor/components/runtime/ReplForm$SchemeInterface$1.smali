.class Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;
.super Ljava/lang/Object;
.source "ReplForm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->eval(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

.field final synthetic val$sexp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->this$1:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->val$sexp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->this$1:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->access$000(Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;)V

    .line 108
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->val$sexp:Ljava/lang/String;

    const-string v2, "#DONE#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->this$1:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ReplForm;->finish()V

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->this$1:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->scheme:Lgnu/expr/Language;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface$1;->val$sexp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/google/appinventor/components/runtime/ReplForm;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in scheme processing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
