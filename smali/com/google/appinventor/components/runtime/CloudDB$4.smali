.class Lcom/google/appinventor/components/runtime/CloudDB$4;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "CloudDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic val$me:Lcom/google/appinventor/components/runtime/CloudDB;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$valueIfTagNotThere:Ljava/lang/Object;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Lcom/google/appinventor/components/runtime/CloudDB;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;
    .param p2, "source"    # Lcom/google/appinventor/components/runtime/Component;
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->val$me:Lcom/google/appinventor/components/runtime/CloudDB;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->val$tag:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->val$valueIfTagNotThere:Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onGranted()V
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->val$me:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/CloudDB;->access$602(Lcom/google/appinventor/components/runtime/CloudDB;Z)Z

    .line 796
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/CloudDB$4;->val$valueIfTagNotThere:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/CloudDB;->GetValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 797
    return-void
.end method
