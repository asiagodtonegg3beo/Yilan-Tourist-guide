.class public Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;
.super Ljava/lang/Object;
.source "InteriorIntersectionFinderAdder.java"

# interfaces
.implements Lorg/locationtech/jts/noding/SegmentIntersector;


# instance fields
.field private final interiorIntersections:Ljava/util/List;

.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V
    .locals 1
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;->interiorIntersections:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public getInteriorIntersections()Ljava/util/List;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;->interiorIntersections:Ljava/util/List;

    return-object v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public processIntersections(Lorg/locationtech/jts/noding/SegmentString;ILorg/locationtech/jts/noding/SegmentString;I)V
    .locals 7
    .param p1, "e0"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p2, "segIndex0"    # I
    .param p3, "e1"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p4, "segIndex1"    # I

    .prologue
    .line 65
    if-ne p1, p3, :cond_1

    if-ne p2, p4, :cond_1

    .line 84
    .end local p1    # "e0":Lorg/locationtech/jts/noding/SegmentString;
    .end local p3    # "e1":Lorg/locationtech/jts/noding/SegmentString;
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local p1    # "e0":Lorg/locationtech/jts/noding/SegmentString;
    .restart local p3    # "e1":Lorg/locationtech/jts/noding/SegmentString;
    :cond_1
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    aget-object v1, v5, p2

    .line 68
    .local v1, "p00":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    add-int/lit8 v6, p2, 0x1

    aget-object v2, v5, v6

    .line 69
    .local v2, "p01":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p3}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    aget-object v3, v5, p4

    .line 70
    .local v3, "p10":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p3}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    add-int/lit8 v6, p4, 0x1

    aget-object v4, v5, v6

    .line 72
    .local v4, "p11":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v5, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v5, v1, v2, v3, v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 75
    iget-object v5, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v5}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 76
    iget-object v5, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v5}, Lorg/locationtech/jts/algorithm/LineIntersector;->isInteriorIntersection()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    const/4 v0, 0x0

    .local v0, "intIndex":I
    :goto_1
    iget-object v5, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v5}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersectionNum()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 78
    iget-object v5, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;->interiorIntersections:Ljava/util/List;

    iget-object v6, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v6, v0}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersection(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_2
    check-cast p1, Lorg/locationtech/jts/noding/NodedSegmentString;

    .end local p1    # "e0":Lorg/locationtech/jts/noding/SegmentString;
    iget-object v5, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Lorg/locationtech/jts/noding/NodedSegmentString;->addIntersections(Lorg/locationtech/jts/algorithm/LineIntersector;II)V

    .line 81
    check-cast p3, Lorg/locationtech/jts/noding/NodedSegmentString;

    .end local p3    # "e1":Lorg/locationtech/jts/noding/SegmentString;
    iget-object v5, p0, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    const/4 v6, 0x1

    invoke-virtual {p3, v5, p4, v6}, Lorg/locationtech/jts/noding/NodedSegmentString;->addIntersections(Lorg/locationtech/jts/algorithm/LineIntersector;II)V

    goto :goto_0
.end method
