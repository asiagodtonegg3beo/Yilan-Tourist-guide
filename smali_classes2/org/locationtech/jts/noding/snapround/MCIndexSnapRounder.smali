.class public Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;
.super Ljava/lang/Object;
.source "MCIndexSnapRounder.java"

# interfaces
.implements Lorg/locationtech/jts/noding/Noder;


# instance fields
.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field private nodedSegStrings:Ljava/util/Collection;

.field private noder:Lorg/locationtech/jts/noding/MCIndexNoder;

.field private final pm:Lorg/locationtech/jts/geom/PrecisionModel;

.field private pointSnapper:Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;

.field private final scaleFactor:D


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 2
    .param p1, "pm"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->pm:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 60
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 61
    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/algorithm/LineIntersector;->setPrecisionModel(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 62
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/PrecisionModel;->getScale()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->scaleFactor:D

    .line 63
    return-void
.end method

.method private checkCorrectness(Ljava/util/Collection;)V
    .locals 3
    .param p1, "inputSegmentStrings"    # Ljava/util/Collection;

    .prologue
    .line 83
    invoke-static {p1}, Lorg/locationtech/jts/noding/NodedSegmentString;->getNodedSubstrings(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 84
    .local v2, "resultSegStrings":Ljava/util/Collection;
    new-instance v1, Lorg/locationtech/jts/noding/NodingValidator;

    invoke-direct {v1, v2}, Lorg/locationtech/jts/noding/NodingValidator;-><init>(Ljava/util/Collection;)V

    .line 86
    .local v1, "nv":Lorg/locationtech/jts/noding/NodingValidator;
    :try_start_0
    invoke-virtual {v1}, Lorg/locationtech/jts/noding/NodingValidator;->checkValid()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private computeIntersectionSnaps(Ljava/util/Collection;)V
    .locals 6
    .param p1, "snapPts"    # Ljava/util/Collection;

    .prologue
    .line 120
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Coordinate;

    .line 122
    .local v2, "snapPt":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v0, Lorg/locationtech/jts/noding/snapround/HotPixel;

    iget-wide v4, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->scaleFactor:D

    iget-object v3, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-direct {v0, v2, v4, v5, v3}, Lorg/locationtech/jts/noding/snapround/HotPixel;-><init>(Lorg/locationtech/jts/geom/Coordinate;DLorg/locationtech/jts/algorithm/LineIntersector;)V

    .line 123
    .local v0, "hotPixel":Lorg/locationtech/jts/noding/snapround/HotPixel;
    iget-object v3, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->pointSnapper:Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;

    invoke-virtual {v3, v0}, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;->snap(Lorg/locationtech/jts/noding/snapround/HotPixel;)Z

    goto :goto_0

    .line 125
    .end local v0    # "hotPixel":Lorg/locationtech/jts/noding/snapround/HotPixel;
    .end local v2    # "snapPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    return-void
.end method

.method private computeVertexSnaps(Lorg/locationtech/jts/noding/NodedSegmentString;)V
    .locals 8
    .param p1, "e"    # Lorg/locationtech/jts/noding/NodedSegmentString;

    .prologue
    .line 145
    invoke-virtual {p1}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 146
    .local v3, "pts0":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 147
    new-instance v0, Lorg/locationtech/jts/noding/snapround/HotPixel;

    aget-object v4, v3, v1

    iget-wide v6, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->scaleFactor:D

    iget-object v5, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-direct {v0, v4, v6, v7, v5}, Lorg/locationtech/jts/noding/snapround/HotPixel;-><init>(Lorg/locationtech/jts/geom/Coordinate;DLorg/locationtech/jts/algorithm/LineIntersector;)V

    .line 148
    .local v0, "hotPixel":Lorg/locationtech/jts/noding/snapround/HotPixel;
    iget-object v4, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->pointSnapper:Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;

    invoke-virtual {v4, v0, p1, v1}, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;->snap(Lorg/locationtech/jts/noding/snapround/HotPixel;Lorg/locationtech/jts/noding/SegmentString;I)Z

    move-result v2

    .line 150
    .local v2, "isNodeAdded":Z
    if-eqz v2, :cond_0

    .line 151
    aget-object v4, v3, v1

    invoke-virtual {p1, v4, v1}, Lorg/locationtech/jts/noding/NodedSegmentString;->addIntersection(Lorg/locationtech/jts/geom/Coordinate;I)V

    .line 146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "hotPixel":Lorg/locationtech/jts/noding/snapround/HotPixel;
    .end local v2    # "isNodeAdded":Z
    :cond_1
    return-void
.end method

.method private findInteriorIntersections(Ljava/util/Collection;Lorg/locationtech/jts/algorithm/LineIntersector;)Ljava/util/List;
    .locals 2
    .param p1, "segStrings"    # Ljava/util/Collection;
    .param p2, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;

    .prologue
    .line 109
    new-instance v0, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;

    invoke-direct {v0, p2}, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;-><init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V

    .line 110
    .local v0, "intFinderAdder":Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;
    iget-object v1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->noder:Lorg/locationtech/jts/noding/MCIndexNoder;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/noding/MCIndexNoder;->setSegmentIntersector(Lorg/locationtech/jts/noding/SegmentIntersector;)V

    .line 111
    iget-object v1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->noder:Lorg/locationtech/jts/noding/MCIndexNoder;

    invoke-virtual {v1, p1}, Lorg/locationtech/jts/noding/MCIndexNoder;->computeNodes(Ljava/util/Collection;)V

    .line 112
    invoke-virtual {v0}, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;->getInteriorIntersections()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private snapRound(Ljava/util/Collection;Lorg/locationtech/jts/algorithm/LineIntersector;)V
    .locals 1
    .param p1, "segStrings"    # Ljava/util/Collection;
    .param p2, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->findInteriorIntersections(Ljava/util/Collection;Lorg/locationtech/jts/algorithm/LineIntersector;)Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, "intersections":Ljava/util/List;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->computeIntersectionSnaps(Ljava/util/Collection;)V

    .line 96
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->computeVertexSnaps(Ljava/util/Collection;)V

    .line 97
    return-void
.end method


# virtual methods
.method public computeNodes(Ljava/util/Collection;)V
    .locals 2
    .param p1, "inputSegmentStrings"    # Ljava/util/Collection;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->nodedSegStrings:Ljava/util/Collection;

    .line 73
    new-instance v0, Lorg/locationtech/jts/noding/MCIndexNoder;

    invoke-direct {v0}, Lorg/locationtech/jts/noding/MCIndexNoder;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->noder:Lorg/locationtech/jts/noding/MCIndexNoder;

    .line 74
    new-instance v0, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;

    iget-object v1, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->noder:Lorg/locationtech/jts/noding/MCIndexNoder;

    invoke-virtual {v1}, Lorg/locationtech/jts/noding/MCIndexNoder;->getIndex()Lorg/locationtech/jts/index/SpatialIndex;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;-><init>(Lorg/locationtech/jts/index/SpatialIndex;)V

    iput-object v0, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->pointSnapper:Lorg/locationtech/jts/noding/snapround/MCIndexPointSnapper;

    .line 75
    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->snapRound(Ljava/util/Collection;Lorg/locationtech/jts/algorithm/LineIntersector;)V

    .line 79
    return-void
.end method

.method public computeVertexSnaps(Ljava/util/Collection;)V
    .locals 3
    .param p1, "edges"    # Ljava/util/Collection;

    .prologue
    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i0":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/noding/NodedSegmentString;

    .line 136
    .local v0, "edge0":Lorg/locationtech/jts/noding/NodedSegmentString;
    invoke-direct {p0, v0}, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->computeVertexSnaps(Lorg/locationtech/jts/noding/NodedSegmentString;)V

    goto :goto_0

    .line 138
    .end local v0    # "edge0":Lorg/locationtech/jts/noding/NodedSegmentString;
    :cond_0
    return-void
.end method

.method public getNodedSubstrings()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/MCIndexSnapRounder;->nodedSegStrings:Ljava/util/Collection;

    invoke-static {v0}, Lorg/locationtech/jts/noding/NodedSegmentString;->getNodedSubstrings(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
