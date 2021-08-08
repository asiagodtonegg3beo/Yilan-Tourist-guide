.class public Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;
.super Ljava/lang/Object;
.source "GeometrySnapper.java"


# static fields
.field private static final SNAP_PRECISION_FACTOR:D = 1.0E-9


# instance fields
.field private srcGeom:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 0
    .param p1, "srcGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->srcGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 145
    return-void
.end method

.method private computeMinimumSegmentLength([Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 7
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 217
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 218
    .local v2, "minSegLen":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 219
    aget-object v1, p1, v0

    add-int/lit8 v6, v0, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v1, v6}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    .line 220
    .local v4, "segLen":D
    cmpg-double v1, v4, v2

    if-gez v1, :cond_0

    .line 221
    move-wide v2, v4

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v4    # "segLen":D
    :cond_1
    return-wide v2
.end method

.method public static computeOverlaySnapTolerance(Lorg/locationtech/jts/geom/Geometry;)D
    .locals 10
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 58
    invoke-static {p0}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->computeSizeBasedSnapTolerance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    .line 69
    .local v4, "snapTolerance":D
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v2

    .line 70
    .local v2, "pm":Lorg/locationtech/jts/geom/PrecisionModel;
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/PrecisionModel;->getType()Lorg/locationtech/jts/geom/PrecisionModel$Type;

    move-result-object v3

    sget-object v6, Lorg/locationtech/jts/geom/PrecisionModel;->FIXED:Lorg/locationtech/jts/geom/PrecisionModel$Type;

    if-ne v3, v6, :cond_0

    .line 71
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/PrecisionModel;->getScale()D

    move-result-wide v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    const-wide v8, 0x3ff6a3d70a3d70a4L    # 1.415

    div-double v0, v6, v8

    .line 72
    .local v0, "fixedSnapTol":D
    cmpl-double v3, v0, v4

    if-lez v3, :cond_0

    .line 73
    move-wide v4, v0

    .line 75
    .end local v0    # "fixedSnapTol":D
    :cond_0
    return-wide v4
.end method

.method public static computeOverlaySnapTolerance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)D
    .locals 4
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 88
    invoke-static {p0}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->computeOverlaySnapTolerance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    invoke-static {p1}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->computeOverlaySnapTolerance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static computeSizeBasedSnapTolerance(Lorg/locationtech/jts/geom/Geometry;)D
    .locals 10
    .param p0, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    .line 81
    .local v0, "env":Lorg/locationtech/jts/geom/Envelope;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v6

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 82
    .local v2, "minDimension":D
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v4, v2, v6

    .line 83
    .local v4, "snapTol":D
    return-wide v4
.end method

.method private computeSnapTolerance([Lorg/locationtech/jts/geom/Coordinate;)D
    .locals 6
    .param p1, "ringPts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->computeMinimumSegmentLength([Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 211
    .local v0, "minSegLen":D
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double v2, v0, v4

    .line 212
    .local v2, "snapTol":D
    return-wide v2
.end method

.method private extractTargetCoordinates(Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 193
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 194
    .local v1, "ptSet":Ljava/util/Set;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 195
    .local v2, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 196
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/locationtech/jts/geom/Coordinate;

    check-cast v3, [Lorg/locationtech/jts/geom/Coordinate;

    return-object v3
.end method

.method public static snap(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)[Lorg/locationtech/jts/geom/Geometry;
    .locals 6
    .param p0, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "snapTolerance"    # D

    .prologue
    const/4 v4, 0x0

    .line 101
    const/4 v3, 0x2

    new-array v0, v3, [Lorg/locationtech/jts/geom/Geometry;

    .line 102
    .local v0, "snapGeom":[Lorg/locationtech/jts/geom/Geometry;
    new-instance v1, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;

    invoke-direct {v1, p0}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 103
    .local v1, "snapper0":Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;
    invoke-virtual {v1, p1, p2, p3}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->snapTo(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    aput-object v3, v0, v4

    .line 109
    new-instance v2, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;

    invoke-direct {v2, p1}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 110
    .local v2, "snapper1":Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;
    const/4 v3, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v2, v4, p2, p3}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->snapTo(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    aput-object v4, v0, v3

    .line 114
    return-object v0
.end method

.method public static snapToSelf(Lorg/locationtech/jts/geom/Geometry;DZ)Lorg/locationtech/jts/geom/Geometry;
    .locals 3
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "snapTolerance"    # D
    .param p3, "cleanResult"    # Z

    .prologue
    .line 131
    new-instance v0, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 132
    .local v0, "snapper0":Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;
    invoke-virtual {v0, p1, p2, p3}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->snapToSelf(DZ)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public snapTo(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/geom/Geometry;
    .locals 4
    .param p1, "snapGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "snapTolerance"    # D

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->extractTargetCoordinates(Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 160
    .local v0, "snapPts":[Lorg/locationtech/jts/geom/Coordinate;
    new-instance v1, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;

    invoke-direct {v1, p2, p3, v0}, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;-><init>(D[Lorg/locationtech/jts/geom/Coordinate;)V

    .line 161
    .local v1, "snapTrans":Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;
    iget-object v2, p0, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->srcGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->transform(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    return-object v2
.end method

.method public snapToSelf(DZ)Lorg/locationtech/jts/geom/Geometry;
    .locals 7
    .param p1, "snapTolerance"    # D
    .param p3, "cleanResult"    # Z

    .prologue
    .line 178
    iget-object v4, p0, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->srcGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {p0, v4}, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->extractTargetCoordinates(Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 180
    .local v1, "snapPts":[Lorg/locationtech/jts/geom/Coordinate;
    new-instance v2, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v1, v4}, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;-><init>(D[Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 181
    .local v2, "snapTrans":Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;
    iget-object v4, p0, Lorg/locationtech/jts/operation/overlay/snap/GeometrySnapper;->srcGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v2, v4}, Lorg/locationtech/jts/operation/overlay/snap/SnapTransformer;->transform(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v3

    .line 182
    .local v3, "snappedGeom":Lorg/locationtech/jts/geom/Geometry;
    move-object v0, v3

    .line 183
    .local v0, "result":Lorg/locationtech/jts/geom/Geometry;
    if-eqz p3, :cond_0

    instance-of v4, v0, Lorg/locationtech/jts/geom/Polygonal;

    if-eqz v4, :cond_0

    .line 185
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/locationtech/jts/geom/Geometry;->buffer(D)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 187
    :cond_0
    return-object v0
.end method
