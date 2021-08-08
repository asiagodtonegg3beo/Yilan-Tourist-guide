.class Lcom/google/appinventor/components/runtime/PhoneCall$2;
.super Ljava/lang/Object;
.source "PhoneCall.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;->MakePhoneCallDirect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PhoneCall;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PhoneCall;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/PhoneCall;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$2;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Z

    .prologue
    .line 168
    if-eqz p2, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$2;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/PhoneCall;->access$102(Lcom/google/appinventor/components/runtime/PhoneCall;Z)Z

    .line 170
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$2;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->MakePhoneCallDirect()V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$2;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/PhoneCall;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$2;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    const-string v2, "MakePhoneCall"

    const-string v3, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
