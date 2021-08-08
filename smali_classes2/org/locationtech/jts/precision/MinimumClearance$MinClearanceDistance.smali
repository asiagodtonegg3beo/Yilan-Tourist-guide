.class Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;
.super Ljava/lang/Object;
.source "MinimumClearance.java"

# interfaces
.implements Lorg/locationtech/jts/index/strtree/ItemDistance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/precision/MinimumClearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MinClearanceDistance"
.end annotation


# instance fields
.field private minDist:D

.field private minPts:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v0, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    .line 232
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    iput-object v0, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minPts:[Lorg/locationtech/jts/geom/Coordinate;

    return-void
.end method

.method synthetic constructor <init>(Lorg/locationtech/jts/precision/MinimumClearance$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/locationtech/jts/precision/MinimumClearance$1;

    .prologue
    .line 228
    invoke-direct {p0}, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;-><init>()V

    return-void
.end method

.method private segmentDistance(Lorg/locationtech/jts/operation/distance/FacetSequence;Lorg/locationtech/jts/operation/distance/FacetSequence;)D
    .locals 10
    .param p1, "fs1"    # Lorg/locationtech/jts/operation/distance/FacetSequence;
    .param p2, "fs2"    # Lorg/locationtech/jts/operation/distance/FacetSequence;

    .prologue
    .line 280
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance/FacetSequence;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 281
    const/4 v3, 0x1

    .local v3, "i2":I
    :goto_1
    invoke-virtual {p2}, Lorg/locationtech/jts/operation/distance/FacetSequence;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 283
    invoke-virtual {p1, v2}, Lorg/locationtech/jts/operation/distance/FacetSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 285
    .local v4, "p":Lorg/locationtech/jts/geom/Coordinate;
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p2, v7}, Lorg/locationtech/jts/operation/distance/FacetSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 286
    .local v5, "seg0":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2, v3}, Lorg/locationtech/jts/operation/distance/FacetSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    .line 288
    .local v6, "seg1":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4, v6}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 289
    invoke-static {v4, v5, v6}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->distancePointLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 290
    .local v0, "d":D
    iget-wide v8, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    cmpg-double v7, v0, v8

    if-gez v7, :cond_0

    .line 291
    iput-wide v0, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    .line 292
    invoke-direct {p0, v4, v5, v6}, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->updatePts(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 293
    const-wide/16 v8, 0x0

    cmpl-double v7, v0, v8

    if-nez v7, :cond_0

    .line 299
    .end local v0    # "d":D
    .end local v3    # "i2":I
    .end local v4    # "p":Lorg/locationtech/jts/geom/Coordinate;
    .end local v5    # "seg0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v6    # "seg1":Lorg/locationtech/jts/geom/Coordinate;
    :goto_2
    return-wide v0

    .line 281
    .restart local v3    # "i2":I
    .restart local v4    # "p":Lorg/locationtech/jts/geom/Coordinate;
    .restart local v5    # "seg0":Lorg/locationtech/jts/geom/Coordinate;
    .restart local v6    # "seg1":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 280
    .end local v4    # "p":Lorg/locationtech/jts/geom/Coordinate;
    .end local v5    # "seg0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v6    # "seg1":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    .end local v3    # "i2":I
    :cond_2
    iget-wide v0, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    goto :goto_2
.end method

.method private updatePts(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 5
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "seg0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "seg1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 304
    iget-object v1, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minPts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 305
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0, p2, p3}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 306
    .local v0, "seg":Lorg/locationtech/jts/geom/LineSegment;
    iget-object v1, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minPts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x1

    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/LineSegment;->closestPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    aput-object v3, v1, v2

    .line 307
    return-void
.end method

.method private vertexDistance(Lorg/locationtech/jts/operation/distance/FacetSequence;Lorg/locationtech/jts/operation/distance/FacetSequence;)D
    .locals 8
    .param p1, "fs1"    # Lorg/locationtech/jts/operation/distance/FacetSequence;
    .param p2, "fs2"    # Lorg/locationtech/jts/operation/distance/FacetSequence;

    .prologue
    .line 260
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance/FacetSequence;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 261
    const/4 v3, 0x0

    .local v3, "i2":I
    :goto_1
    invoke-virtual {p2}, Lorg/locationtech/jts/operation/distance/FacetSequence;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 262
    invoke-virtual {p1, v2}, Lorg/locationtech/jts/operation/distance/FacetSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 263
    .local v4, "p1":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2, v3}, Lorg/locationtech/jts/operation/distance/FacetSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 264
    .local v5, "p2":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 265
    invoke-virtual {v4, v5}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 266
    .local v0, "d":D
    iget-wide v6, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    cmpg-double v6, v0, v6

    if-gez v6, :cond_0

    .line 267
    iput-wide v0, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    .line 268
    iget-object v6, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minPts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 269
    iget-object v6, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minPts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v7, 0x1

    aput-object v5, v6, v7

    .line 270
    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-nez v6, :cond_0

    .line 276
    .end local v0    # "d":D
    .end local v3    # "i2":I
    .end local v4    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .end local v5    # "p2":Lorg/locationtech/jts/geom/Coordinate;
    :goto_2
    return-wide v0

    .line 261
    .restart local v3    # "i2":I
    .restart local v4    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .restart local v5    # "p2":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 260
    .end local v4    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .end local v5    # "p2":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    .end local v3    # "i2":I
    :cond_2
    iget-wide v0, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    goto :goto_2
