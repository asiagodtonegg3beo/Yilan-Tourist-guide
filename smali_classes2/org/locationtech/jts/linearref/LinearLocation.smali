.class public Lorg/locationtech/jts/linearref/LinearLocation;
.super Ljava/lang/Object;
.source "LinearLocation.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private componentIndex:I

.field private segmentFraction:D

.field private segmentIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    .line 72
    iput v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    .line 80
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2
    .param p1, "segmentIndex"    # I
    .param p2, "segmentFraction"    # D

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/locationtech/jts/linearref/LinearLocation;-><init>(IID)V

    .line 84
    return-void
.end method

.method public constructor <init>(IID)V
    .locals 3
    .param p1, "componentIndex"    # I
    .param p2, "segmentIndex"    # I
    .param p3, "segmentFraction"    # D

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    .line 72
    iput v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    .line 88
    iput p1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    .line 89
    iput p2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    .line 90
    iput-wide p3, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    .line 91
    invoke-direct {p0}, Lorg/locationtech/jts/linearref/LinearLocation;->normalize()V

    .line 92
    return-void
.end method

.method private constructor <init>(IIDZ)V
    .locals 3
    .param p1, "componentIndex"    # I
    .param p2, "segmentIndex"    # I
    .param p3, "segmentFraction"    # D
    .param p5, "doNormalize"    # Z

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    .line 72
    iput v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    .line 96
    iput p1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    .line 97
    iput p2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    .line 98
    iput-wide p3, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    .line 99
    if-eqz p5, :cond_0

    .line 100
    invoke-direct {p0}, Lorg/locationtech/jts/linearref/LinearLocation;->normalize()V

    .line 101
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/linearref/LinearLocation;)V
    .locals 2
    .param p1, "loc"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    .line 72
    iput v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    .line 110
    iget v0, p1, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    iput v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    .line 111
    iget v0, p1, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    iput v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    .line 112
    iget-wide v0, p1, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    iput-wide v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    .line 113
    return-void
.end method

