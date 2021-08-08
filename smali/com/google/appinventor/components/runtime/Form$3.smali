.class Lcom/google/appinventor/components/runtime/Form$3;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 901
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 903
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$200(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-eqz v1, :cond_3

    .line 904
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Initialize"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 905
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Fixed"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    .line 910
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->access$502(Lcom/google/appinventor/components/runtime/Form;Z)Z

    .line 913
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$600(Lcom/google/appinventor/components/runtime/Form;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;

    .line 914
    .local v0, "onInitializeListener":Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/OnInitializeListener;->onInitialize()V

    goto :goto_1

    .line 908
    .end local v0    # "onInitializeListener":Lcom/google/appinventor/components/runtime/util/OnInitializeListener;
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Responsive"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->Sizing(Ljava/lang/String;)V

    goto :goto_0

    .line 916
    :cond_1
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_2

    .line 917
    sget-object v1, Lcom/google/appinventor/components/runtime/Form;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v1, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ReplForm;->HandleReturnValues()V

    .line 923
    :cond_2
    :goto_2
    return-void

    .line 921
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$3;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
