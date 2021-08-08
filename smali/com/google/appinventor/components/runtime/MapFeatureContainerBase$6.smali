.class Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;
.super Ljava/lang/Object;
.source "MapFeatureContainerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;->val$url:Ljava/lang/String;

    const/4 v2, -0x3

    const-string v3, "Malformed GeoJSON response. Expected FeatureCollection as root element."

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->LoadError(Ljava/lang/String;ILjava/lang/String;)V

    .line 449
    return-void
.end method
