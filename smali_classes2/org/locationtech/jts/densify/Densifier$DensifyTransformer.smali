.class Lorg/locationtech/jts/densify/Densifier$DensifyTransformer;
.super Lorg/locationtech/jts/geom/util/GeometryTransformer;
.source "Densifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/densify/Densifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DensifyTransformer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/locationtech/jts/densify/Densifier;


# direct methods
.method constructor <init>(Lorg/locationtech/jts/densify/Densifier;)V
    .locals 0
    .param p1, "this$0"    # Lorg/locationtech/jts/densify/Densifier;

    .prologue
    .line 122
    iput-object p1, p0, Lorg/locationtech/jts/densify/Densifier$DensifyTransformer;->this$0:Lorg/locationtech/jts/densify/Densifier;

    invoke-direct {p0}, Lorg/locationtech/jts/geom/util/GeometryTransformer;-><init>()V

    return-void
.end method

.method private createValidArea(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "roughAreaGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 162
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/locationtech/jts/geom/Geometry;->buffer(D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected transformCoordinates(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 5
    .param p1, "coords"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 125
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 126
    .local v0, "inputPts":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/densify/Densifier$DensifyTransformer;->this$0:Lorg/locationtech/jts/densify/Densifier;

    .line 127
    invoke-static {v2}, Lorg/locationtech/jts/densify/Densifier;->access$000(Lorg/locationtech/jts/densify/Densifier;)D

    move-result-wide v2

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lorg/locationtech/jts/densify/Densifier;->access$100([Lorg/locationtech/jts/geom/Coordinate;DLorg/locationtech/jts/geom/PrecisionModel;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 129
    .local v1, "newPts":[Lorg/locationtech/jts/geom/Coordinate;
    instance-of v2, p2, Lorg/locationtech/jts/geom/LineString;

    if-eqz v2, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 130
    const/4 v2, 0x0

    new-array v1, v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 132
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/densify/Densifier$DensifyTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v2

    return-object v2
.end method

.method protected transformMultiPolygon(Lorg/locationtech/jts/geom/MultiPolygon;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/MultiPolygon;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformMultiPolygon(Lorg/locationtech/jts/geom/MultiPolygon;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 146
    .local v0, "roughGeom":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/densify/Densifier$DensifyTransformer;->createValidArea(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method

.method protected transformPolygon(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Polygon;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lorg/locationtech/jts/geom/util/GeometryTransformer;->transformPolygon(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 138
    .local v0, "roughGeom":Lorg/locationtech/jts/geom/Geometry;
    instance-of v1, p2, Lorg/locationtech/jts/geom/MultiPolygon;

    if-eqz v1, :cond_0

    .line 141
    .end local v0    # "roughGeom":Lorg/locationtech/jts/geom/Geometry;
    :goto_0
    return-object v0

    .restart local v0    # "roughGeom":Lorg/locationtech/jts/geom/Geometry;
    :cond_0
    invoke-direct {p0, v0}, Lorg/locationtech/jts/densify/Densifier$DensifyTransformer;->createValidArea(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    goto :goto_0
.end method
