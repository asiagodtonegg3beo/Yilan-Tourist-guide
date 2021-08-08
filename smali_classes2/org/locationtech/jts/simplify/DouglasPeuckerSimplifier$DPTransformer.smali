.class Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier$DPTransformer;
.super Lorg/locationtech/jts/geom/util/GeometryTransformer;
.source "DouglasPeuckerSimplifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DPTransformer"
.end annotation


# instance fields
.field private isEnsureValidTopology:Z

.field final synthetic this$0:Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;Z)V
    .locals 1
    .param p1, "this$0"    # Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;
    .param p2, "isEnsureValidTopology"    # Z

    .prologue
    .line 130
    iput-object p1, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier$DPTransformer;->this$0:Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;

    invoke-direct {p0}, Lorg/locationtech/jts/geom/util/GeometryTransformer;-><init>()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier$DPTransformer;->isEnsureValidTopology:Z

    .line 131
    iput-boolean p2, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier$DPTransformer;->isEnsureValidTopology:Z

    .line 132
    return-void
.end method

.method private createValidArea(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "rawAreaGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier$DPTransformer;->isEnsureValidTopology:Z

    if-eqz v0, :cond_0

    .line 201
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/locationtech/jts/geom/Geometry;->buffer(D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    .line 202
    .end local p1    # "rawAreaGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-object p1
.end method


# virtual methods
.method protected transformCoordinates(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 4
    .param p1, "coords"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 136
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 137
    .local v0, "inputPts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .line 138
    .local v1, "newPts":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v2, v0

    if-nez v2, :cond_0

    .line 139
    const/4 v2, 0x0

    new-array v1, v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 144
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier$DPTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v2

    return-object v2

    .line 142
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier$DPTransformer;->this$0:Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;

    invoke-static {v2}, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;->access$000(Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier;)D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/locationtech/jts/simplify/DouglasPeuckerLineSimplifier;->simplify([Lorg/locationtech/jts/geom/Coordinate;D)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    goto :goto_0
.end method

.method protected transformLinearRing(Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p1, "geom"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 170
    instance-of v0, p2, Lorg/locationtech/jts/geom/Polygon;

    .line 171
    .local v0, "removeDegenerateRings":Z
    invoke-super {p0, p1, p2}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformLinearRing(Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    .line 172
    .local v1, "simpResult":Lorg/locationtech/jts/geom/Geometry;
    if-eqz v0, :cond_0

    instance-of v2, v1, Lorg/locationtech/jts/geom/LinearRing;

    if-nez v2, :cond_0

    .line 173
    const/4 v1, 0x0

    .line 174
    .end local v1    # "simpResult":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    return-object v1
.end method

.method protected transformMultiPolygon(Lorg/locationtech/jts/geom/MultiPolygon;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/MultiPolygon;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 181
    invoke-super {p0, p1, p2}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformMultiPolygon(Lorg/locationtech/jts/geom/MultiPolygon;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 182
    .local v0, "rawGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier$DPTransformer;->createValidArea(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method protected transformPolygon(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Polygon;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 152
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    const/4 v0, 0x0

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 154
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformPolygon(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 156
    .local v0, "rawGeom":Lorg/locationtech/jts/geom/Geometry;
    instance-of v1, p2, Lorg/locationtech/jts/geom/MultiPolygon;

    if-nez v1, :cond_0

    .line 159
    invoke-direct {p0, v0}, Lorg/locationtech/jts/simplify/DouglasPeuckerSimplifier$DPTransformer;->createValidArea(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0
.end method
