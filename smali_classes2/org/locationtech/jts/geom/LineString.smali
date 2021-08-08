.class public Lorg/locationtech/jts/geom/LineString;
.super Lorg/locationtech/jts/geom/Geometry;
.source "LineString.java"

# interfaces
.implements Lorg/locationtech/jts/geom/Lineal;


# static fields
.field private static final serialVersionUID:J = 0x2b2b51ba435c8e38L


# instance fields
.field protected points:Lorg/locationtech/jts/geom/CoordinateSequence;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/CoordinateSequence;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 0
    .param p1, "points"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 71
    invoke-direct {p0, p2}, Lorg/locationtech/jts/geom/Geometry;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 72
    invoke-direct {p0, p1}, Lorg/locationtech/jts/geom/LineString;->init(Lorg/locationtech/jts/geom/CoordinateSequence;)V

    .line 73
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/PrecisionModel;I)V
    .locals 1
    .param p1, "points"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p3, "SRID"    # I

    .prologue
    .line 59
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0, p2, p3}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    invoke-direct {p0, v0}, Lorg/locationtech/jts/geom/Geometry;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 60
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/geom/LineString;->init(Lorg/locationtech/jts/geom/CoordinateSequence;)V

    .line 61
    return-void
.end method

.method private init(Lorg/locationtech/jts/geom/CoordinateSequence;)V
    .locals 3
    .param p1, "points"    # Lorg/locationtech/jts/geom/CoordinateSequence;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/GeometryFactory;->getCoordinateSequenceFactory()Lorg/locationtech/jts/geom/CoordinateSequenceFactory;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/locationtech/jts/geom/Coordinate;

    invoke-interface {v0, v1}, Lorg/locationtech/jts/geom/CoordinateSequenceFactory;->create([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object p1

    .line 80
    :cond_0
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid number of points in LineString (found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - must be 0 or >= 2)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iput-object p1, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 85
    return-void
.end method


# virtual methods
.method public apply(Lorg/locationtech/jts/geom/CoordinateFilter;)V
    .locals 2
    .param p1, "filter"    # Lorg/locationtech/jts/geom/CoordinateFilter;

    .prologue
    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 232
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v1, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/locationtech/jts/geom/CoordinateFilter;->filter(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method

.method public apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V
    .locals 2
    .param p1, "filter"    # Lorg/locationtech/jts/geom/CoordinateSequenceFilter;

    .prologue
    .line 238
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 241
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {p1, v1, v0}, Lorg/locationtech/jts/geom/CoordinateSequenceFilter;->filter(Lorg/locationtech/jts/geom/CoordinateSequence;I)V

    .line 242
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFilter;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    :cond_2
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFilter;->isGeometryChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->geometryChanged()V

    goto :goto_0

    .line 240
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/locationtech/jts/geom/GeometryComponentFilter;

    .prologue
    .line 254
    invoke-interface {p1, p0}, Lorg/locationtech/jts/geom/GeometryComponentFilter;->filter(Lorg/locationtech/jts/geom/Geometry;)V

    .line 255
    return-void
.end method

.method public apply(Lorg/locationtech/jts/geom/GeometryFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/locationtech/jts/geom/GeometryFilter;

    .prologue
    .line 250
    invoke-interface {p1, p0}, Lorg/locationtech/jts/geom/GeometryFilter;->filter(Lorg/locationtech/jts/geom/Geometry;)V

    .line 251
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 264
    invoke-super {p0}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    .line 265
    .local v0, "ls":Lorg/locationtech/jts/geom/LineString;
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/CoordinateSequence;

    iput-object v1, v0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 266
    return-object v0
.end method

.method protected compareToSameClass(Ljava/lang/Object;)I
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 296
    move-object v3, p1

    check-cast v3, Lorg/locationtech/jts/geom/LineString;

    .line 298
    .local v3, "line":Lorg/locationtech/jts/geom/LineString;
    const/4 v1, 0x0

    .line 299
    .local v1, "i":I
    const/4 v2, 0x0

    .line 300
    .local v2, "j":I
    :goto_0
    iget-object v4, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, v3, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 301
    iget-object v4, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v4, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    iget-object v5, v3, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v5, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 302
    .local v0, "comparison":I
    if-eqz v0, :cond_0

    .line 314
    .end local v0    # "comparison":I
    :goto_1
    return v0

    .line 305
    .restart local v0    # "comparison":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 306
    add-int/lit8 v2, v2, 0x1

    .line 307
    goto :goto_0

    .line 308
    .end local v0    # "comparison":I
    :cond_1
    iget-object v4, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 309
    const/4 v0, 0x1

    goto :goto_1

    .line 311
    :cond_2
    iget-object v4, v3, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 312
    const/4 v0, -0x1

    goto :goto_1

    .line 314
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected compareToSameClass(Ljava/lang/Object;Lorg/locationtech/jts/geom/CoordinateSequenceComparator;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "comp"    # Lorg/locationtech/jts/geom/CoordinateSequenceComparator;

    .prologue
    .line 319
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    .line 320
    .local v0, "line":Lorg/locationtech/jts/geom/LineString;
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    iget-object v2, v0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-virtual {p2, v1, v2}, Lorg/locationtech/jts/geom/CoordinateSequenceComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method protected computeEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    .line 211
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/Envelope;-><init>()V

    invoke-interface {v0, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->expandEnvelope(Lorg/locationtech/jts/geom/Envelope;)Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    goto :goto_0
.end method

.method public equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z
    .locals 6
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "tolerance"    # D

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/LineString;->isEquivalentClass(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 218
    check-cast v1, Lorg/locationtech/jts/geom/LineString;

    .line 219
    .local v1, "otherLineString":Lorg/locationtech/jts/geom/LineString;
    iget-object v3, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v3

    iget-object v4, v1, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v4}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 223
    iget-object v3, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v3, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    iget-object v4, v1, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v4, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p2, p3}, Lorg/locationtech/jts/geom/LineString;->equal(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getBoundary()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lorg/locationtech/jts/operation/BoundaryOp;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/BoundaryOp;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/BoundaryOp;->getBoundary()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getBoundaryDimension()I
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, -0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    goto :goto_0
.end method

.method public getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v0, p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    return-object v0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public getEndPoint()Lorg/locationtech/jts/geom/Point;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/LineString;->getPointN(I)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "LineString"

    return-object v0
.end method

.method public getLength()D
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-static {v0}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->length(Lorg/locationtech/jts/geom/CoordinateSequence;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumPoints()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v0

    return v0
.end method

.method public getPointN(I)Lorg/locationtech/jts/geom/Point;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v1, p1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    return-object v0
.end method

.method protected getSortIndex()I
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x2

    return v0
.end method

.method public getStartPoint()Lorg/locationtech/jts/geom/Point;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/LineString;->getPointN(I)Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    goto :goto_0
.end method

.method public isCoordinate(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 200
    iget-object v1, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v1, v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const/4 v1, 0x1

    .line 204
    :goto_1
    return v1

    .line 199
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v0}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEquivalentClass(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 291
    instance-of v0, p1, Lorg/locationtech/jts/geom/LineString;

    return v0
.end method

.method public isRing()Z
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public normalize()V
    .locals 5

    .prologue
    .line 276
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_0

    .line 277
    iget-object v3, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int v2, v3, v1

    .line 279
    .local v2, "j":I
    iget-object v3, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v3, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    iget-object v4, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v4, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 280
    iget-object v3, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v3, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    iget-object v4, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v4, v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 281
    iget-object v3, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 282
    .local v0, "copy":Lorg/locationtech/jts/geom/CoordinateSequence;
    invoke-static {v0}, Lorg/locationtech/jts/geom/CoordinateSequences;->reverse(Lorg/locationtech/jts/geom/CoordinateSequence;)V

    .line 283
    iput-object v0, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 288
    .end local v0    # "copy":Lorg/locationtech/jts/geom/CoordinateSequence;
    .end local v2    # "j":I
    :cond_0
    return-void

    .line 276
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public reverse()Lorg/locationtech/jts/geom/Geometry;
    .locals 3

    .prologue
    .line 185
    iget-object v2, p0, Lorg/locationtech/jts/geom/LineString;->points:Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-interface {v2}, Lorg/locationtech/jts/geom/CoordinateSequence;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/CoordinateSequence;

    .line 186
    .local v1, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    invoke-static {v1}, Lorg/locationtech/jts/geom/CoordinateSequences;->reverse(Lorg/locationtech/jts/geom/CoordinateSequence;)V

    .line 187
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    .line 188
    .local v0, "revLine":Lorg/locationtech/jts/geom/LineString;
    return-object v0
.end method
