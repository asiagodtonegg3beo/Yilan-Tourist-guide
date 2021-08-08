.class public Lcom/google/appinventor/components/runtime/Navigation;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Navigation.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Navigation"
    iconName = "images/navigation.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "osmdroid.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;
    }
.end annotation


# static fields
.field public static final OPEN_ROUTE_SERVICE_URL:Ljava/lang/String; = "https://api.openrouteservice.org/v2/directions/"

.field private static final TAG:Ljava/lang/String; = "Navigation"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private endLocation:Lorg/osmdroid/util/GeoPoint;

.field private language:Ljava/lang/String;

.field private lastResponse:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private method:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

.field private serviceUrl:Ljava/lang/String;

.field private startLocation:Lorg/osmdroid/util/GeoPoint;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const-wide/16 v2, 0x0

    .line 94
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 66
    const-string v0, "https://api.openrouteservice.org/v2/directions/"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->serviceUrl:Ljava/lang/String;

    .line 67
    const-string v0, "en"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->language:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary()Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->lastResponse:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->apiKey:Ljava/lang/String;

    .line 96
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v2, v3, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    .line 97
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v2, v3, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    .line 98
    sget-object v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->DEFAULT:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->method:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Navigation;
    .param p1, "x1"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "x2"    # Lorg/osmdroid/util/GeoPoint;
    .param p3, "x3"    # Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Navigation;->performRequest(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Navigation;
    .param p1, "x1"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->lastResponse:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-object p1
.end method

