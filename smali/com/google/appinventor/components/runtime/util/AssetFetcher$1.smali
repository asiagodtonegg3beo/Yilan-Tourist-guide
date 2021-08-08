.class final Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;
.super Ljava/lang/Object;
.source "AssetFetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AssetFetcher;->fetchAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$asset:Ljava/lang/String;

.field final synthetic val$cookieValue:Ljava/lang/String;

.field final synthetic val$projectId:Ljava/lang/String;

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->val$uri:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->val$projectId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->val$asset:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->val$cookieValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->val$uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ode/download/file/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->val$projectId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->val$asset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "fileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->val$cookieValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->val$asset:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->val$asset:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/RetValManager;->assetTransferred(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method
