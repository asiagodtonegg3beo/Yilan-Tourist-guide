.class final Lorg/locationtech/jts/io/gml2/GeometryStrategies$11;
.super Ljava/lang/Object;
.source "GeometryStrategies.java"

# interfaces
.implements Lorg/locationtech/jts/io/gml2/GeometryStrategies$ParseStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/locationtech/jts/io/gml2/GeometryStrategies;->loadStrategies()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;Lorg/locationtech/jts/geom/GeometryFactory;)Ljava/lang/Object;
    .locals 6
    .param p1, "arg"    # Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;
    .param p2, "gf"    # Lorg/locationtech/jts/geom/GeometryFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 423
    iget-object v2, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 424
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Cannot create a coordinate without atleast one axis"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    :cond_0
    iget-object v2, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 426
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Cannot create a coordinate with more than 3 axis"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 428
    :cond_1
    iget-object v2, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    iget-object v3, p1, Lorg/locationtech/jts/io/gml2/GMLHandler$Handler;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Double;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Double;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Double;

    .line 429
    .local v0, "axis":[Ljava/lang/Double;
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>()V

    .line 430
    .local v1, "c":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 431
    array-length v2, v0

    if-le v2, v4, :cond_2

    .line 432
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 433
    :cond_2
    array-length v2, v0

    if-le v2, v5, :cond_3

    .line 434
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 436
    :cond_3
    return-object v1
.end method
