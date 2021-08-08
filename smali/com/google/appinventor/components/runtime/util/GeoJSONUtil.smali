.class public final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.super Ljava/lang/Object;
.source "GeoJSONUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;,
        Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;
    }
.end annotation


# static fields
.field private static final ERROR_CODE_MALFORMED_GEOJSON:I = -0x3

.field private static final ERROR_MALFORMED_GEOJSON:Ljava/lang/String; = "Malformed GeoJSON response. Expected FeatureCollection as root element."

.field private static final ERROR_UNKNOWN_TYPE:Ljava/lang/String; = "Unrecognized/invalid type in JSON object"

.field private static final GEOJSON_COORDINATES:Ljava/lang/String; = "coordinates"

.field private static final GEOJSON_FEATURE:Ljava/lang/String; = "Feature"

.field private static final GEOJSON_FEATURECOLLECTION:Ljava/lang/String; = "FeatureCollection"

.field private static final GEOJSON_FEATURES:Ljava/lang/String; = "features"

.field private static final GEOJSON_GEOMETRY:Ljava/lang/String; = "geometry"

.field private static final GEOJSON_GEOMETRYCOLLECTION:Ljava/lang/String; = "GeometryCollection"

.field private static final GEOJSON_PROPERTIES:Ljava/lang/String; = "properties"

.field private static final GEOJSON_TYPE:Ljava/lang/String; = "type"

.field private static final KEY:I = 0x1

.field private static final LATITUDE:I = 0x2

.field private static final LONGITUDE:I = 0x1

.field private static final PROPERTY_ANCHOR_HORIZONTAL:Ljava/lang/String; = "anchorHorizontal"

.field private static final PROPERTY_ANCHOR_VERTICAL:Ljava/lang/String; = "anchorVertical"

.field private static final PROPERTY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final PROPERTY_DRAGGABLE:Ljava/lang/String; = "draggable"

.field private static final PROPERTY_FILL:Ljava/lang/String; = "fill"

.field private static final PROPERTY_FILL_OPACITY:Ljava/lang/String; = "fill-opacity"

.field private static final PROPERTY_HEIGHT:Ljava/lang/String; = "height"

.field private static final PROPERTY_IMAGE:Ljava/lang/String; = "image"

.field private static final PROPERTY_INFOBOX:Ljava/lang/String; = "infobox"

.field private static final PROPERTY_STROKE:Ljava/lang/String; = "stroke"

.field private static final PROPERTY_STROKE_OPACITY:Ljava/lang/String; = "stroke-opacity"

.field private static final PROPERTY_STROKE_WIDTH:Ljava/lang/String; = "stroke-width"

.field private static final PROPERTY_TITLE:Ljava/lang/String; = "title"

.field private static final PROPERTY_VISIBLE:Ljava/lang/String; = "visible"

.field private static final PROPERTY_WIDTH:Ljava/lang/String; = "width"

.field private static final SUPPORTED_PROPERTIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE:I = 0x2