.end method


# virtual methods
.method public distance(Lorg/locationtech/jts/index/strtree/ItemBoundable;Lorg/locationtech/jts/index/strtree/ItemBoundable;)D
    .locals 4
    .param p1, "b1"    # Lorg/locationtech/jts/index/strtree/ItemBoundable;
    .param p2, "b2"    # Lorg/locationtech/jts/index/strtree/ItemBoundable;

    .prologue
    .line 240
    invoke-virtual {p1}, Lorg/locationtech/jts/index/strtree/ItemBoundable;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/operation/distance/FacetSequence;

    .line 241
    .local v0, "fs1":Lorg/locationtech/jts/operation/distance/FacetSequence;
    invoke-virtual {p2}, Lorg/locationtech/jts/index/strtree/ItemBoundable;->getItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/operation/distance/FacetSequence;

    .line 242
    .local v1, "fs2":Lorg/locationtech/jts/operation/distance/FacetSequence;
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v2, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    .line 243
    invoke-virtual {p0, v0, v1}, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->distance(Lorg/locationtech/jts/operation/distance/FacetSequence;Lorg/locationtech/jts/operation/distance/FacetSequence;)D

    move-result-wide v2

    return-wide v2
.end method

.method public distance(Lorg/locationtech/jts/operation/distance/FacetSequence;Lorg/locationtech/jts/operation/distance/FacetSequence;)D
    .locals 4
    .param p1, "fs1"    # Lorg/locationtech/jts/operation/distance/FacetSequence;
    .param p2, "fs2"    # Lorg/locationtech/jts/operation/distance/FacetSequence;

    .prologue
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 250
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->vertexDistance(Lorg/locationtech/jts/operation/distance/FacetSequence;Lorg/locationtech/jts/operation/distance/FacetSequence;)D

    .line 251
    invoke-virtual {p1}, Lorg/locationtech/jts/operation/distance/FacetSequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/locationtech/jts/operation/distance/FacetSequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    .line 256
    :goto_0
    return-wide v0

    .line 252
    :cond_0
    iget-wide v0, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    goto :goto_0

    .line 253
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->segmentDistance(Lorg/locationtech/jts/operation/distance/FacetSequence;Lorg/locationtech/jts/operation/distance/FacetSequence;)D

    .line 254
    iget-wide v0, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    iget-wide v0, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    goto :goto_0

    .line 255
    :cond_2
    invoke-direct {p0, p2, p1}, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->segmentDistance(Lorg/locationtech/jts/operation/distance/FacetSequence;Lorg/locationtech/jts/operation/distance/FacetSequence;)D

    .line 256
    iget-wide v0, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minDist:D

    goto :goto_0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/locationtech/jts/precision/MinimumClearance$MinClearanceDistance;->minPts:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method
