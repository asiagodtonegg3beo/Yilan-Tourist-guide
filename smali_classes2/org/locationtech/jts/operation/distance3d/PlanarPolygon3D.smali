.class public Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;
.super Ljava/lang/Object;
.source "PlanarPolygon3D.java"


# instance fields
.field private facingPlane:I

.field private plane:Lorg/locationtech/jts/math/Plane3D;

.field private poly:Lorg/locationtech/jts/geom/Polygon;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Polygon;)V
    .locals 1
    .param p1, "poly"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->facingPlane:I

    .line 43
    iput-object p1, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->poly:Lorg/locationtech/jts/geom/Polygon;

    .line 44
    invoke-direct {p0, p1}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->findBestFitPlane(Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/math/Plane3D;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->plane:Lorg/locationtech/jts/math/Plane3D;

    .line 45
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->plane:Lorg/locationtech/jts/math/Plane3D;

    invoke-virtual {v0}, Lorg/locationtech/jts/math/Plane3D;->closestAxisPlane()I

    move-result v0

    iput v0, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->facingPlane:I

    .line 46
    return-void
.end method

.method private averageNormal(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/math/Vector3D;
    .locals 18
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 80
    invoke-interface/range {p1 .. p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v14

    .line 81
    .local v14, "n":I
    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    .line 82
    .local v3, "sum":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v5, Lorg/locationtech/jts/geom/Coordinate;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v5 .. v11}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    .line 83
    .local v5, "p1":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v7, Lorg/locationtech/jts/geom/Coordinate;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v7 .. v13}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    .line 84
    .local v7, "p2":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v4, v14, -0x1

    if-ge v2, v4, :cond_0

    .line 85
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v5}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 86
    add-int/lit8 v4, v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v7}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(ILorg/locationtech/jts/geom/Coordinate;)V

    .line 87
    iget-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v10, v5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v12, v7, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v10, v12

    iget-wide v12, v5, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v0, v7, Lorg/locationtech/jts/geom/Coordinate;->z:D

    move-wide/from16 v16, v0

    add-double v12, v12, v16

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 88
    iget-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v10, v5, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v12, v7, Lorg/locationtech/jts/geom/Coordinate;->z:D

    sub-double/2addr v10, v12

    iget-wide v12, v5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v0, v7, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    add-double v12, v12, v16

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 89
    iget-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v10, v5, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v12, v7, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v10, v12

    iget-wide v12, v5, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v0, v7, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    add-double v12, v12, v16

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_0
    iget-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    int-to-double v10, v14

    div-double/2addr v8, v10

    iput-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 92
    iget-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    int-to-double v10, v14

    div-double/2addr v8, v10

    iput-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 93
    iget-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->z:D

    int-to-double v10, v14

    div-double/2addr v8, v10

    iput-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 94
    invoke-static {v3}, Lorg/locationtech/jts/math/Vector3D;->create(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/math/Vector3D;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/math/Vector3D;->normalize()Lorg/locationtech/jts/math/Vector3D;

    move-result-object v15

    .line 95
    .local v15, "norm":Lorg/locationtech/jts/math/Vector3D;
    return-object v15
.end method

.method private averagePoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 9
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    const-wide/16 v2, 0x0

    .line 108
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    .line 109
    .local v1, "a":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v8

    .line 110
    .local v8, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 111
    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    const/4 v4, 0x0

    invoke-interface {p1, v0, v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 112
    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    const/4 v4, 0x1

    invoke-interface {p1, v0, v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 113
    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    const/4 v4, 0x2

    invoke-interface {p1, v0, v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->getOrdinate(II)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    int-to-double v4, v8

    div-double/2addr v2, v4

    iput-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    .line 116
    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    int-to-double v4, v8

    div-double/2addr v2, v4

    iput-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    .line 117
    iget-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    int-to-double v4, v8

    div-double/2addr v2, v4

    iput-wide v2, v1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    .line 118
    return-object v1
.end method

.method private findBestFitPlane(Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/math/Plane3D;
    .locals 4
    .param p1, "poly"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 62
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v2

    .line 63
    .local v2, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    invoke-direct {p0, v2}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->averagePoint(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 64
    .local v0, "basePt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v2}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->averageNormal(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/math/Vector3D;

    move-result-object v1

    .line 65
    .local v1, "normal":Lorg/locationtech/jts/math/Vector3D;
    new-instance v3, Lorg/locationtech/jts/math/Plane3D;

    invoke-direct {v3, v1, v0}, Lorg/locationtech/jts/math/Plane3D;-><init>(Lorg/locationtech/jts/math/Vector3D;Lorg/locationtech/jts/geom/Coordinate;)V

    return-object v3
.end method

.method private locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineString;)I
    .locals 4
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "ring"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 141
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    .line 142
    .local v1, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    iget v3, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->facingPlane:I

    invoke-static {v1, v3}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->project(Lorg/locationtech/jts/geom/CoordinateSequence;I)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v2

    .line 143
    .local v2, "seqProj":Lorg/locationtech/jts/geom/CoordinateSequence;
    iget v3, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->facingPlane:I

    invoke-static {p1, v3}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->project(Lorg/locationtech/jts/geom/Coordinate;I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 144
    .local v0, "ptProj":Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v0, v2}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->locatePointInRing(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/CoordinateSequence;)I

    move-result v3

    return v3
.end method

.method private static project(Lorg/locationtech/jts/geom/Coordinate;I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 6
    .param p0, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "facingPlane"    # I

    .prologue
    .line 165
    packed-switch p1, :pswitch_data_0

    .line 169
    :pswitch_0
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    :goto_0
    return-object v0

    .line 166
    :pswitch_1
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    goto :goto_0

    .line 167
    :pswitch_2
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v2, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static project(Lorg/locationtech/jts/geom/CoordinateSequence;I)Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1
    .param p0, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p1, "facingPlane"    # I

    .prologue
    .line 156
    packed-switch p1, :pswitch_data_0

    .line 159
    :pswitch_0
    invoke-static {p0}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->projectToYZ(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    :goto_0
    return-object v0

    .line 157
    :pswitch_1
    invoke-static {p0}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->projectToXY(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    goto :goto_0

    .line 158
    :pswitch_2
    invoke-static {p0}, Lorg/locationtech/jts/operation/distance3d/AxisPlaneCoordinateSequence;->projectToXZ(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getPlane()Lorg/locationtech/jts/math/Plane3D;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->plane:Lorg/locationtech/jts/math/Plane3D;

    return-object v0
.end method

.method public getPolygon()Lorg/locationtech/jts/geom/Polygon;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->poly:Lorg/locationtech/jts/geom/Polygon;

    return-object v0
.end method

.method public intersects(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 4
    .param p1, "intPt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v1, 0x0

    .line 130
    const/4 v2, 0x2

    iget-object v3, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->poly:Lorg/locationtech/jts/geom/Polygon;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineString;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 133
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->poly:Lorg/locationtech/jts/geom/Polygon;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 134
    iget-object v2, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->poly:Lorg/locationtech/jts/geom/Polygon;

    invoke-virtual {v2, v0}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineString;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/LineString;)Z
    .locals 5
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "ring"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 148
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/LineString;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v1

    .line 149
    .local v1, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    iget v3, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->facingPlane:I

    invoke-static {v1, v3}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->project(Lorg/locationtech/jts/geom/CoordinateSequence;I)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v2

    .line 150
    .local v2, "seqProj":Lorg/locationtech/jts/geom/CoordinateSequence;
    iget v3, p0, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->facingPlane:I

    invoke-static {p1, v3}, Lorg/locationtech/jts/operation/distance3d/PlanarPolygon3D;->project(Lorg/locationtech/jts/geom/Coordinate;I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 151
    .local v0, "ptProj":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v3, 0x2

    invoke-static {v0, v2}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->locatePointInRing(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/CoordinateSequence;)I

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
