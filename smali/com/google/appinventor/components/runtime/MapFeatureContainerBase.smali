.class public abstract Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "MapFeatureContainerBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final ERROR_CODE_IO_EXCEPTION:I = -0x2

.field private static final ERROR_CODE_MALFORMED_GEOJSON:I = -0x3

.field private static final ERROR_CODE_MALFORMED_URL:I = -0x1

.field private static final ERROR_CODE_UNKNOWN_TYPE:I = -0x4

.field private static final ERROR_IO_EXCEPTION:Ljava/lang/String; = "Unable to download content from URL"

.field private static final ERROR_MALFORMED_GEOJSON:Ljava/lang/String; = "Malformed GeoJSON response. Expected FeatureCollection as root element."

.field private static final ERROR_MALFORMED_URL:Ljava/lang/String; = "The URL is malformed"

.field private static final ERROR_UNKNOWN_TYPE:Ljava/lang/String; = "Unrecognized/invalid type in JSON object"

.field private static final GEOJSON_FEATURECOLLECTION:Ljava/lang/String; = "FeatureCollection"

.field private static final GEOJSON_FEATURES:Ljava/lang/String; = "features"

.field private static final GEOJSON_GEOMETRYCOLLECTION:Ljava/lang/String; = "GeometryCollection"

.field private static final GEOJSON_TYPE:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final featureAdder:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected features:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$1;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->featureAdder:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->performGet(Ljava/lang/String;)V

    return-void
.end method

.method private loadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 397
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 398
    .local v2, "connection":Ljava/net/URLConnection;
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 399
    instance-of v10, v2, Ljava/net/HttpURLConnection;

    if-eqz v10, :cond_0

    .line 400
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 401
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 402
    .local v7, "responseCode":I
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    .line 403
    .local v8, "responseMessage":Ljava/lang/String;
    const/16 v10, 0xc8

    if-eq v7, v10, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    new-instance v11, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;

    invoke-direct {v11, p0, p1, v7, v8}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$3;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 409
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 438
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v7    # "responseCode":I
    .end local v8    # "responseMessage":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 413
    .restart local v2    # "connection":Ljava/net/URLConnection;
    :cond_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    const-string v12, "UTF-8"

    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 415
    .local v6, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .local v3, "content":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 418
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v10, "\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 423
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "content":Ljava/lang/StringBuilder;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 424
    .local v4, "e":Ljava/net/MalformedURLException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    new-instance v11, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$4;

    invoke-direct {v11, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$4;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 421
    .end local v4    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "connection":Ljava/net/URLConnection;
    .restart local v3    # "content":Ljava/lang/StringBuilder;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 422
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    goto :goto_0

    .line 430
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v3    # "content":Ljava/lang/StringBuilder;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 431
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    new-instance v11, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$5;

    invoke-direct {v11, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$5;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private performGet(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 383
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->loadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "jsonContent":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 393
    .end local v1    # "jsonContent":Ljava/lang/String;
    :goto_0
    return-void

    .line 387
    .restart local v1    # "jsonContent":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    .end local v1    # "jsonContent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    const-string v3, "Exception retreiving GeoJSON"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "LoadFromURL"

    const/4 v4, -0x4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 391
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 390
    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .prologue
    .line 328
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.$add() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user clicked on a map feature."
    .end annotation

    .prologue
    .line 146
    const-string v0, "FeatureClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 150
    :cond_0
    return-void
.end method

.method public FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user dragged a map feature."
    .end annotation

    .prologue
    .line 194
    const-string v0, "FeatureDrag"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 195
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 198
    :cond_0
    return-void
.end method

.method public FeatureFromDescription(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;
    .locals 7
    .param p1, "description"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 263
    :try_start_0
    sget-object v1, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    invoke-static {v1, p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processGeoJSONFeature(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 267
    :goto_0
    return-object v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string v2, "FeatureFromDescription"

    const/4 v3, -0x3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 266
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 265
    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 267
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user long-pressed on a map feature."
    .end annotation

    .prologue
    .line 162
    const-string v0, "FeatureLongClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 166
    :cond_0
    return-void
.end method

.method public FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user started dragging a map feature."
    .end annotation

    .prologue
    .line 178
    const-string v0, "FeatureStartDrag"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 182
    :cond_0
    return-void
.end method

.method public FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user stopped dragging a map feature."
    .end annotation

    .prologue
    .line 210
    const-string v0, "FeatureStopDrag"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 214
    :cond_0
    return-void
.end method

.method public Features()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The list of features placed on this %type%. This list also includes any features created by calls to FeatureFromDescription"
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Features(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5
    .param p1, "features"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 108
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 109
    .local v0, "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->removeFromMap()V

    goto :goto_0

    .line 111
    .end local v0    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 112
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 113
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 115
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    if-eqz v3, :cond_1

    .line 116
    check-cast v2, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .end local v2    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 120
    return-void
.end method

.method public GotFeatures(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "features"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "A GeoJSON document was successfully read from url. The features specified in the document are provided as a list in features."
    .end annotation

    .prologue
    .line 283
    const-string v1, "GotFeatures"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 286
    .local v0, "it":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->FeatureFromDescription(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Object;

    goto :goto_0

    .line 291
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public LoadError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "An error was encountered while processing a GeoJSON document at the given url. The responseCode parameter will contain an HTTP status code and the errorMessage parameter will contain a detailed error message."
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 303
    const-string v0, "LoadError"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "LoadFromURL"

    const/16 v2, 0x836

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "LoadFromURL"

    const/16 v2, 0x44d

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public LoadFromURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "<p>Load a feature collection in <a href=\"https://en.wikipedia.org/wiki/GeoJSON\">GeoJSON</a> format from the given url. On success, the event GotFeatures will be raised with the given url and a list of the features parsed from the GeoJSON as a list of (key, value) pairs. On failure, the LoadError event will be raised with any applicable HTTP response code and error message.</p>"
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V
    .locals 1
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)V

    .line 369
    return-void
.end method

.method public addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->featureAdder:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V
    .locals 1
    .param p1, "polyline"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)V

    .line 359
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V
    .locals 1
    .param p1, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    .line 354
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V
    .locals 1
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)V

    .line 364
    return-void
.end method

.method addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V
    .locals 1
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 374
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 443
    const-string v2, "type"

    invoke-static {p2, v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->getGeoJSONType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "type":Ljava/lang/String;
    const-string v2, "FeatureCollection"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GeometryCollection"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;

    invoke-direct {v3, p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$6;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 459
    :goto_0
    return-void

    .line 453
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->TAG:Ljava/lang/String;

    invoke-static {v2, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->getGeoJSONFeatures(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 454
    .local v1, "yailFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    new-instance v3, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;

    invoke-direct {v3, p0, p1, v1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$7;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->features:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Map;->removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 344
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .prologue
    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.setChildHeight called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .prologue
    .line 333
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map.setChildWidth called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
