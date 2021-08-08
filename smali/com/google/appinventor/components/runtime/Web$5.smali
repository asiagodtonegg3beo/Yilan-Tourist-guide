.class Lcom/google/appinventor/components/runtime/Web$5;
.super Ljava/lang/Object;
.source "Web.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->requestTextImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$functionName:Ljava/lang/String;

.field final synthetic val$httpVerb:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Web;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Web;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$encoding:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$functionName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$httpVerb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$encoding:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$text:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 673
    .local v2, "requestData":[B
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$webProps:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$httpVerb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$functionName:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Web;->access$800(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .end local v2    # "requestData":[B
    :goto_1
    return-void

    .line 665
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$text:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .restart local v2    # "requestData":[B
    goto :goto_0

    .line 667
    .end local v2    # "requestData":[B
    :catch_0
    move-exception v6

    .line 668
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Web;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Web$5;->this$0:Lcom/google/appinventor/components/runtime/Web;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$functionName:Ljava/lang/String;

    const/16 v4, 0x44e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Web$5;->val$encoding:Ljava/lang/String;

    aput-object v8, v5, v7

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method
