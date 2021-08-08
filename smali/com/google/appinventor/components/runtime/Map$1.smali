.class Lcom/google/appinventor/components/runtime/Map$1;
.super Ljava/lang/Object;
.source "Map.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Map;->Save(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Map;

.field final synthetic val$featuresToSave:Ljava/util/List;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Map;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Map$1;->this$0:Lcom/google/appinventor/components/runtime/Map;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Map$1;->val$featuresToSave:Ljava/util/List;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Map$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 578
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Map$1;->val$featuresToSave:Ljava/util/List;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Map$1;->val$path:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->writeFeaturesAsGeoJSON(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Map$1;->this$0:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 581
    .local v1, "form":Lcom/google/appinventor/components/runtime/Form;
    new-instance v2, Lcom/google/appinventor/components/runtime/Map$1$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/appinventor/components/runtime/Map$1$1;-><init>(Lcom/google/appinventor/components/runtime/Map$1;Lcom/google/appinventor/components/runtime/Form;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
