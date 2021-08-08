.class public Lorg/locationtech/jts/io/gml2/GeometryStrategies;
.super Ljava/lang/Object;
.source "GeometryStrategies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;
    }
.end annotation


# static fields
.field private static strategies:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lorg/locationtech/jts/io/gml2/GeometryStrategies;->loadStrategies()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/locationtech/jts/io/gml2/GeometryStrategies;->strategies:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findStrategy(Ljava/lang/String;Ljava/lang/String;)Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "localName"    # Ljava/lang/String;

    .prologue
    .line 525
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/locationtech/jts/io/gml2/GeometryStrategies;->strategies:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;

    goto :goto_0
.end method

.method static getSrid(Lorg/xml/sax/Attributes;I)I
    .locals 5
    .param p0, "attrs"    # Lorg/xml/sax/Attributes;
    .param p1, "defaultValue"    # I

    .prologue
    .line 489
    const/4 v2, 0x0

    .line 490
    .local v2, "srs":Ljava/lang/String;
    const-string v3, "srsName"

    invoke-interface {p0, v3}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 491
    const-string v3, "srsName"

    invoke-interface {p0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 496
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 497
    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 499
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 514
    .end local p1    # "defaultValue":I
    :cond_1
    :goto_1
    return p1

    .line 492
    .restart local p1    # "defaultValue":I
    :cond_2
    const-string v3, "http://www.opengis.net/gml"

    const-string v4, "srsName"

    invoke-interface {p0, v3, v4}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 493
    const-string v3, "http://www.opengis.net/gml"

    const-string v4, "srsName"

    invoke-interface {p0, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 503
    .local v1, "index":I
    const/4 v3, -0x1

    if-le v1, v3, :cond_3

    .line 504
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 506
    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p1

    goto :goto_1

    .line 507
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private static loadStrategies()Ljava/util/HashMap;
    .locals 5

    .prologue
    .line 66
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v2, "strats":Ljava/util/HashMap;
    const-string v3, "Point"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/locationtech/jts/io/gml2/GeometryStrategies$1;

    invoke-direct {v4}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$1;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v3, "LineString"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/locationtech/jts/io/gml2/GeometryStrategies$2;

    invoke-direct {v4}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$2;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v3, "LinearRing"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/locationtech/jts/io/gml2/GeometryStrategies$3;

    invoke-direct {v4}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$3;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v3, "Polygon"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/locationtech/jts/io/gml2/GeometryStrategies$4;

    invoke-direct {v4}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$4;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v3, "Box"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/locationtech/jts/io/gml2/GeometryStrategies$5;

    invoke-direct {v4}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$5;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v3, "MultiPoint"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/locationtech/jts/io/gml2/GeometryStrategies$6;

    invoke-direct {v4}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$6;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v3, "MultiLineString"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/locationtech/jts/io/gml2/GeometryStrategies$7;

    invoke-direct {v4}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$7;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v3, "MultiPolygon"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/locationtech/jts/io/gml2/GeometryStrategies$8;

    invoke-direct {v4}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$8;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v3, "MultiGeometry"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/locationtech/jts/io/gml2/GeometryStrategies$9;

    invoke-direct {v4}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$9;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v3, "coordinates"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/locationtech/jts/io/gml2/GeometryStrategies$10;

    invoke-direct {v4}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$10;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v3, "coord"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/locationtech/jts/io/gml2/GeometryStrategies$11;

    invoke-direct {v4}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$11;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v0, Lorg/locationtech/jts/io/gml2/GeometryStrategies$12;

    invoke-direct {v0}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$12;-><init>()V

    .line 450
    .local v0, "coord_child":Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;
    const-string v3, "X"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v3, "Y"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v3, "Z"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    new-instance v1, Lorg/locationtech/jts/io/gml2/GeometryStrategies$13;

    invoke-direct {v1}, Lorg/locationtech/jts/io/gml2/GeometryStrategies$13;-><init>()V

    .line 471
    .local v1, "member":Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;
    const-string v3, "outerBoundaryIs"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v3, "innerBoundaryIs"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v3, "pointMember"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v3, "lineStringMember"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string v3, "polygonMember"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    return-object v2
.end method
