.class public Lorg/locationtech/jts/operation/distance/IndexedFacetDistance;
.super Ljava/lang/Object;
.source "IndexedFacetDistance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/operation/distance/IndexedFacetDistance$FacetSequenceDistance;
    }
.end annotation


# instance fields
.field private cachedTree:Lorg/locationtech/jts/index/strtree/STRtree;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {p1}, Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder;->build(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/index/strtree/STRtree;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/IndexedFacetDistance;->cachedTree:Lorg/locationtech/jts/index/strtree/STRtree;

    .line 88
    return-void
.end method

.method public static distance(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)D
    .locals 4
    .param p0, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "g2"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 67
    new-instance v0, Lorg/locationtech/jts/operation/distance/IndexedFacetDistance;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/distance/IndexedFacetDistance;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 68
    .local v0, "dist":Lorg/locationtech/jts/operation/distance/IndexedFacetDistance;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/distance/IndexedFacetDistance;->getDistance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v2

    return-wide v2
.end method

.method private static facetDistance([Ljava/lang/Object;)D
    .locals 4
    .param p0, "obj"    # [Ljava/lang/Object;

    .prologue
    .line 108
    const/4 v2, 0x0

    aget-object v0, p0, v2

    .line 109
    .local v0, "o1":Ljava/lang/Object;
    const/4 v2, 0x1

    aget-object v1, p0, v2

    .line 110
    .local v1, "o2":Ljava/lang/Object;
    check-cast v0, Lorg/locationtech/jts/operation/distance/FacetSequence;

    .end local v0    # "o1":Ljava/lang/Object;
    check-cast v1, Lorg/locationtech/jts/operation/distance/FacetSequence;

    .end local v1    # "o2":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lorg/locationtech/jts/operation/distance/FacetSequence;->distance(Lorg/locationtech/jts/operation/distance/FacetSequence;)D

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public getDistance(Lorg/locationtech/jts/geom/Geometry;)D
    .locals 5
    .param p1, "g"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 100
    invoke-static {p1}, Lorg/locationtech/jts/operation/distance/FacetSequenceTreeBuilder;->build(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/index/strtree/STRtree;

    move-result-object v1

    .line 101
    .local v1, "tree2":Lorg/locationtech/jts/index/strtree/STRtree;
    iget-object v2, p0, Lorg/locationtech/jts/operation/distance/IndexedFacetDistance;->cachedTree:Lorg/locationtech/jts/index/strtree/STRtree;

    new-instance v3, Lorg/locationtech/jts/operation/distance/IndexedFacetDistance$FacetSequenceDistance;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/locationtech/jts/operation/distance/IndexedFacetDistance$FacetSequenceDistance;-><init>(Lorg/locationtech/jts/operation/distance/IndexedFacetDistance$1;)V

    invoke-virtual {v2, v1, v3}, Lorg/locationtech/jts/index/strtree/STRtree;->nearestNeighbour(Lorg/locationtech/jts/index/strtree/STRtree;Lorg/locationtech/jts/index/strtree/ItemDistance;)[Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "obj":[Ljava/lang/Object;
    invoke-static {v0}, Lorg/locationtech/jts/operation/distance/IndexedFacetDistance;->facetDistance([Ljava/lang/Object;)D

    move-result-wide v2

    return-wide v2
.end method
