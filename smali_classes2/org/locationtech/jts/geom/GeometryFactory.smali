.class public Lorg/locationtech/jts/geom/GeometryFactory;
.super Ljava/lang/Object;
.source "GeometryFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5ea75f2051eeb313L


# instance fields
.field private SRID:I

.field private coordinateSequenceFactory:Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

.field private precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/PrecisionModel;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/CoordinateSequenceFactory;)V
    .locals 2
    .param p1, "coordinateSequenceFactory"    # Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    .prologue
    .line 67
    new-instance v0, Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/PrecisionModel;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;ILorg/locationtech/jts/geom/CoordinateSequenceFactory;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 2
    .param p1, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-static {}, Lorg/locationtech/jts/geom/GeometryFactory;->getDefaultCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;ILorg/locationtech/jts/geom/CoordinateSequenceFactory;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V
    .locals 1
    .param p1, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p2, "SRID"    # I

    .prologue
    .line 90
    invoke-static {}, Lorg/locationtech/jts/geom/GeometryFactory;->getDefaultCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;ILorg/locationtech/jts/geom/CoordinateSequenceFactory;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;ILorg/locationtech/jts/geom/CoordinateSequenceFactory;)V
    .locals 0
    .param p1, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p2, "SRID"    # I
    .param p3, "coordinateSequenceFactory"    # Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/locationtech/jts/geom/GeometryFactory;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 57
    iput-object p3, p0, Lorg/locationtech/jts/geom/GeometryFactory;->coordinateSequenceFactory:Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    .line 58
    iput p2, p0, Lorg/locationtech/jts/geom/GeometryFactory;->SRID:I

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/CoordinateSequenceFactory;
    .locals 1
    .param p0, "x0"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 35
    iget-object v0, p0, Lorg/locationtech/jts/geom/GeometryFactory;->coordinateSequenceFactory:Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    return-object v0
.end method

