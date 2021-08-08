.class public Lorg/locationtech/jts/noding/SegmentStringDissolver;
.super Ljava/lang/Object;
.source "SegmentStringDissolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/noding/SegmentStringDissolver$SegmentStringMerger;
    }
.end annotation


# instance fields
.field private merger:Lorg/locationtech/jts/noding/SegmentStringDissolver$SegmentStringMerger;

.field private ocaMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/locationtech/jts/noding/SegmentStringDissolver;-><init>(Lorg/locationtech/jts/noding/SegmentStringDissolver$SegmentStringMerger;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/noding/SegmentStringDissolver$SegmentStringMerger;)V
    .locals 1
    .param p1, "merger"    # Lorg/locationtech/jts/noding/SegmentStringDissolver$SegmentStringMerger;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/SegmentStringDissolver;->ocaMap:Ljava/util/Map;

    .line 73
    iput-object p1, p0, Lorg/locationtech/jts/noding/SegmentStringDissolver;->merger:Lorg/locationtech/jts/noding/SegmentStringDissolver$SegmentStringMerger;

    .line 74
    return-void
.end method

.method private add(Lorg/locationtech/jts/noding/OrientedCoordinateArray;Lorg/locationtech/jts/noding/SegmentString;)V
    .locals 1
    .param p1, "oca"    # Lorg/locationtech/jts/noding/OrientedCoordinateArray;
    .param p2, "segString"    # Lorg/locationtech/jts/noding/SegmentString;

    .prologue
    .line 96
    iget-object v0, p0, Lorg/locationtech/jts/noding/SegmentStringDissolver;->ocaMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method private findMatching(Lorg/locationtech/jts/noding/OrientedCoordinateArray;Lorg/locationtech/jts/noding/SegmentString;)Lorg/locationtech/jts/noding/SegmentString;
    .locals 2
    .param p1, "oca"    # Lorg/locationtech/jts/noding/OrientedCoordinateArray;
    .param p2, "segString"    # Lorg/locationtech/jts/noding/SegmentString;

    .prologue
    .line 124
    iget-object v1, p0, Lorg/locationtech/jts/noding/SegmentStringDissolver;->ocaMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/noding/SegmentString;

    .line 131
    .local v0, "matchSS":Lorg/locationtech/jts/noding/SegmentString;
    return-object v0
.end method


# virtual methods
.method public dissolve(Ljava/util/Collection;)V
    .locals 2
    .param p1, "segStrings"    # Ljava/util/Collection;

    .prologue
    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/noding/SegmentString;

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/noding/SegmentStringDissolver;->dissolve(Lorg/locationtech/jts/noding/SegmentString;)V

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method public dissolve(Lorg/locationtech/jts/noding/SegmentString;)V
    .locals 5
    .param p1, "segString"    # Lorg/locationtech/jts/noding/SegmentString;

    .prologue
    .line 107
    new-instance v2, Lorg/locationtech/jts/noding/OrientedCoordinateArray;

    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/locationtech/jts/noding/OrientedCoordinateArray;-><init>([Lorg/locationtech/jts/geom/Coordinate;)V

    .line 108
    .local v2, "oca":Lorg/locationtech/jts/noding/OrientedCoordinateArray;
    invoke-direct {p0, v2, p1}, Lorg/locationtech/jts/noding/SegmentStringDissolver;->findMatching(Lorg/locationtech/jts/noding/OrientedCoordinateArray;Lorg/locationtech/jts/noding/SegmentString;)Lorg/locationtech/jts/noding/SegmentString;

    move-result-object v0

    .line 109
    .local v0, "existing":Lorg/locationtech/jts/noding/SegmentString;
    if-nez v0, :cond_1

    .line 110
    invoke-direct {p0, v2, p1}, Lorg/locationtech/jts/noding/SegmentStringDissolver;->add(Lorg/locationtech/jts/noding/OrientedCoordinateArray;Lorg/locationtech/jts/noding/SegmentString;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v3, p0, Lorg/locationtech/jts/noding/SegmentStringDissolver;->merger:Lorg/locationtech/jts/noding/SegmentStringDissolver$SegmentStringMerger;

    if-eqz v3, :cond_0

    .line 115
    invoke-interface {v0}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/locationtech/jts/geom/CoordinateArrays;->equals([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    .line 116
    .local v1, "isSameOrientation":Z
    iget-object v3, p0, Lorg/locationtech/jts/noding/SegmentStringDissolver;->merger:Lorg/locationtech/jts/noding/SegmentStringDissolver$SegmentStringMerger;

    invoke-interface {v3, v0, p1, v1}, Lorg/locationtech/jts/noding/SegmentStringDissolver$SegmentStringMerger;->merge(Lorg/locationtech/jts/noding/SegmentString;Lorg/locationtech/jts/noding/SegmentString;Z)V

    goto :goto_0
.end method

.method public getDissolved()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/locationtech/jts/noding/SegmentStringDissolver;->ocaMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
