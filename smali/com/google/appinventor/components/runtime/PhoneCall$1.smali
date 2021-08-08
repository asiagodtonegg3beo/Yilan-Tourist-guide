.class Lcom/google/appinventor/components/runtime/PhoneCall$1;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "PhoneCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PhoneCall;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PhoneCall;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/PhoneCall;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/PhoneCall;
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneCall$1;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneCall$1;->this$0:Lcom/google/appinventor/components/runtime/PhoneCall;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/PhoneCall;->access$000(Lcom/google/appinventor/components/runtime/PhoneCall;)V

    .line 115
    return-void
.end method
