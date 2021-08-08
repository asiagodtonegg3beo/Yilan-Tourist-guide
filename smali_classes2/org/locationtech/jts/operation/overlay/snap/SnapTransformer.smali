.class Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;
.super Lorg/locationtech/jts/geom/util/GeometryTransformer;
.source "GeometrySnapper.java"


# instance fields
.field private isSelfSnap:Z

.field private snapPts:[Lorg/locationtech/jts/geom/Coordinate;

.field private snapTolerance:D


# direct methods
.method constructor <init>(D[Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "snapTolerance"    # D
    .param p3, "snapPts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 236
    invoke-direct {p0}, Lorg/locationtech/jts/geom/util/GeometryTransformer;-><init>()V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->isSelfSnap:Z

    .line 237
    iput-wide p1, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->snapTolerance:D

    .line 238
    iput-object p3, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->snapPts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 239
    return-void
.end method

.method constructor <init>(D[Lorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 1
    .param p1, "snapTolerance"    # D
    .param p3, "snapPts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p4, "isSelfSnap"    # Z

    .prologue
    .line 242
    invoke-direct {p0}, Lorg/locationtech/jts/geom/util/GeometryTransformer;-><init>()V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->isSelfSnap:Z

    .line 243
    iput-wide p1, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->snapTolerance:D

    .line 244
    iput-object p3, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->snapPts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 245
    iput-boolean p4, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->isSelfSnap:Z

    .line 246
    return-void
.end method

.method private snapLine([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4
    .param p1, "srcPts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "snapPts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 257
    new-instance v0, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;

    iget-wide v2, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->snapTolerance:D

    invoke-direct {v0, p1, v2, v3}, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;-><init>([Lorg/locationtech/jts/geom/Coordinate;D)V

    .line 258
    .local v0, "snapper":Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;
    iget-boolean v1, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->isSelfSnap:Z

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->setAllowSnappingToSourceVertices(Z)V

    .line 259
    invoke-virtual {v0, p2}, Lorg/locationtech/jts/operation/overlay/snap/LineStringSnapper;->snapTo([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected transformCoordinates(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 3
    .param p1, "coords"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 250
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 251
    .local v1, "srcPts":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->snapPts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, v1, v2}, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->snapLine([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 252
    .local v0, "newPts":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->factory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v2

    return-object v2
.end method