.method private getCoordinates(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)[[Ljava/lang/Double;
    .locals 6
    .param p1, "startLocation"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "endLocation"    # Lorg/osmdroid/util/GeoPoint;

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 423
    filled-new-array {v1, v1}, [I

    move-result-object v1

    const-class v2, Ljava/lang/Double;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Double;

    .line 424
    .local v0, "coords":[[Ljava/lang/Double;
    aget-object v1, v0, v4

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    .line 425
    aget-object v1, v0, v4

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    .line 426
    aget-object v1, v0, v5

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    .line 427
    aget-object v1, v0, v5

    invoke-virtual {p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    .line 428
    return-object v0
.end method

.method private getDirections(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/List;
    .locals 3
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 438
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "properties"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "segments"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "steps"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "instruction"

    aput-object v2, v0, v1

    .line 439
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 438
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Lcom/google/appinventor/components/runtime/util/YailObject;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getLineStringCoords(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .prologue
    .line 432
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "geometry"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "coordinates"

    aput-object v3, v1, v2

    .line 433
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 434
    .local v0, "coords":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 9
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 400
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "encoding":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 402
    const-string v2, "UTF-8"

    .line 404
    :cond_0
    const-string v6, "Navigation"

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 407
    .local v4, "reader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 408
    .local v1, "contentLength":I
    if-eq v1, v8, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 411
    .local v5, "sb":Ljava/lang/StringBuilder;
    :goto_0
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 413
    .local v0, "buf":[C
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    .local v3, "read":I
    if-eq v3, v8, :cond_2

    .line 414
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 418
    .end local v0    # "buf":[C
    .end local v1    # "contentLength":I
    .end local v3    # "read":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    throw v6

    .line 408
    .restart local v1    # "contentLength":I
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 416
    .restart local v0    # "buf":[C
    .restart local v3    # "read":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 418
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 416
    return-object v6
.end method

.method private performRequest(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;)V
    .locals 28
    .param p1, "start"    # Lorg/osmdroid/util/GeoPoint;
    .param p2, "end"    # Lorg/osmdroid/util/GeoPoint;
    .param p3, "method"    # Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Navigation;->serviceUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->access$100(Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/geojson/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 338
    .local v18, "finalURL":Ljava/lang/String;
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 339
    .local v23, "url":Ljava/net/URL;
    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 340
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 341
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 342
    const-string v5, "Content-Type"

    const-string v6, "application/json; charset=UTF-8"

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 344
    const-string v5, "Authorization"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Navigation;->apiKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{\"coordinates\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 347
    invoke-direct/range {p0 .. p2}, Lcom/google/appinventor/components/runtime/Navigation;->getCoordinates(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;)[[Ljava/lang/Double;

    move-result-object v6

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", \"language\": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/Navigation;->language:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 349
    .local v14, "coords":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v14, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    .line 350
    .local v21, "postData":[B
    move-object/from16 v0, v21

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 351
    new-instance v20, Ljava/io/BufferedOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 353
    .local v20, "out":Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, v21

    array-length v6, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 354
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    .line 359
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "RequestDirections"

    const/16 v24, 0xfa3

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 361
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    .line 362
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 360
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v5, v0, v6, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 395
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 397
    .end local v14    # "coords":Ljava/lang/String;
    .end local v20    # "out":Ljava/io/BufferedOutputStream;
    .end local v21    # "postData":[B
    :goto_0
    return-void

    .line 356
    .restart local v14    # "coords":Ljava/lang/String;
    .restart local v20    # "out":Ljava/io/BufferedOutputStream;
    .restart local v21    # "postData":[B
    :catchall_0
    move-exception v5

    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/io/BufferedOutputStream;->close()V

    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 390
    .end local v14    # "coords":Ljava/lang/String;
    .end local v20    # "out":Ljava/io/BufferedOutputStream;
    .end local v21    # "postData":[B
    :catch_0
    move-exception v15

    .line 391
    .local v15, "e":Ljava/lang/Exception;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "RequestDirections"

    const/16 v24, 0xfa2

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    .line 392
    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    .line 391
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v5, v0, v6, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 393
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 395
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 365
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v14    # "coords":Ljava/lang/String;
    .restart local v20    # "out":Ljava/io/BufferedOutputStream;
    .restart local v21    # "postData":[B
    :cond_0
    :try_start_5
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Navigation;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v19

    .line 366
    .local v19, "geoJson":Ljava/lang/String;
    const-string v5, "Navigation"

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 368
    .local v7, "response":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v5, "features"

    invoke-virtual {v7, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 369
    .local v17, "features":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 370
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 371
    .local v16, "feature":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v24, "properties"

    aput-object v24, v5, v6

    const/4 v6, 0x1

    const-string v24, "summary"

    aput-object v24, v5, v6

    .line 372
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 373
    .local v22, "summary":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v5, "distance"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 374
    .local v10, "distance":D
    const-string v5, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    .line 375
    .local v12, "duration":D
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/Navigation;->getDirections(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v8

    .line 376
    .local v8, "directions":Lcom/google/appinventor/components/runtime/util/YailList;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/Navigation;->getLineStringCoords(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v9

    .line 378
    .local v9, "coordinates":Lcom/google/appinventor/components/runtime/util/YailList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object/from16 v24, v0

    new-instance v5, Lcom/google/appinventor/components/runtime/Navigation$2;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/google/appinventor/components/runtime/Navigation$2;-><init>(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 395
    .end local v8    # "directions":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v9    # "coordinates":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v10    # "distance":D
    .end local v12    # "duration":D
    .end local v16    # "feature":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v22    # "summary":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :goto_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 387
    :cond_1
    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v6, "RequestDirections"

    const/16 v24, 0xfa4

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v5, v0, v6, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 395
    .end local v7    # "response":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v14    # "coords":Ljava/lang/String;
    .end local v17    # "features":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v19    # "geoJson":Ljava/lang/String;
    .end local v20    # "out":Ljava/io/BufferedOutputStream;
    .end local v21    # "postData":[B
    :catchall_1
    move-exception v5

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v5
.end method


# virtual methods
.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "API Key for Open Route Service."
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->apiKey:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public EndLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the end location."
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public EndLatitude(D)V
    .locals 7
    .param p1, "latitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 210
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const-string v1, "EndLatitude"

    const/16 v2, 0xd55

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 214
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 213
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public EndLocation(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 11
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the end location."
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 270
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    .line 271
    .local v4, "point":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    .line 272
    .local v0, "latitude":D
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    .line 273
    .local v2, "longitude":D
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v5

    const-string v6, "SetEndLocation"

    const/16 v7, 0xd55

    new-array v8, v8, [Ljava/lang/Object;

    .line 275
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    .line 274
    invoke-interface {v5, p0, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 282
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v5

    if-nez v5, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v5

    const-string v6, "SetEndLocation"

    const/16 v7, 0xd56

    new-array v8, v8, [Ljava/lang/Object;

    .line 278
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    .line 277
    invoke-interface {v5, p0, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    goto :goto_0
.end method

.method public EndLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the end location."
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public EndLongitude(D)V
    .locals 7
    .param p1, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 228
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const-string v1, "EndLongitude"

    const/16 v2, 0xd56

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 232
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 231
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public GotDirections(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V
    .locals 5
    .param p1, "directions"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "points"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p3, "distance"    # D
    .param p5, "duration"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the Openrouteservice returns the directions."
    .end annotation

    .prologue
    .line 329
    const-string v0, "Navigation"

    const-string v1, "GotDirections"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v0, "GotDirections"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 331
    return-void
.end method

.method public Language()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->language:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "en"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The language to use for textual directions."
    .end annotation

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->language:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public RequestDirections()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Request directions from the routing service."
    .end annotation

    .prologue
    .line 110
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Navigation;->apiKey:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "Authorization"

    const/16 v5, 0xfa1

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 132
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    .line 115
    .local v2, "startLocation":Lorg/osmdroid/util/GeoPoint;
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->endLocation:Lorg/osmdroid/util/GeoPoint;

    .line 116
    .local v0, "endLocation":Lorg/osmdroid/util/GeoPoint;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Navigation;->method:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    .line 117
    .local v1, "method":Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;
    new-instance v3, Lcom/google/appinventor/components/runtime/Navigation$1;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/google/appinventor/components/runtime/Navigation$1;-><init>(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public ResponseContent()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Content of the last response as a dictionary."
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->lastResponse:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->serviceUrl:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public StartLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the start location."
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public StartLatitude(D)V
    .locals 7
    .param p1, "latitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 158
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const-string v1, "StartLatitude"

    const/16 v2, 0xd55

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 162
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 161
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public StartLocation(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 11
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the start location."
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 192
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    .line 193
    .local v4, "point":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    .line 194
    .local v0, "latitude":D
    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    .line 195
    .local v2, "longitude":D
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v5

    if-nez v5, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v5

    const-string v6, "SetStartLocation"

    const/16 v7, 0xd55

    new-array v8, v8, [Ljava/lang/Object;

    .line 197
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    .line 196
    invoke-interface {v5, p0, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 204
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v5

    if-nez v5, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v5

    const-string v6, "SetStartLocation"

    const/16 v7, 0xd56

    new-array v8, v8, [Ljava/lang/Object;

    .line 200
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v10

    .line 199
    invoke-interface {v5, p0, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    goto :goto_0
.end method

.method public StartLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the start location."
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public StartLongitude(D)V
    .locals 7
    .param p1, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 176
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->startLocation:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const-string v1, "StartLongitude"

    const/16 v2, 0xd56

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 180
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 179
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public TransportationMethod()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->method:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->access$100(Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TransportationMethod(Ljava/lang/String;)V
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "foot-walking"
        editorType = "navigation_method"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The transportation method used for determining the route."
    .end annotation

    .prologue
    .line 261
    invoke-static {}, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->values()[Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 262
    .local v0, "t":Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->access$100(Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->method:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    .line 261
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "t":Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;
    :cond_1
    return-void
.end method
