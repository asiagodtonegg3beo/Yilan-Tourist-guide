.class Lcom/google/appinventor/components/runtime/HVArrangement$2;
.super Ljava/lang/Object;
.source "HVArrangement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/HVArrangement;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/HVArrangement;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

.field final synthetic val$fHeight:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/HVArrangement;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/HVArrangement;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$2;->this$0:Lcom/google/appinventor/components/runtime/HVArrangement;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/HVArrangement$2;->val$component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iput p3, p0, Lcom/google/appinventor/components/runtime/HVArrangement$2;->val$fHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 188
    const-string v0, "HVArrangement"

    const-string v1, "(HVArrangement)Height not stable yet... trying again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/HVArrangement$2;->this$0:Lcom/google/appinventor/components/runtime/HVArrangement;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/HVArrangement$2;->val$component:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v2, p0, Lcom/google/appinventor/components/runtime/HVArrangement$2;->val$fHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/HVArrangement;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 190
    return-void
.end method
