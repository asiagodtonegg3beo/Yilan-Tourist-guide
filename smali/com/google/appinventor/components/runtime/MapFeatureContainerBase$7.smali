.class Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;
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

.field final synthetic val$yailFeatures:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;->val$yailFeatures:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;->val$yailFeatures:Ljava/util/List;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->GotFeatures(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 457
    return-void
.end method