.method public static createPointFromInternalCoord(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Point;
    .locals 1
    .param p0, "coord"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "exemplar"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 46
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 47
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lorg/locationtech/jts/geom/impl/CoordinateArraySequenceFactory;->instance()Lorg/locationtech/jts/geom/impl/CoordinateArraySequenceFactory;

    move-result-object v0

    return-object v0
.end method

.method public static toGeometryArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p0, "geometries"    # Ljava/util/Collection;

    .prologue
    .line 124
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 125
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Lorg/locationtech/jts/geom/Geometry;

    .line 126
    .local v0, "geometryArray":[Lorg/locationtech/jts/geom/Geometry;
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/locationtech/jts/geom/Geometry;

    check-cast v1, [Lorg/locationtech/jts/geom/Geometry;

    goto :goto_0
.end method

.method public static toLineStringArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/LineString;
    .locals 2
    .param p0, "lineStrings"    # Ljava/util/Collection;

    .prologue
    .line 147
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Lorg/locationtech/jts/geom/LineString;

    .line 148
    .local v0, "lineStringArray":[Lorg/locationtech/jts/geom/LineString;
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/locationtech/jts/geom/LineString;

    check-cast v1, [Lorg/locationtech/jts/geom/LineString;

    return-object v1
.end method

.method public static toLinearRingArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/LinearRing;
    .locals 2
    .param p0, "linearRings"    # Ljava/util/Collection;

    .prologue
    .line 136
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Lorg/locationtech/jts/geom/LinearRing;

    .line 137
    .local v0, "linearRingArray":[Lorg/locationtech/jts/geom/LinearRing;
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/locationtech/jts/geom/LinearRing;

    check-cast v1, [Lorg/locationtech/jts/geom/LinearRing;

    return-object v1
.end method

.method public static toMultiLineStringArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/MultiLineString;
    .locals 2
    .param p0, "multiLineStrings"    # Ljava/util/Collection;

    .prologue
    .line 180
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Lorg/locationtech/jts/geom/MultiLineString;

    .line 181
    .local v0, "multiLineStringArray":[Lorg/locationtech/jts/geom/MultiLineString;
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/locationtech/jts/geom/MultiLineString;

    check-cast v1, [Lorg/locationtech/jts/geom/MultiLineString;

    return-object v1
.end method

.method public static toMultiPointArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/MultiPoint;
    .locals 2
    .param p0, "multiPoints"    # Ljava/util/Collection;

    .prologue
    .line 191
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Lorg/locationtech/jts/geom/MultiPoint;

    .line 192
    .local v0, "multiPointArray":[Lorg/locationtech/jts/geom/MultiPoint;
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/locationtech/jts/geom/MultiPoint;

    check-cast v1, [Lorg/locationtech/jts/geom/MultiPoint;

    return-object v1
.end method

.method public static toMultiPolygonArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/MultiPolygon;
    .locals 2
    .param p0, "multiPolygons"    # Ljava/util/Collection;

    .prologue
    .line 169
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Lorg/locationtech/jts/geom/MultiPolygon;

    .line 170
    .local v0, "multiPolygonArray":[Lorg/locationtech/jts/geom/MultiPolygon;
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/locationtech/jts/geom/MultiPolygon;

    check-cast v1, [Lorg/locationtech/jts/geom/MultiPolygon;

    return-object v1
.end method

.method public static toPointArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Point;
    .locals 2
    .param p0, "points"    # Ljava/util/Collection;

    .prologue
    .line 113
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Lorg/locationtech/jts/geom/Point;

    .line 114
    .local v0, "pointArray":[Lorg/locationtech/jts/geom/Point;
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/locationtech/jts/geom/Point;

    check-cast v1, [Lorg/locationtech/jts/geom/Point;

    return-object v1
.end method

.method public static toPolygonArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Polygon;
    .locals 2
    .param p0, "polygons"    # Ljava/util/Collection;

    .prologue
    .line 158
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v0, v1, [Lorg/locationtech/jts/geom/Polygon;

    .line 159
    .local v0, "polygonArray":[Lorg/locationtech/jts/geom/Polygon;
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/locationtech/jts/geom/Polygon;

    check-cast v1, [Lorg/locationtech/jts/geom/Polygon;

    return-object v1
.end method


# virtual methods
.method public buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;
    .locals 10
    .param p1, "geomList"    # Ljava/util/Collection;

    .prologue
    const/4 v5, 0x1

    .line 474
    const/4 v2, 0x0

    .line 475
    .local v2, "geomClass":Ljava/lang/Class;
    const/4 v6, 0x0

    .line 476
    .local v6, "isHeterogeneous":Z
    const/4 v3, 0x0

    .line 477
    .local v3, "hasGeometryCollection":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 478
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Geometry;

    .line 479
    .local v0, "geom":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 480
    .local v7, "partClass":Ljava/lang/Class;
    if-nez v2, :cond_1

    .line 481
    move-object v2, v7

    .line 483
    :cond_1
    if-eq v7, v2, :cond_2

    .line 484
    const/4 v6, 0x1

    .line 486
    :cond_2
    instance-of v8, v0, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v8, :cond_0

    .line 487
    const/4 v3, 0x1

    goto :goto_0

    .line 494
    .end local v0    # "geom":Lorg/locationtech/jts/geom/Geometry;
    .end local v7    # "partClass":Ljava/lang/Class;
    :cond_3
    if-nez v2, :cond_5

    .line 495
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v1

    .line 517
    :cond_4
    :goto_1
    return-object v1

    .line 497
    :cond_5
    if-nez v6, :cond_6

    if-eqz v3, :cond_7

    .line 498
    :cond_6
    invoke-static {p1}, Lorg/locationtech/jts/geom/GeometryFactory;->toGeometryArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Geometry;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v1

    goto :goto_1

    .line 503
    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Geometry;

    .line 504
    .local v1, "geom0":Lorg/locationtech/jts/geom/Geometry;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    if-le v8, v5, :cond_8

    .line 505
    .local v5, "isCollection":Z
    :goto_2
    if-eqz v5, :cond_4

    .line 506
    instance-of v8, v1, Lorg/locationtech/jts/geom/Polygon;

    if-eqz v8, :cond_9

    .line 507
    invoke-static {p1}, Lorg/locationtech/jts/geom/GeometryFactory;->toPolygonArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Polygon;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPolygon([Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object v1

    goto :goto_1

    .line 504
    .end local v5    # "isCollection":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    .line 509
    .restart local v5    # "isCollection":Z
    :cond_9
    instance-of v8, v1, Lorg/locationtech/jts/geom/LineString;

    if-eqz v8, :cond_a

    .line 510
    invoke-static {p1}, Lorg/locationtech/jts/geom/GeometryFactory;->toLineStringArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/LineString;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v1

    goto :goto_1

    .line 512
    :cond_a
    instance-of v8, v1, Lorg/locationtech/jts/geom/Point;

    if-eqz v8, :cond_b

    .line 513
    invoke-static {p1}, Lorg/locationtech/jts/geom/GeometryFactory;->toPointArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Point;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Point;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v1

    goto :goto_1

    .line 515
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/locationtech/jts/util/Assert;->shouldNeverReachHere(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public createGeometry(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 558
    new-instance v0, Lorg/locationtech/jts/geom/util/GeometryEditor;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/geom/util/GeometryEditor;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 559
    .local v0, "editor":Lorg/locationtech/jts/geom/util/GeometryEditor;
    new-instance v1, Lorg/locationtech/jts/geom/GeometryFactory$1;

    invoke-direct {v1, p0}, Lorg/locationtech/jts/geom/GeometryFactory$1;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    invoke-virtual {v0, p1, v1}, Lorg/locationtech/jts/geom/util/GeometryEditor;->edit(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/util/GeometryEditor$GeometryEditorOperation;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method public createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;
    .locals 1
    .param p1, "geometries"    # [Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 296
    new-instance v0, Lorg/locationtech/jts/geom/GeometryCollection;

    invoke-direct {v0, p1, p0}, Lorg/locationtech/jts/geom/GeometryCollection;-><init>([Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/GeometryFactory;)V

    return-object v0
.end method

.method public createLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LineString;
    .locals 1
    .param p1, "coordinates"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 536
    new-instance v0, Lorg/locationtech/jts/geom/LineString;

    invoke-direct {v0, p1, p0}, Lorg/locationtech/jts/geom/LineString;-><init>(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/GeometryFactory;)V

    return-object v0
.end method

.method public createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;
    .locals 1
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 527
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createLinearRing(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LinearRing;
    .locals 1
    .param p1, "coordinates"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 336
    new-instance v0, Lorg/locationtech/jts/geom/LinearRing;

    invoke-direct {v0, p1, p0}, Lorg/locationtech/jts/geom/LinearRing;-><init>(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/GeometryFactory;)V

    return-object v0
.end method

.method public createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;
    .locals 1
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 323
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;
    .locals 1
    .param p1, "lineStrings"    # [Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 285
    new-instance v0, Lorg/locationtech/jts/geom/MultiLineString;

    invoke-direct {v0, p1, p0}, Lorg/locationtech/jts/geom/MultiLineString;-><init>([Lorg/locationtech/jts/geom/LineString;Lorg/locationtech/jts/geom/GeometryFactory;)V

    return-object v0
.end method

.method public createMultiPoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/MultiPoint;
    .locals 7
    .param p1, "coordinates"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 372
    if-nez p1, :cond_0

    .line 373
    new-array v3, v5, [Lorg/locationtech/jts/geom/Point;

    invoke-virtual {p0, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Point;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v3

    .line 382
    :goto_0
    return-object v3

    .line 375
    :cond_0
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v3

    new-array v1, v3, [Lorg/locationtech/jts/geom/Point;

    .line 376
    .local v1, "points":[Lorg/locationtech/jts/geom/Point;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 377
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v3

    .line 378
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getDimension()I

    move-result v4

    invoke-interface {v3, v6, v4}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create(II)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v2

    .line 379
    .local v2, "ptSeq":Lorg/locationtech/jts/geom/CoordinateSequence;
    invoke-static {p1, v0, v2, v5, v6}, Lorg/locationtech/jts/geom/CoordinateSequences;->copy(Lorg/locationtech/jts/geom/CoordinateSequence;ILorg/locationtech/jts/geom/CoordinateSequence;II)V

    .line 380
    invoke-virtual {p0, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/Point;

    move-result-object v3

    aput-object v3, v1, v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 382
    .end local v2    # "ptSeq":Lorg/locationtech/jts/geom/CoordinateSequence;
    :cond_1
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint([Lorg/locationtech/jts/geom/Point;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v3

    goto :goto_0
.end method

.method public createMultiPoint([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/MultiPoint;
    .locals 1
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 358
    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    .line 358
    :goto_0
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/MultiPoint;

    move-result-object v0

    return-object v0

    .line 359
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createMultiPoint([Lorg/locationtech/jts/geom/Point;)Lorg/locationtech/jts/geom/MultiPoint;
    .locals 1
    .param p1, "point"    # [Lorg/locationtech/jts/geom/Point;

    .prologue
    .line 347
    new-instance v0, Lorg/locationtech/jts/geom/MultiPoint;

    invoke-direct {v0, p1, p0}, Lorg/locationtech/jts/geom/MultiPoint;-><init>([Lorg/locationtech/jts/geom/Point;Lorg/locationtech/jts/geom/GeometryFactory;)V

    return-object v0
.end method

.method public createMultiPolygon([Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/geom/MultiPolygon;
    .locals 1
    .param p1, "polygons"    # [Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 311
    new-instance v0, Lorg/locationtech/jts/geom/MultiPolygon;

    invoke-direct {v0, p1, p0}, Lorg/locationtech/jts/geom/MultiPolygon;-><init>([Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/GeometryFactory;)V

    return-object v0
.end method

.method public createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;
    .locals 3
    .param p1, "coordinate"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 263
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createPoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/Point;
    .locals 1
    .param p1, "coordinates"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 274
    new-instance v0, Lorg/locationtech/jts/geom/Point;

    invoke-direct {v0, p1, p0}, Lorg/locationtech/jts/geom/Point;-><init>(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/GeometryFactory;)V

    return-object v0
.end method

.method public createPolygon(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/Polygon;
    .locals 1
    .param p1, "shell"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public createPolygon(Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;
    .locals 1
    .param p1, "shell"    # Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;
    .locals 1
    .param p1, "shell"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "holes"    # [Lorg/locationtech/jts/geom/LinearRing;

    .prologue
    .line 400
    new-instance v0, Lorg/locationtech/jts/geom/Polygon;

    invoke-direct {v0, p1, p2, p0}, Lorg/locationtech/jts/geom/Polygon;-><init>(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/GeometryFactory;)V

    return-object v0
.end method

.method public createPolygon([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Polygon;
    .locals 1
    .param p1, "shell"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    return-object v0
.end method

.method public getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lorg/locationtech/jts/geom/GeometryFactory;->coordinateSequenceFactory:Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    return-object v0
.end method

.method public getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lorg/locationtech/jts/geom/GeometryFactory;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    return-object v0
.end method

.method public getSRID()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lorg/locationtech/jts/geom/GeometryFactory;->SRID:I

    return v0
.end method

.method public toGeometry(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Geometry;
    .locals 11
    .param p1, "envelope"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 217
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 222
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1

    .line 223
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_2

    .line 228
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-nez v1, :cond_3

    .line 229
    :cond_2
    new-array v0, v10, [Lorg/locationtech/jts/geom/Coordinate;

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    .line 230
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    .line 231
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v1, v0, v9

    .line 229
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_3
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/locationtech/jts/geom/Coordinate;

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    .line 237
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v2, v1, v8

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    .line 238
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v2, v1, v9

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    .line 239
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v2, v1, v10

    const/4 v2, 0x3

    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    .line 240
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    .line 241
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    aput-object v3, v1, v2

    .line 236
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v0

    goto/16 :goto_0
.end method
