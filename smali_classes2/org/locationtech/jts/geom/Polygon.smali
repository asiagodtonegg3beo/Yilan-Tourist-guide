.class public Lorg/locationtech/jts/geom/Polygon;
.super Lorg/locationtech/jts/geom/Geometry;
.source "Polygon.java"

# interfaces
.implements Lorg/locationtech/jts/geom/Polygonal;


# static fields
.field private static final serialVersionUID:J = -0x307ffefd8dc971b5L


# instance fields
.field protected holes:[Lorg/locationtech/jts/geom/LinearRing;

.field protected shell:Lorg/locationtech/jts/geom/LinearRing;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/PrecisionModel;I)V
    .locals 2
    .param p1, "shell"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p3, "SRID"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/locationtech/jts/geom/LinearRing;

    new-instance v1, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v1, p2, p3}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    invoke-direct {p0, p1, v0, v1}, Lorg/locationtech/jts/geom/Polygon;-><init>(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 2
    .param p1, "shell"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "holes"    # [Lorg/locationtech/jts/geom/LinearRing;
    .param p3, "factory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p3}, Lorg/locationtech/jts/geom/Geometry;-><init>(Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 58
    iput-object v0, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    .line 116
    if-nez p1, :cond_0

    .line 117
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v1

    check-cast v0, Lorg/locationtech/jts/geom/CoordinateSequence;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object p1

    .line 119
    :cond_0
    if-nez p2, :cond_1

    .line 120
    const/4 v0, 0x0

    new-array p2, v0, [Lorg/locationtech/jts/geom/LinearRing;

    .line 122
    :cond_1
    invoke-static {p2}, Lorg/locationtech/jts/geom/Polygon;->hasNullElements([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "holes must not contain null elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lorg/locationtech/jts/geom/Polygon;->hasNonEmptyElements([Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "shell is empty but holes are not"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    iput-object p1, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    .line 129
    iput-object p2, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/PrecisionModel;I)V
    .locals 1
    .param p1, "shell"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "holes"    # [Lorg/locationtech/jts/geom/LinearRing;
    .param p3, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;
    .param p4, "SRID"    # I

    .prologue
    .line 100
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0, p3, p4}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    invoke-direct {p0, p1, p2, v0}, Lorg/locationtech/jts/geom/Polygon;-><init>(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 101
    return-void
.end method

.method private normalize(Lorg/locationtech/jts/geom/LinearRing;Z)V
    .locals 5
    .param p1, "ring"    # Lorg/locationtech/jts/geom/LinearRing;
    .param p2, "clockwise"    # Z

    .prologue
    const/4 v4, 0x0

    .line 409
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 413
    .local v1, "uniqueCoordinates":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-static {v2}, Lorg/locationtech/jts/geom/CoordinateArrays;->minCoordinate([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 415
    .local v0, "minCoordinate":Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v1, v0}, Lorg/locationtech/jts/geom/CoordinateArrays;->scroll([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 416
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    array-length v3, v1

    aget-object v4, v1, v4

    aput-object v4, v2, v3

    .line 418
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-static {v2}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isCCW([Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 419
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-static {v2}, Lorg/locationtech/jts/geom/CoordinateArrays;->reverse([Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0
.end method


# virtual methods
.method public apply(Lorg/locationtech/jts/geom/CoordinateFilter;)V
    .locals 2
    .param p1, "filter"    # Lorg/locationtech/jts/geom/CoordinateFilter;

    .prologue
    .line 315
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/LinearRing;->apply(Lorg/locationtech/jts/geom/CoordinateFilter;)V

    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/LinearRing;->apply(Lorg/locationtech/jts/geom/CoordinateFilter;)V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method public apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V
    .locals 2
    .param p1, "filter"    # Lorg/locationtech/jts/geom/CoordinateSequenceFilter;

    .prologue
    .line 323
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/LinearRing;->apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V

    .line 324
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFilter;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 326
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/LinearRing;->apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V

    .line 327
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFilter;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    .end local v0    # "i":I
    :cond_0
    invoke-interface {p1}, Lorg/locationtech/jts/geom/CoordinateSequenceFilter;->isGeometryChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->geometryChanged()V

    .line 333
    :cond_1
    return-void

    .line 325
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V
    .locals 2
    .param p1, "filter"    # Lorg/locationtech/jts/geom/GeometryComponentFilter;

    .prologue
    .line 340
    invoke-interface {p1, p0}, Lorg/locationtech/jts/geom/GeometryComponentFilter;->filter(Lorg/locationtech/jts/geom/Geometry;)V

    .line 341
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/LinearRing;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 342
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 343
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/LinearRing;->apply(Lorg/locationtech/jts/geom/GeometryComponentFilter;)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_0
    return-void
.end method

.method public apply(Lorg/locationtech/jts/geom/GeometryFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/locationtech/jts/geom/GeometryFilter;

    .prologue
    .line 336
    invoke-interface {p1, p0}, Lorg/locationtech/jts/geom/GeometryFilter;->filter(Lorg/locationtech/jts/geom/Geometry;)V

    .line 337
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 354
    invoke-super {p0}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Polygon;

    .line 355
    .local v1, "poly":Lorg/locationtech/jts/geom/Polygon;
    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LinearRing;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/LinearRing;

    iput-object v2, v1, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    .line 356
    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v2, v2

    new-array v2, v2, [Lorg/locationtech/jts/geom/LinearRing;

    iput-object v2, v1, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    .line 357
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 358
    iget-object v3, v1, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LinearRing;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/LinearRing;

    aput-object v2, v3, v0

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return-object v1
.end method

.method protected compareToSameClass(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 376
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    .line 377
    .local v1, "thisShell":Lorg/locationtech/jts/geom/LinearRing;
    check-cast p1, Lorg/locationtech/jts/geom/Polygon;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    .line 378
    .local v0, "otherShell":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/LinearRing;->compareToSameClass(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method protected compareToSameClass(Ljava/lang/Object;Lorg/locationtech/jts/geom/CoordinateSequenceComparator;)I
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "comp"    # Lorg/locationtech/jts/geom/CoordinateSequenceComparator;

    .prologue
    .line 382
    move-object v6, p1

    check-cast v6, Lorg/locationtech/jts/geom/Polygon;

    .line 384
    .local v6, "poly":Lorg/locationtech/jts/geom/Polygon;
    iget-object v9, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    .line 385
    .local v9, "thisShell":Lorg/locationtech/jts/geom/LinearRing;
    iget-object v5, v6, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    .line 386
    .local v5, "otherShell":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v9, v5, p2}, Lorg/locationtech/jts/geom/LinearRing;->compareToSameClass(Ljava/lang/Object;Lorg/locationtech/jts/geom/CoordinateSequenceComparator;)I

    move-result v7

    .line 387
    .local v7, "shellComp":I
    if-eqz v7, :cond_0

    .line 401
    .end local v7    # "shellComp":I
    :goto_0
    return v7

    .line 389
    .restart local v7    # "shellComp":I
    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v2

    .line 390
    .local v2, "nHole1":I
    invoke-virtual {v6}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v3

    .line 391
    .local v3, "nHole2":I
    const/4 v1, 0x0

    .line 392
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    if-ge v1, v3, :cond_2

    .line 393
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v8

    check-cast v8, Lorg/locationtech/jts/geom/LinearRing;

    .line 394
    .local v8, "thisHole":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v6, v1}, Lorg/locationtech/jts/geom/Polygon;->getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/geom/LinearRing;

    .line 395
    .local v4, "otherHole":Lorg/locationtech/jts/geom/LinearRing;
    invoke-virtual {v8, v4, p2}, Lorg/locationtech/jts/geom/LinearRing;->compareToSameClass(Ljava/lang/Object;Lorg/locationtech/jts/geom/CoordinateSequenceComparator;)I

    move-result v0

    .line 396
    .local v0, "holeComp":I
    if-eqz v0, :cond_1

    move v7, v0

    goto :goto_0

    .line 397
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 398
    goto :goto_1

    .line 399
    .end local v0    # "holeComp":I
    .end local v4    # "otherHole":Lorg/locationtech/jts/geom/LinearRing;
    .end local v8    # "thisHole":Lorg/locationtech/jts/geom/LinearRing;
    :cond_2
    if-ge v1, v2, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    .line 400
    :cond_3
    if-ge v1, v3, :cond_4

    const/4 v7, -0x1

    goto :goto_0

    .line 401
    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected computeEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LinearRing;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    return-object v0
.end method

.method public convexHull()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->getExteriorRing()Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->convexHull()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z
    .locals 8
    .param p1, "other"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "tolerance"    # D

    .prologue
    const/4 v4, 0x0

    .line 294
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Polygon;->isEquivalentClass(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v1, p1

    .line 297
    check-cast v1, Lorg/locationtech/jts/geom/Polygon;

    .line 298
    .local v1, "otherPolygon":Lorg/locationtech/jts/geom/Polygon;
    iget-object v3, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    .line 299
    .local v3, "thisShell":Lorg/locationtech/jts/geom/Geometry;
    iget-object v2, v1, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    .line 300
    .local v2, "otherPolygonShell":Lorg/locationtech/jts/geom/Geometry;
    invoke-virtual {v3, v2, p2, p3}, Lorg/locationtech/jts/geom/Geometry;->equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 303
    iget-object v5, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v5, v5

    iget-object v6, v1, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v6, v6

    if-ne v5, v6, :cond_0

    .line 306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 307
    iget-object v5, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v5, v5, v0

    iget-object v6, v1, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6, p2, p3}, Lorg/locationtech/jts/geom/Geometry;->equalsExact(Lorg/locationtech/jts/geom/Geometry;D)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public getArea()D
    .locals 6

    .prologue
    .line 245
    const-wide/16 v0, 0x0

    .line 246
    .local v0, "area":D
    iget-object v3, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v3

    invoke-static {v3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->signedArea(Lorg/locationtech/jts/geom/CoordinateSequence;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v0, v4

    .line 247
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 248
    iget-object v3, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v3

    invoke-static {v3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->signedArea(Lorg/locationtech/jts/geom/CoordinateSequence;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sub-double/2addr v0, v4

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    :cond_0
    return-wide v0
.end method

.method public getBoundary()Lorg/locationtech/jts/geom/Geometry;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 275
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v2

    .line 286
    :goto_0
    return-object v2

    .line 278
    :cond_0
    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Lorg/locationtech/jts/geom/LinearRing;

    .line 279
    .local v1, "rings":[Lorg/locationtech/jts/geom/LinearRing;
    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    aput-object v2, v1, v4

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 281
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_1
    array-length v2, v1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 285
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing(Lorg/locationtech/jts/geom/CoordinateSequence;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v2

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v2

    goto :goto_0
.end method

.method public getBoundaryDimension()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 8

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 138
    const/4 v7, 0x0

    new-array v1, v7, [Lorg/locationtech/jts/geom/Coordinate;

    .line 154
    :cond_0
    return-object v1

    .line 140
    :cond_1
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Polygon;->getNumPoints()I

    move-result v7

    new-array v1, v7, [Lorg/locationtech/jts/geom/Coordinate;

    .line 141
    .local v1, "coordinates":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v4, -0x1

    .line 142
    .local v4, "k":I
    iget-object v7, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v7}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 143
    .local v5, "shellCoordinates":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 144
    add-int/lit8 v4, v4, 0x1

    .line 145
    aget-object v7, v5, v6

    aput-object v7, v1, v4

    .line 143
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 147
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 148
    iget-object v7, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 149
    .local v0, "childCoordinates":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v7, v0

    if-ge v3, v7, :cond_3

    .line 150
    add-int/lit8 v4, v4, 0x1

    .line 151
    aget-object v7, v0, v3

    aput-object v7, v1, v4

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 147
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x2

    return v0
.end method

.method public getExteriorRing()Lorg/locationtech/jts/geom/LineString;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    return-object v0
.end method

.method public getGeometryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    const-string v0, "Polygon"

    return-object v0
.end method

.method public getInteriorRingN(I)Lorg/locationtech/jts/geom/LineString;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength()D
    .locals 6

    .prologue
    .line 260
    const-wide/16 v2, 0x0

    .line 261
    .local v2, "len":D
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LinearRing;->getLength()D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 263
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LinearRing;->getLength()D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_0
    return-wide v2
.end method

.method public getNumInteriorRing()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v0, v0

    return v0
.end method

.method public getNumPoints()I
    .locals 3

    .prologue
    .line 158
    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LinearRing;->getNumPoints()I

    move-result v1

    .line 159
    .local v1, "numPoints":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 160
    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LinearRing;->getNumPoints()I

    move-result v2

    add-int/2addr v1, v2

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return v1
.end method

.method protected getSortIndex()I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x5

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LinearRing;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isRectangle()Z
    .locals 18

    .prologue
    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/geom/Polygon;->getNumInteriorRing()I

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x0

    .line 219
    :goto_0
    return v15

    .line 192
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    if-nez v15, :cond_1

    const/4 v15, 0x0

    goto :goto_0

    .line 193
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v15}, Lorg/locationtech/jts/geom/LinearRing;->getNumPoints()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    const/4 v15, 0x0

    goto :goto_0

    .line 195
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v15}, Lorg/locationtech/jts/geom/LinearRing;->getCoordinateSequence()Lorg/locationtech/jts/geom/CoordinateSequence;

    move-result-object v8

    .line 198
    .local v8, "seq":Lorg/locationtech/jts/geom/CoordinateSequence;
    invoke-virtual/range {p0 .. p0}, Lorg/locationtech/jts/geom/Polygon;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v2

    .line 199
    .local v2, "env":Lorg/locationtech/jts/geom/Envelope;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/4 v15, 0x5

    if-ge v3, v15, :cond_5

    .line 200
    invoke-interface {v8, v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->getX(I)D

    move-result-wide v10

    .line 201
    .local v10, "x":D
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v16

    cmpl-double v15, v10, v16

    if-eqz v15, :cond_3

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v16

    cmpl-double v15, v10, v16

    if-eqz v15, :cond_3

    const/4 v15, 0x0

    goto :goto_0

    .line 202
    :cond_3
    invoke-interface {v8, v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->getY(I)D

    move-result-wide v12

    .line 203
    .local v12, "y":D
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v16

    cmpl-double v15, v12, v16

    if-eqz v15, :cond_4

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v16

    cmpl-double v15, v12, v16

    if-eqz v15, :cond_4

    const/4 v15, 0x0

    goto :goto_0

    .line 199
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 207
    .end local v10    # "x":D
    .end local v12    # "y":D
    :cond_5
    const/4 v15, 0x0

    invoke-interface {v8, v15}, Lorg/locationtech/jts/geom/CoordinateSequence;->getX(I)D

    move-result-wide v4

    .line 208
    .local v4, "prevX":D
    const/4 v15, 0x0

    invoke-interface {v8, v15}, Lorg/locationtech/jts/geom/CoordinateSequence;->getY(I)D

    move-result-wide v6

    .line 209
    .local v6, "prevY":D
    const/4 v3, 0x1

    :goto_2
    const/4 v15, 0x4

    if-gt v3, v15, :cond_9

    .line 210
    invoke-interface {v8, v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->getX(I)D

    move-result-wide v10

    .line 211
    .restart local v10    # "x":D
    invoke-interface {v8, v3}, Lorg/locationtech/jts/geom/CoordinateSequence;->getY(I)D

    move-result-wide v12

    .line 212
    .restart local v12    # "y":D
    cmpl-double v15, v10, v4

    if-eqz v15, :cond_6

    const/4 v9, 0x1

    .line 213
    .local v9, "xChanged":Z
    :goto_3
    cmpl-double v15, v12, v6

    if-eqz v15, :cond_7

    const/4 v14, 0x1

    .line 214
    .local v14, "yChanged":Z
    :goto_4
    if-ne v9, v14, :cond_8

    .line 215
    const/4 v15, 0x0

    goto :goto_0

    .line 212
    .end local v9    # "xChanged":Z
    .end local v14    # "yChanged":Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 213
    .restart local v9    # "xChanged":Z
    :cond_7
    const/4 v14, 0x0

    goto :goto_4

    .line 216
    .restart local v14    # "yChanged":Z
    :cond_8
    move-wide v4, v10

    .line 217
    move-wide v6, v12

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 219
    .end local v9    # "xChanged":Z
    .end local v10    # "x":D
    .end local v12    # "y":D
    .end local v14    # "yChanged":Z
    :cond_9
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method public normalize()V
    .locals 3

    .prologue
    .line 368
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/locationtech/jts/geom/Polygon;->normalize(Lorg/locationtech/jts/geom/LinearRing;Z)V

    .line 369
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 370
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/locationtech/jts/geom/Polygon;->normalize(Lorg/locationtech/jts/geom/LinearRing;Z)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 373
    return-void
.end method

.method public reverse()Lorg/locationtech/jts/geom/Geometry;
    .locals 4

    .prologue
    .line 425
    invoke-super {p0}, Lorg/locationtech/jts/geom/Geometry;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Polygon;

    .line 426
    .local v1, "poly":Lorg/locationtech/jts/geom/Polygon;
    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LinearRing;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LinearRing;->reverse()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/LinearRing;

    iput-object v2, v1, Lorg/locationtech/jts/geom/Polygon;->shell:Lorg/locationtech/jts/geom/LinearRing;

    .line 427
    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v2, v2

    new-array v2, v2, [Lorg/locationtech/jts/geom/LinearRing;

    iput-object v2, v1, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 429
    iget-object v3, v1, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    iget-object v2, p0, Lorg/locationtech/jts/geom/Polygon;->holes:[Lorg/locationtech/jts/geom/LinearRing;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LinearRing;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/LinearRing;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LinearRing;->reverse()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/LinearRing;

    aput-object v2, v3, v0

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 431
    :cond_0
    return-object v1
.end method