.field private static final colors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    .line 87
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "black"

    const/high16 v2, -0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "blue"

    const v2, -0xffff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "cyan"

    const v2, -0xff0001

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "darkgray"

    const v2, -0xbbbbbc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "gray"

    const v2, -0x777778

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "green"

    const v2, -0xff0100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "lightgray"

    const v2, -0x333334

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "magenta"

    const v2, -0xff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "orange"

    const/16 v2, -0x3800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "pink"

    const/16 v2, -0x5051

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "red"

    const/high16 v2, -0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "white"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    const-string v1, "yellow"

    const/16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    .line 102
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "anchorHorizontal"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "anchorVertical"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$2;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "description"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$3;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "draggable"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$4;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "fill"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$5;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "fill-opacity"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$6;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "height"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$7;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "image"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$8;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "infobox"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$9;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$9;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "stroke"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$10;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$10;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "stroke-opacity"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$11;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$11;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "stroke-width"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$12;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$12;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "title"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$13;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$13;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "width"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$14;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$14;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    const-string v1, "visible"

    new-instance v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$15;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$15;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static charToHex(C)I
    .locals 2
    .param p0, "c"    # C
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 267
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 268
    add-int/lit8 v0, p0, -0x30

    .line 272
    :goto_0
    return v0

    .line 269
    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 270
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 271
    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 272
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 274
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid hex character. Expected [0-9A-Fa-f]."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getGeoJSONFeatures(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 454
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->stripBOM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 455
    .local v2, "parsedData":Lorg/json/JSONObject;
    const-string v4, "features"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 456
    .local v0, "features":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v3, "yailFeatures":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 458
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->jsonObjectToYail(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    :cond_0
    return-object v3
.end method

.method public static getGeoJSONType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "geojsonType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 464
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->stripBOM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, "parsedData":Lorg/json/JSONObject;
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "type":Ljava/lang/String;
    return-object v1
.end method

.method private static jsonArrayToYail(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 495
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 497
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 498
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Long;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/Double;

    if-nez v3, :cond_0

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 503
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 504
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_3

    .line 505
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->jsonArrayToYail(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 506
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_4

    .line 507
    check-cast v2, Lorg/json/JSONObject;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->jsonObjectToYail(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 508
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_4
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized/invalid type in JSON object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unrecognized/invalid type in JSON object"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 513
    .end local v2    # "value":Ljava/lang/Object;
    :cond_5
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    return-object v3
.end method

.method private static jsonObjectToYail(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 9
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 470
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v2, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 473
    .local v0, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 474
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 475
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 476
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Boolean;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 481
    :cond_1
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v6

    aput-object v3, v4, v7

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    :cond_2
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    .line 483
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v6

    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {p0, v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->jsonArrayToYail(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_4

    .line 485
    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v6

    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {p0, v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->jsonObjectToYail(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 486
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_4
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 487
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized/invalid type in JSON object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unrecognized/invalid type in JSON object"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 491
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_5
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    return-object v4
.end method

.method private static lineStringFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .locals 3
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 359
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 360
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Too few coordinates supplied in GeoJSON"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/LineString;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/LineString;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 363
    .local v0, "lineString":Lcom/google/appinventor/components/runtime/LineString;
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LineString;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 364
    return-object v0
.end method

.method private static markerFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .locals 4
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 348
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 349
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid coordinate supplied in GeoJSON"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Marker;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Marker;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 352
    .local v0, "marker":Lcom/google/appinventor/components/runtime/Marker;
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/appinventor/components/runtime/Marker;->Latitude(D)V

    .line 353
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/appinventor/components/runtime/Marker;->Longitude(D)V

    .line 354
    return-object v0
.end method

.method private static multipolygonFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .locals 6
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 382
    new-instance v4, Lcom/google/appinventor/components/runtime/Polygon;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/Polygon;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 383
    .local v4, "polygon":Lcom/google/appinventor/components/runtime/Polygon;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v3, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v0, "holePoints":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 386
    .local v1, "i":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 387
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 389
    .local v2, "list":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/Pair;

    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/LList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 392
    .end local v2    # "list":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_0
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Polygon;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 393
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Polygon;->HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 394
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Polygon;->Initialize()V

    .line 395
    return-object v4
.end method

.method static parseBooleanOrString(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 416
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 417
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 421
    .restart local p0    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .line 418
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 419
    const-string v1, "false"

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 420
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_3

    .line 421
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseBooleanOrString(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 423
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static parseColor(Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "lcValue":Ljava/lang/String;
    sget-object v2, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->colors:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 222
    .local v1, "result":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 229
    :goto_0
    return v2

    .line 224
    :cond_0
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseColorHex(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 226
    :cond_1
    const-string v2, "&h"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseColorHex(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 229
    :cond_2
    const/high16 v2, -0x10000

    goto :goto_0
.end method

.method static parseColorHex(Ljava/lang/String;)I
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "argb":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 238
    const/high16 v0, -0x1000000

    .line 240
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 241
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v1

    .line 242
    .local v1, "hex":I
    shl-int/lit8 v3, v1, 0x4

    or-int/2addr v3, v1

    rsub-int/lit8 v4, v2, 0x2

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "hex":I
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 246
    const/high16 v0, -0x1000000

    .line 248
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 249
    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v4

    or-int v1, v3, v4

    .line 250
    .restart local v1    # "hex":I
    rsub-int/lit8 v3, v2, 0x2

    mul-int/lit8 v3, v3, 0x8

    shl-int v3, v1, v3

    or-int/2addr v0, v3

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    .end local v1    # "hex":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 255
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    .line 256
    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->charToHex(C)I

    move-result v4

    or-int v1, v3, v4

    .line 257
    .restart local v1    # "hex":I
    rsub-int/lit8 v3, v2, 0x3

    mul-int/lit8 v3, v3, 0x8

    shl-int v3, v1, v3

    or-int/2addr v0, v3

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 260
    .end local v1    # "hex":I
    .end local v2    # "i":I
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 262
    .restart local v2    # "i":I
    :cond_3
    return v0
.end method

.method static parseFloatOrString(Ljava/lang/Object;)F
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 442
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 443
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 447
    .restart local p0    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .line 444
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 445
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 446
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    .line 449
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static parseIntegerOrString(Ljava/lang/Object;)I
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 429
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 430
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 434
    .restart local p0    # "value":Ljava/lang/Object;
    :goto_0
    return v0

    .line 431
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 432
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 433
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_2

    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 436
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static polygonFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .locals 3
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 369
    new-instance v1, Lcom/google/appinventor/components/runtime/Polygon;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Polygon;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V

    .line 370
    .local v1, "polygon":Lcom/google/appinventor/components/runtime/Polygon;
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 371
    .local v0, "i":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 372
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Polygon;->Points(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 373
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Polygon;->HolePoints(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 376
    :cond_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Polygon;->Initialize()V

    .line 377
    return-object v1
.end method

.method private static processCoordinates(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .locals 1
    .param p0, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 334
    const-string v0, "Point"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->markerFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    move-result-object v0

    .line 341
    :goto_0
    return-object v0

    .line 336
    :cond_0
    const-string v0, "LineString"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->lineStringFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_1
    const-string v0, "Polygon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->polygonFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-result-object v0

    goto :goto_0

    .line 340
    :cond_2
    const-string v0, "MultiPolygon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 341
    invoke-static {p0, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->multipolygonFromGeoJSON(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static processGeoJSONFeature(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .locals 13
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p2, "descriptions"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 280
    const/4 v6, 0x0

    .line 281
    .local v6, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 282
    .local v1, "geometry":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v5, 0x0

    .line 283
    .local v5, "properties":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/lists/LList;

    invoke-virtual {v8}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "o":Ljava/lang/Object;
    move-object v3, v4

    .line 284
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 285
    .local v3, "keyvalue":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v3, v11}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v12}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v7

    .line 287
    .local v7, "value":Ljava/lang/Object;
    const-string v9, "type"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v6, v7

    .line 288
    check-cast v6, Ljava/lang/String;

    goto :goto_0

    .line 289
    :cond_0
    const-string v9, "geometry"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v1, v7

    .line 290
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_0

    .line 291
    :cond_1
    const-string v9, "properties"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v5, v7

    .line 292
    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_0

    .line 294
    :cond_2
    const-string v9, "Unsupported field \"%s\" in JSON format"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v2, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 297
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyvalue":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v4    # "o":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    const-string v8, "Feature"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 298
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Unknown type \"%s\""

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 300
    :cond_4
    if-nez v1, :cond_5

    .line 301
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "No geometry defined for feature."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 303
    :cond_5
    invoke-static {p0, p1, v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processGeometry(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-result-object v0

    .line 304
    .local v0, "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    if-eqz v5, :cond_6

    .line 305
    invoke-static {p0, v0, v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processProperties(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 307
    :cond_6
    return-object v0
.end method

.method private static processGeometry(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .locals 11
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .param p2, "geometry"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 312
    const/4 v4, 0x0

    .line 313
    .local v4, "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 314
    .local v0, "coordinates":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/lists/LList;

    invoke-virtual {v6}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "o":Ljava/lang/Object;
    move-object v2, v3

    .line 315
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 316
    .local v2, "keyvalue":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v2, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    .line 318
    .local v5, "value":Ljava/lang/Object;
    const-string v7, "type"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v4, v5

    .line 319
    check-cast v4, Ljava/lang/String;

    goto :goto_0

    .line 320
    :cond_0
    const-string v7, "coordinates"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v0, v5

    .line 321
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_0

    .line 323
    :cond_1
    const-string v7, "Unsupported field \"%s\" in JSON format"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keyvalue":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v3    # "o":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    if-nez v0, :cond_3

    .line 327
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "No coordinates found in GeoJSON Feature"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 329
    :cond_3
    invoke-static {p1, v4, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->processCoordinates(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-result-object v6

    return-object v6
.end method

.method private static processProperties(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 9
    .param p0, "logTag"    # Ljava/lang/String;
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "properties"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    const/4 v8, 0x1

    .line 400
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 401
    .local v2, "o":Ljava/lang/Object;
    instance-of v5, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 402
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 403
    .local v3, "pair":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v3, v8}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "key":Ljava/lang/String;
    sget-object v5, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->SUPPORTED_PROPERTIES:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;

    .line 405
    .local v0, "application":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;
    if-eqz v0, :cond_1

    .line 406
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, p1, v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;->apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V

    goto :goto_0

    .line 408
    :cond_1
    const-string v5, "Ignoring GeoJSON property \"%s\""

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    .end local v0    # "application":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "pair":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_2
    return-void
.end method

.method private static stripBOM(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 518
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 520
    .end local p0    # "content":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 5
    .param p0, "coordinates"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 791
    .local v1, "i":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 792
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 793
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 794
    .local v0, "coordinate":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 795
    .local v3, "temp":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/Pair;

    .line 796
    .local v2, "p":Lgnu/lists/Pair;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    .line 797
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "p":Lgnu/lists/Pair;
    check-cast v2, Lgnu/lists/Pair;

    .line 798
    .restart local v2    # "p":Lgnu/lists/Pair;
    invoke-virtual {v2, v3}, Lgnu/lists/Pair;->setCar(Ljava/lang/Object;)V

    goto :goto_0

    .line 800
    .end local v0    # "coordinate":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v2    # "p":Lgnu/lists/Pair;
    .end local v3    # "temp":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method public static swapCoordinates2(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TE;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "coordinates":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TE;>;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 804
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 805
    .local v0, "point":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 806
    .local v1, "temp":Ljava/lang/Object;, "TE;"
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 807
    invoke-interface {v0, v5, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 809
    .end local v0    # "point":Ljava/util/List;, "Ljava/util/List<TE;>;"
    .end local v1    # "temp":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object p0
.end method

.method public static swapNestedCoordinates(Lgnu/lists/LList;)Lgnu/lists/LList;
    .locals 2
    .param p0, "coordinates"    # Lgnu/lists/LList;

    .prologue
    .line 813
    move-object v0, p0

    .line 814
    .local v0, "it":Lgnu/lists/LList;
    :goto_0
    invoke-virtual {v0}, Lgnu/lists/LList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 815
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/lists/LList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    .line 816
    check-cast v0, Lgnu/lists/Pair;

    .end local v0    # "it":Lgnu/lists/LList;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/LList;

    .restart local v0    # "it":Lgnu/lists/LList;
    goto :goto_0

    .line 818
    :cond_0
    return-object p0
.end method

.method public static writeFeaturesAsGeoJSON(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    .local p0, "featuresToSave":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    const/4 v2, 0x0

    .line 763
    .local v2, "out":Ljava/io/PrintStream;
    :try_start_0
    new-instance v3, Ljava/io/PrintStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 764
    .end local v2    # "out":Ljava/io/PrintStream;
    .local v3, "out":Ljava/io/PrintStream;
    :try_start_1
    new-instance v4, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;-><init>(Ljava/io/PrintStream;Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$1;)V

    .line 765
    .local v4, "writer":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
    const-string v5, "{\"type\": \"FeatureCollection\", \"features\":["

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 767
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 768
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 769
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 770
    .local v0, "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 772
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    .line 773
    .restart local v0    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(C)V

    .line 774
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 779
    .end local v0    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    .end local v4    # "writer":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
    :catchall_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "out":Ljava/io/PrintStream;
    .restart local v2    # "out":Ljava/io/PrintStream;
    :goto_1
    const-string v6, "GeoJSONUtil"

    invoke-static {v6, v2}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v5

    .line 777
    .end local v2    # "out":Ljava/io/PrintStream;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    .restart local v3    # "out":Ljava/io/PrintStream;
    .restart local v4    # "writer":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
    :cond_0
    :try_start_2
    const-string v5, "]}"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 779
    const-string v5, "GeoJSONUtil"

    invoke-static {v5, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 781
    return-void

    .line 779
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;>;"
    .end local v3    # "out":Ljava/io/PrintStream;
    .end local v4    # "writer":Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$FeatureWriter;
    .restart local v2    # "out":Ljava/io/PrintStream;
    :catchall_1
    move-exception v5

    goto :goto_1
.end method
