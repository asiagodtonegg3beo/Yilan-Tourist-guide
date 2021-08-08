.class Lcom/google/appinventor/components/runtime/Form$4;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/Component;

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$permissionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$4;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$component:Lcom/google/appinventor/components/runtime/Component;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$functionName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$permissionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$4;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$functionName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Form$4;->val$permissionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->PermissionDenied(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    return-void
.end method
