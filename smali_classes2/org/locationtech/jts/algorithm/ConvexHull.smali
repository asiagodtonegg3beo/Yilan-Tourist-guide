.class public Lorg/locationtech/jts/algorithm/ConvexHull;
.super Ljava/lang/Object;
.source "ConvexHull.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/algorithm/ConvexHull$RadialComparator;
    }
.end annotation


# instance fields
.field private geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

.field private inputPts:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "geometry"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 54
    invoke-static {p1}, Lorg/locationtech/jts/algorithm/ConvexHull;->extractCoordinates(Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/algorithm/ConvexHull;-><init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/GeometryFactory;)V

    .line 55
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/GeometryFactory;)V
    .locals 1
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "geomFactory"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {p1}, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;->filterCoordinates([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->inputPts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 63
    iput-object p2, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    .line 64
    return-void
.end method

.method private cleanRing([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 8
    .param p1, "original"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 407
    const/4 v6, 0x0

    aget-object v6, p1, v6

    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, p1, v7

    invoke-static {v6, v7}, Lorg/locationtech/jts/util/Assert;->equals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "cleanedRing":Ljava/util/ArrayList;
    const/4 v5, 0x0

    .line 410
    .local v5, "previousDistinctCoordinate":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, p1

    add-int/lit8 v6, v6, -0x2

    if-gt v3, v6, :cond_3

    .line 411
    aget-object v2, p1, v3

    .line 412
    .local v2, "currentCoordinate":Lorg/locationtech/jts/geom/Coordinate;
    add-int/lit8 v6, v3, 0x1

    aget-object v4, p1, v6

    .line 413
    .local v4, "nextCoordinate":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v2, v4}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 410
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    :cond_1
    if-eqz v5, :cond_2

    .line 417
    invoke-direct {p0, v5, v2, v4}, Lorg/locationtech/jts/algorithm/ConvexHull;->isBetween(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 420
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    move-object v5, v2

    goto :goto_1

    .line 423
    .end local v2    # "currentCoordinate":Lorg/locationtech/jts/geom/Coordinate;
    .end local v4    # "nextCoordinate":Lorg/locationtech/jts/geom/Coordinate;
    :cond_3
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, p1, v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v1, v6, [Lorg/locationtech/jts/geom/Coordinate;

    .line 425
    .local v1, "cleanedRingCoordinates":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/locationtech/jts/geom/Coordinate;

    check-cast v6, [Lorg/locationtech/jts/geom/Coordinate;

    return-object v6
.end method

.method private computeOctPts([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 10
    .param p1, "inputPts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 287
    const/16 v3, 0x8

    new-array v2, v3, [Lorg/locationtech/jts/geom/Coordinate;

    .line 288
    .local v2, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 289
    const/4 v3, 0x0

    aget-object v3, p1, v3

    aput-object v3, v2, v1

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_9

    .line 292
    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    const/4 v3, 0x0

    aget-object v3, v2, v3

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_1

    .line 293
    const/4 v3, 0x0

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 295
    :cond_1
    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    aget-object v3, p1, v0

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v4, v6

    const/4 v3, 0x1

    aget-object v3, v2, v3

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    const/4 v3, 0x1

    aget-object v3, v2, v3

    iget-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v6, v8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    .line 296
    const/4 v3, 0x1

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 298
    :cond_2
    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    const/4 v3, 0x2

    aget-object v3, v2, v3

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    .line 299
    const/4 v3, 0x2

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 301
    :cond_3
    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    aget-object v3, p1, v0

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v4, v6

    const/4 v3, 0x3

    aget-object v3, v2, v3

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    const/4 v3, 0x3

    aget-object v3, v2, v3

    iget-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-lez v3, :cond_4

    .line 302
    const/4 v3, 0x3

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 304
    :cond_4
    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    const/4 v3, 0x4

    aget-object v3, v2, v3

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v3, v4, v6

    if-lez v3, :cond_5

    .line 305
    const/4 v3, 0x4

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 307
    :cond_5
    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    aget-object v3, p1, v0

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v4, v6

    const/4 v3, 0x5

    aget-object v3, v2, v3

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    const/4 v3, 0x5

    aget-object v3, v2, v3

    iget-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    sub-double/2addr v6, v8

    cmpl-double v3, v4, v6

    if-lez v3, :cond_6

    .line 308
    const/4 v3, 0x5

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 310
    :cond_6
    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    const/4 v3, 0x6

    aget-object v3, v2, v3

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpg-double v3, v4, v6

    if-gez v3, :cond_7

    .line 311
    const/4 v3, 0x6

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 313
    :cond_7
    aget-object v3, p1, v0

    iget-wide v4, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    aget-object v3, p1, v0

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v4, v6

    const/4 v3, 0x7

    aget-object v3, v2, v3

    iget-wide v6, v3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    const/4 v3, 0x7

    aget-object v3, v2, v3

    iget-wide v8, v3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    add-double/2addr v6, v8

    cmpg-double v3, v4, v6

    if-gez v3, :cond_8

    .line 314
    const/4 v3, 0x7

    aget-object v4, p1, v0

    aput-object v4, v2, v3

    .line 291
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 317
    :cond_9
    return-object v2
.end method

.method private computeOctRing([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4
    .param p1, "inputPts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/ConvexHull;->computeOctPts([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 274
    .local v1, "octPts":[Lorg/locationtech/jts/geom/Coordinate;
    new-instance v0, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 275
    .local v0, "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/geom/CoordinateList;->add([Lorg/locationtech/jts/geom/Coordinate;Z)Z

    .line 278
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 279
    const/4 v2, 0x0

    .line 282
    :goto_0
    return-object v2

    .line 281
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->closeRing()V

    .line 282
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    goto :goto_0
.end method

.method private static extractCoordinates(Lorg/locationtech/jts/geom/Geometry;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 68
    new-instance v0, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;

    invoke-direct {v0}, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;-><init>()V

    .line 69
    .local v0, "filter":Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateFilter;)V

    .line 70
    invoke-virtual {v0}, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    return-object v1
.end method

.method private grahamScan([Lorg/locationtech/jts/geom/Coordinate;)Ljava/util/Stack;
    .locals 6
    .param p1, "c"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v5, 0x0

    .line 226
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 227
    .local v2, "ps":Ljava/util/Stack;
    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 231
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Coordinate;

    .line 234
    .local v1, "p":Lorg/locationtech/jts/geom/Coordinate;
    :goto_1
    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Coordinate;

    aget-object v4, p1, v0

    invoke-static {v3, v1, v4}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v3

    if-lez v3, :cond_0

    .line 236
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "p":Lorg/locationtech/jts/geom/Coordinate;
    check-cast v1, Lorg/locationtech/jts/geom/Coordinate;

    .restart local v1    # "p":Lorg/locationtech/jts/geom/Coordinate;
    goto :goto_1

    .line 238
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "p":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-object v2
.end method

.method private isBetween(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 6
    .param p1, "c1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "c2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "c3"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 250
    invoke-static {p1, p2, p3}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 253
    :cond_1
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    .line 254
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    move v0, v1

    .line 255
    goto :goto_0

    .line 257
    :cond_2
    iget-wide v2, p3, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_3

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_3

    move v0, v1

    .line 258
    goto :goto_0

    .line 261
    :cond_3
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    .line 262
    iget-wide v2, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_4

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_4

    move v0, v1

    .line 263
    goto :goto_0

    .line 265
    :cond_4
    iget-wide v2, p3, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    iget-wide v2, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v4, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    .line 266
    goto :goto_0
.end method

.method private lineOrPolygon([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Geometry;
    .locals 6
    .param p1, "coordinates"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 390
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/ConvexHull;->cleanRing([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object p1

    .line 391
    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 392
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/locationtech/jts/geom/Coordinate;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    aget-object v3, p1, v5

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    .line 397
    :goto_0
    return-object v1

    .line 396
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    .line 397
    .local v0, "linearRing":Lorg/locationtech/jts/geom/LinearRing;
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v1

    goto :goto_0
.end method

.method private padArray3([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 3
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 186
    const/4 v2, 0x3

    new-array v1, v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 187
    .local v1, "pad":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 188
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 189
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 187
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    const/4 v2, 0x0

    aget-object v2, p1, v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 194
    :cond_1
    return-object v1
.end method

.method private preSort([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 7
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v6, 0x0

    .line 203
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 204
    aget-object v2, p1, v0

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    aget-object v4, p1, v6

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    aget-object v2, p1, v0

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    aget-object v4, p1, v6

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    aget-object v2, p1, v0

    iget-wide v2, v2, Lorg/locationtech/jts/geom/Coordinate;->x:D

    aget-object v4, p1, v6

    iget-wide v4, v4, Lorg/locationtech/jts/geom/Coordinate;->x:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 205
    :cond_0
    aget-object v1, p1, v6

    .line 206
    .local v1, "t":Lorg/locationtech/jts/geom/Coordinate;
    aget-object v2, p1, v0

    aput-object v2, p1, v6

    .line 207
    aput-object v1, p1, v0

    .line 203
    .end local v1    # "t":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_2
    const/4 v2, 0x1

    array-length v3, p1

    new-instance v4, Lorg/locationtech/jts/algorithm/ConvexHull$RadialComparator;

    aget-object v5, p1, v6

    invoke-direct {v4, v5}, Lorg/locationtech/jts/algorithm/ConvexHull$RadialComparator;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-static {p1, v2, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 215
    return-object p1
.end method

.method private reduce([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 6
    .param p1, "inputPts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/ConvexHull;->computeOctRing([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 154
    .local v1, "polyPts":[Lorg/locationtech/jts/geom/Coordinate;
    if-nez v1, :cond_0

    .line 181
    .end local p1    # "inputPts":[Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-object p1

    .line 161
    .restart local p1    # "inputPts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 162
    .local v3, "reducedSet":Ljava/util/TreeSet;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 163
    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 172
    aget-object v4, p1, v0

    invoke-static {v4, v1}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->isPointInRing(Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 173
    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 176
    :cond_3
    invoke-static {v3}, Lorg/locationtech/jts/geom/CoordinateArrays;->toCoordinateArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 179
    .local v2, "reducedPts":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v4, v2

    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    .line 180
    invoke-direct {p0, v2}, Lorg/locationtech/jts/algorithm/ConvexHull;->padArray3([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v2

    .line 181
    goto :goto_0
.end method


# virtual methods
.method public getConvexHull()Lorg/locationtech/jts/geom/Geometry;
    .locals 7

    .prologue
    .line 87
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->inputPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v4, v4

    if-nez v4, :cond_0

    .line 88
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v4

    .line 112
    :goto_0
    return-object v4

    .line 90
    :cond_0
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->inputPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 91
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v5, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->inputPts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object v4

    goto :goto_0

    .line 93
    :cond_1
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->inputPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v4, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 94
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->geomFactory:Lorg/locationtech/jts/geom/GeometryFactory;

    iget-object v5, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->inputPts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v4

    goto :goto_0

    .line 97
    :cond_2
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->inputPts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 99
    .local v2, "reducedPts":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->inputPts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v4, v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_3

    .line 100
    iget-object v4, p0, Lorg/locationtech/jts/algorithm/ConvexHull;->inputPts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p0, v4}, Lorg/locationtech/jts/algorithm/ConvexHull;->reduce([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 103
    :cond_3
    invoke-direct {p0, v2}, Lorg/locationtech/jts/algorithm/ConvexHull;->preSort([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 106
    .local v3, "sortedPts":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v3}, Lorg/locationtech/jts/algorithm/ConvexHull;->grahamScan([Lorg/locationtech/jts/geom/Coordinate;)Ljava/util/Stack;

    move-result-object v1

    .line 109
    .local v1, "cHS":Ljava/util/Stack;
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/algorithm/ConvexHull;->toCoordinateArray(Ljava/util/Stack;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 112
    .local v0, "cH":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/algorithm/ConvexHull;->lineOrPolygon([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v4

    goto :goto_0
.end method

.method protected toCoordinateArray(Ljava/util/Stack;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 4
    .param p1, "stack"    # Ljava/util/Stack;

    .prologue
    .line 120
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v3

    new-array v1, v3, [Lorg/locationtech/jts/geom/Coordinate;

    .line 121
    .local v1, "coordinates":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 122
    invoke-virtual {p1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    .line 123
    .local v0, "coordinate":Lorg/locationtech/jts/geom/Coordinate;
    aput-object v0, v1, v2

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "coordinate":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    return-object v1
.end method