.method public static compareLocationValues(IIDIID)I
    .locals 4
    .param p0, "componentIndex0"    # I
    .param p1, "segmentIndex0"    # I
    .param p2, "segmentFraction0"    # D
    .param p4, "componentIndex1"    # I
    .param p5, "segmentIndex1"    # I
    .param p6, "segmentFraction1"    # D

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 378
    if-ge p0, p4, :cond_1

    .line 387
    :cond_0
    :goto_0
    return v0

    .line 379
    :cond_1
    if-le p0, p4, :cond_2

    move v0, v1

    goto :goto_0

    .line 381
    :cond_2
    if-lt p1, p5, :cond_0

    .line 382
    if-le p1, p5, :cond_3

    move v0, v1

    goto :goto_0

    .line 384
    :cond_3
    cmpg-double v2, p2, p6

    if-ltz v2, :cond_0

    .line 385
    cmpl-double v0, p2, p6

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 387
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEndLocation(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 1
    .param p0, "linear"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 39
    new-instance v0, Lorg/locationtech/jts/linearref/LinearLocation;

    invoke-direct {v0}, Lorg/locationtech/jts/linearref/LinearLocation;-><init>()V

    .line 40
    .local v0, "loc":Lorg/locationtech/jts/linearref/LinearLocation;
    invoke-virtual {v0, p0}, Lorg/locationtech/jts/linearref/LinearLocation;->setToEnd(Lorg/locationtech/jts/geom/Geometry;)V

    .line 41
    return-object v0
.end method

.method private normalize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 124
    iget-wide v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 125
    iput-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    .line 127
    :cond_0
    iget-wide v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    .line 128
    iput-wide v4, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    .line 131
    :cond_1
    iget v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    if-gez v0, :cond_2

    .line 132
    iput v6, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    .line 133
    iput v6, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    .line 134
    iput-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    .line 136
    :cond_2
    iget v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    if-gez v0, :cond_3

    .line 137
    iput v6, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    .line 138
    iput-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    .line 140
    :cond_3
    iget-wide v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_4

    .line 141
    iput-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    .line 142
    iget v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    .line 144
    :cond_4
    return-void
.end method

.method public static pointAlongSegmentByFraction(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)Lorg/locationtech/jts/geom/Coordinate;
    .locals 10
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "frac"    # D

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    .line 68
    .end local p0    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-object p0

    .line 62
    .restart local p0    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-ltz v0, :cond_1

    move-object p0, p1

    goto :goto_0

    .line 64
    :cond_1
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v8, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    sub-double/2addr v0, v8

    mul-double/2addr v0, p2

    iget-wide v8, p0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    add-double v2, v0, v8

    .line 65
    .local v2, "x":D
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v0, v8

    mul-double/2addr v0, p2

    iget-wide v8, p0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double v4, v0, v8

    .line 67
    .local v4, "y":D
    iget-wide v0, p1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v8, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    sub-double/2addr v0, v8

    mul-double/2addr v0, p2

    iget-wide v8, p0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    add-double v6, v0, v8

    .line 68
    .local v6, "z":D
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    move-object p0, v1

    goto :goto_0
.end method


# virtual methods
.method public clamp(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 4
    .param p1, "linear"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 154
    iget v1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 155
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/linearref/LinearLocation;->setToEnd(Lorg/locationtech/jts/geom/Geometry;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget v1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumPoints()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 159
    iget v1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    .line 160
    .local v0, "line":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    .line 161
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 457
    new-instance v0, Lorg/locationtech/jts/linearref/LinearLocation;

    iget v1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    iget-wide v4, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/locationtech/jts/linearref/LinearLocation;-><init>(IID)V

    return-object v0
.end method

.method public compareLocationValues(IID)I
    .locals 5
    .param p1, "componentIndex1"    # I
    .param p2, "segmentIndex1"    # I
    .param p3, "segmentFraction1"    # D

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 348
    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    if-ge v2, p1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 349
    :cond_1
    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    if-le v2, p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 351
    :cond_2
    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    if-lt v2, p2, :cond_0

    .line 352
    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    if-le v2, p2, :cond_3

    move v0, v1

    goto :goto_0

    .line 354
    :cond_3
    iget-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    cmpg-double v2, v2, p3

    if-ltz v2, :cond_0

    .line 355
    iget-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    cmpl-double v0, v2, p3

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 357
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 323
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/linearref/LinearLocation;

    .line 325
    .local v0, "other":Lorg/locationtech/jts/linearref/LinearLocation;
    iget v3, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    iget v4, v0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    if-ge v3, v4, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v1

    .line 326
    :cond_1
    iget v3, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    iget v4, v0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    if-le v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    .line 328
    :cond_2
    iget v3, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    iget v4, v0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    if-lt v3, v4, :cond_0

    .line 329
    iget v3, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    iget v4, v0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    if-le v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 331
    :cond_3
    iget-wide v4, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    iget-wide v6, v0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    cmpg-double v3, v4, v6

    if-ltz v3, :cond_0

    .line 332
    iget-wide v4, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    iget-wide v6, v0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    cmpl-double v1, v4, v6

    if-lez v1, :cond_4

    move v1, v2

    goto :goto_0

    .line 334
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getComponentIndex()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    return v0
.end method

.method public getCoordinate(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 6
    .param p1, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 263
    iget v3, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    invoke-virtual {p1, v3}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    .line 264
    .local v0, "lineComp":Lorg/locationtech/jts/geom/LineString;
    iget v3, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 265
    .local v1, "p0":Lorg/locationtech/jts/geom/Coordinate;
    iget v3, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_0

    .line 268
    .end local v1    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-object v1

    .line 267
    .restart local v1    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    iget v3, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 268
    .local v2, "p1":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v4, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    invoke-static {v1, v2, v4, v5}, Lorg/locationtech/jts/linearref/LinearLocation;->pointAlongSegmentByFraction(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    goto :goto_0
.end method

.method public getSegment(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/LineSegment;
    .locals 6
    .param p1, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 280
    iget v4, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    invoke-virtual {p1, v4}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    .line 281
    .local v0, "lineComp":Lorg/locationtech/jts/geom/LineString;
    iget v4, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 283
    .local v1, "p0":Lorg/locationtech/jts/geom/Coordinate;
    iget v4, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_0

    .line 284
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 285
    .local v3, "prev":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v4, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v4, v3, v1}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 288
    .end local v3    # "prev":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-object v4

    .line 287
    :cond_0
    iget v4, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 288
    .local v2, "p1":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v4, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v4, v1, v2}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0
.end method

.method public getSegmentFraction()D
    .locals 2

    .prologue
    .line 241
    iget-wide v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    return-wide v0
.end method

.method public getSegmentIndex()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    return v0
.end method

.method public getSegmentLength(Lorg/locationtech/jts/geom/Geometry;)D
    .locals 6
    .param p1, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 196
    iget v4, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    invoke-virtual {p1, v4}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    .line 199
    .local v0, "lineComp":Lorg/locationtech/jts/geom/LineString;
    iget v3, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    .line 200
    .local v3, "segIndex":I
    iget v4, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_0

    .line 201
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v4

    add-int/lit8 v3, v4, -0x2

    .line 203
    :cond_0
    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 204
    .local v1, "p0":Lorg/locationtech/jts/geom/Coordinate;
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 205
    .local v2, "p1":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    return-wide v4
.end method

.method public isEndpoint(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 6
    .param p1, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 419
    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    .line 421
    .local v0, "lineComp":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 422
    .local v1, "nseg":I
    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    if-ge v2, v1, :cond_0

    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    if-ne v2, v1, :cond_1

    iget-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOnSameSegment(Lorg/locationtech/jts/linearref/LinearLocation;)Z
    .locals 6
    .param p1, "loc"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 399
    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    iget v3, p1, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    if-eq v2, v3, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 400
    :cond_1
    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    iget v3, p1, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 401
    :cond_2
    iget v2, p1, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    iget v3, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    sub-int/2addr v2, v3

    if-ne v2, v1, :cond_3

    iget-wide v2, p1, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    move v0, v1

    .line 403
    goto :goto_0

    .line 404
    :cond_3
    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    iget v3, p1, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    sub-int/2addr v2, v3

    if-ne v2, v1, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    .line 406
    goto :goto_0
.end method

.method public isValid(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 6
    .param p1, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 300
    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 303
    :cond_1
    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    .line 304
    .local v0, "lineComp":Lorg/locationtech/jts/geom/LineString;
    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 306
    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 309
    :cond_2
    iget-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    .line 311
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVertex()Z
    .locals 4

    .prologue
    .line 250
    iget-wide v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setToEnd(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 4
    .param p1, "linear"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 216
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    .line 217
    iget v1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    .line 218
    .local v0, "lastLine":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    .line 219
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    .line 220
    return-void
.end method

.method public snapToVertex(Lorg/locationtech/jts/geom/Geometry;D)V
    .locals 12
    .param p1, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "minDistance"    # D

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v8, 0x0

    .line 174
    iget-wide v6, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    cmpg-double v6, v6, v8

    if-lez v6, :cond_0

    iget-wide v6, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    cmpl-double v6, v6, v10

    if-ltz v6, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegmentLength(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v4

    .line 177
    .local v4, "segLen":D
    iget-wide v6, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    mul-double v2, v6, v4

    .line 178
    .local v2, "lenToStart":D
    sub-double v0, v4, v2

    .line 179
    .local v0, "lenToEnd":D
    cmpg-double v6, v2, v0

    if-gtz v6, :cond_2

    cmpg-double v6, v2, p2

    if-gez v6, :cond_2

    .line 180
    iput-wide v8, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    goto :goto_0

    .line 182
    :cond_2
    cmpg-double v6, v0, v2

    if-gtz v6, :cond_0

    cmpg-double v6, v0, p2

    if-gez v6, :cond_0

    .line 183
    iput-wide v10, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    goto :goto_0
.end method

.method public toLowest(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 7
    .param p1, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 443
    iget v1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    .line 444
    .local v0, "lineComp":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    .line 446
    .local v3, "nseg":I
    iget v1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    if-ge v1, v3, :cond_0

    .line 447
    .end local p0    # "this":Lorg/locationtech/jts/linearref/LinearLocation;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/locationtech/jts/linearref/LinearLocation;
    :cond_0
    new-instance v1, Lorg/locationtech/jts/linearref/LinearLocation;

    iget v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/locationtech/jts/linearref/LinearLocation;-><init>(IIDZ)V

    move-object p0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinearLoc["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->componentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/linearref/LinearLocation;->segmentFraction:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
