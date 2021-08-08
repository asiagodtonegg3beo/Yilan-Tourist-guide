.class Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;
.super Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/cachemanager/CacheManager;->getDownloadingDialog(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

.field final synthetic val$pCtx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/osmdroid/tileprovider/cachemanager/CacheManager;Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager;
    .param p2, "pCtx"    # Landroid/content/Context;
    .param p3, "pTask"    # Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;

    .prologue
    .line 806
    iput-object p1, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;->this$0:Lorg/osmdroid/tileprovider/cachemanager/CacheManager;

    iput-object p4, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;->val$pCtx:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerTask;)V

    return-void
.end method


# virtual methods
.method protected getUITitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 809
    const-string v0, "Downloading tiles"

    return-object v0
.end method

.method public onTaskFailed(I)V
    .locals 3
    .param p1, "errors"    # I

    .prologue
    .line 814
    invoke-super {p0, p1}, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$CacheManagerDialog;->onTaskFailed(I)V

    .line 815
    iget-object v0, p0, Lorg/osmdroid/tileprovider/cachemanager/CacheManager$1;->val$pCtx:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading completed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errors."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 816
    return-void
.end method
