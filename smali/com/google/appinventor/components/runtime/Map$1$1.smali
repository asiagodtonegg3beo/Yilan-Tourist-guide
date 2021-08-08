.class Lcom/google/appinventor/components/runtime/Map$1$1;
.super Ljava/lang/Object;
.source "Map.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Map$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Map$1;

.field final synthetic val$e:Ljava/io/IOException;

.field final synthetic val$form:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Map$1;Lcom/google/appinventor/components/runtime/Form;Ljava/io/IOException;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Map$1;

    .prologue
    .line 581
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Map$1$1;->this$1:Lcom/google/appinventor/components/runtime/Map$1;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Map$1$1;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Map$1$1;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Map$1$1;->val$form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Map$1$1;->this$1:Lcom/google/appinventor/components/runtime/Map$1;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Map$1;->this$0:Lcom/google/appinventor/components/runtime/Map;

    const-string v2, "Save"

    const/16 v3, 0xd54

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Map$1$1;->val$e:Ljava/io/IOException;

    .line 585
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 584
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 586
    return-void
.end method
