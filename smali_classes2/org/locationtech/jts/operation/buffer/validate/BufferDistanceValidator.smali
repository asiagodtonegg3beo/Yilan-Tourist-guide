.class public Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;
.super Ljava/lang/Object;
.source "BufferDistanceValidator.java"


# static fields
.field private static final MAX_DISTANCE_DIFF_FRAC:D = 0.012

.field private static VERBOSE:Z


# instance fields
.field private bufDistance:D

.field private errMsg:Ljava/lang/String;

.field private errorIndicator:Lorg/locationtech/jts/geom/Geometry;

.field private errorLocation:Lorg/locationtech/jts/geom/Coordinate;

.field private input:Lorg/locationtech/jts/geom/Geometry;

.field private isValid:Z

.field private maxDistanceFound:D

.field private maxValidDistance:D

.field private minDistanceFound:D

.field private minValidDistance:D

.field private result:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;DLorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "input"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "bufDistance"    # D
    .param p4, "result"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->isValid:Z

    .line 64
    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->errMsg:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->errorLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 66
    iput-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->errorIndicator:Lorg/locationtech/jts/geom/Geometry;

    .line 70
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    .line 71
    iput-wide p2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->bufDistance:D

    .line 72
    iput-object p4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    .line 73
    return-void
.end method

.method private checkMaximumDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)V
    .locals 9
    .param p1, "input"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "bufCurve"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "maxDist"    # D

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 205
    new-instance v0, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;

    invoke-direct {v0, p2, p1}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 206
    .local v0, "haus":Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;
    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    invoke-virtual {v0, v2, v3}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->setDensifyFraction(D)V

    .line 207
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->orientedDistance()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->maxDistanceFound:D

    .line 209
    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->maxDistanceFound:D

    cmpl-double v2, v2, p3

    if-lez v2, :cond_0

    .line 210
    iput-boolean v6, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->isValid:Z

    .line 211
    invoke-virtual {v0}, Lorg/locationtech/jts/algorithm/distance/DiscreteHausdorffDistance;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 212
    .local v1, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    aget-object v2, v1, v7

    iput-object v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->errorLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 213
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    iput-object v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->errorIndicator:Lorg/locationtech/jts/geom/Geometry;

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Distance between buffer curve and input is too large ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->maxDistanceFound:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v6

    aget-object v4, v1, v7

    .line 216
    invoke-static {v3, v4}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->errMsg:Ljava/lang/String;

    .line 218
    .end local v1    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    return-void
.end method

.method private checkMinimumDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)V
    .locals 9
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g2"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "minDist"    # D

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 174
    new-instance v0, Lorg/locationtech/jts/operation/distance/DistanceOp;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/locationtech/jts/operation/distance/DistanceOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)V

    .line 175
    .local v0, "distOp":Lorg/locationtech/jts/operation/distance/DistanceOp;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->distance()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->minDistanceFound:D

    .line 178
    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->minDistanceFound:D

    cmpg-double v2, v2, p3

    if-gez v2, :cond_0

    .line 179
    iput-boolean v6, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->isValid:Z

    .line 180
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->nearestPoints()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 181
    .local v1, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/distance/DistanceOp;->nearestPoints()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    aget-object v2, v2, v7

    iput-object v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->errorLocation:Lorg/locationtech/jts/geom/Coordinate;

    .line 182
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    iput-object v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->errorIndicator:Lorg/locationtech/jts/geom/Geometry;

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Distance between buffer curve and input is too small ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->minDistanceFound:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v6

    aget-object v4, v1, v7

    .line 185
    invoke-static {v3, v4}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->errMsg:Ljava/lang/String;

    .line 187
    .end local v1    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    return-void
.end method

.method private checkNegativeValid()V
    .locals 4

    .prologue
    .line 140
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    instance-of v1, v1, Lorg/locationtech/jts/geom/Polygon;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    instance-of v1, v1, Lorg/locationtech/jts/geom/MultiPolygon;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    instance-of v1, v1, Lorg/locationtech/jts/geom/GeometryCollection;

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {p0, v1}, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->getPolygonLines(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 147
    .local v0, "inputCurve":Lorg/locationtech/jts/geom/Geometry;
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->minValidDistance:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->checkMinimumDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)V

    .line 148
    iget-boolean v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->isValid:Z

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->maxValidDistance:D

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->checkMaximumDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)V

    goto :goto_0
.end method

.method private checkPositiveValid()V
    .locals 4

    .prologue
    .line 128
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->getBoundary()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 129
    .local v0, "bufCurve":Lorg/locationtech/jts/geom/Geometry;
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->minValidDistance:D

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->checkMinimumDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)V

    .line 130
    iget-boolean v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->isValid:Z

    if-nez v1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    iget-wide v2, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->maxValidDistance:D

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->checkMaximumDistance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;D)V

    goto :goto_0
.end method

.method private getPolygonLines(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/Geometry;
    .locals 6
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v2, "lines":Ljava/util/List;
    new-instance v1, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;

    invoke-direct {v1, v2}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;-><init>(Ljava/util/Collection;)V

    .line 157
    .local v1, "lineExtracter":Lorg/locationtech/jts/geom/util/LinearComponentExtracter;
    invoke-static {p1}, Lorg/locationtech/jts/geom/util/PolygonExtracter;->getPolygons(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v4

    .line 158
    .local v4, "polys":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Polygon;

    .line 160
    .local v3, "poly":Lorg/locationtech/jts/geom/Polygon;
    invoke-virtual {v3, v1}, Lorg/locationtech/jts/geom/Polygon;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    goto :goto_0

    .line 162
    .end local v3    # "poly":Lorg/locationtech/jts/geom/Polygon;
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->buildGeometry(Ljava/util/Collection;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public getErrorIndicator()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->errorIndicator:Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method

.method public getErrorLocation()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->errorLocation:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 77
    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->bufDistance:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 78
    .local v2, "posDistance":D
    const-wide v4, 0x3f889374bc6a7efaL    # 0.012

    mul-double v0, v4, v2

    .line 79
    .local v0, "distDelta":D
    sub-double v4, v2, v0

    iput-wide v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->minValidDistance:D

    .line 80
    add-double v4, v2, v0

    iput-wide v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->maxValidDistance:D

    .line 83
    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->input:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->result:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v4}, Lorg/locationtech/jts/geom/Geometry;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    :cond_0
    const/4 v4, 0x1

    .line 99
    :goto_0
    return v4

    .line 86
    :cond_1
    iget-wide v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->bufDistance:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 87
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->checkPositiveValid()V

    .line 92
    :goto_1
    sget-boolean v4, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->VERBOSE:Z

    if-eqz v4, :cond_2

    .line 93
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Min Dist= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->minDistanceFound:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  err= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->minDistanceFound:D

    iget-wide v8, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->bufDistance:D

    div-double/2addr v6, v8

    sub-double v6, v10, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  Max Dist= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->maxDistanceFound:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  err= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->maxDistanceFound:D

    iget-wide v8, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->bufDistance:D

    div-double/2addr v6, v8

    sub-double/2addr v6, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 99
    :cond_2
    iget-boolean v4, p0, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->isValid:Z

    goto :goto_0

    .line 90
    :cond_3
    invoke-direct {p0}, Lorg/locationtech/jts/operation/buffer/validate/BufferDistanceValidator;->checkNegativeValid()V

    goto :goto_1
.end method
