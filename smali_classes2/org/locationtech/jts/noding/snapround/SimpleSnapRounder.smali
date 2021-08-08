.class public Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;
.super Ljava/lang/Object;
.source "SimpleSnapRounder.java"

# interfaces
.implements Lorg/locationtech/jts/noding/Noder;


# instance fields
.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field private nodedSegStrings:Ljava/util/Collection;

.field private final pm:Lorg/locationtech/jts/geom/PrecisionModel;

.field private final scaleFactor:D


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 2
    .param p1, "pm"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->pm:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 59
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 60
    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/algorithm/LineIntersector;->setPrecisionModel(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 61
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/PrecisionModel;->getScale()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->scaleFactor:D

    .line 62
    return-void
.end method

.method private checkCorrectness(Ljava/util/Collection;)V
    .locals 3
    .param p1, "inputSegmentStrings"    # Ljava/util/Collection;

    .prologue
    .line 87
    invoke-static {p1}, Lorg/locationtech/jts/noding/NodedSegmentString;->getNodedSubstrings(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 88
    .local v2, "resultSegStrings":Ljava/util/Collection;
    new-instance v1, Lorg/locationtech/jts/noding/NodingValidator;

    invoke-direct {v1, v2}, Lorg/locationtech/jts/noding/NodingValidator;-><init>(Ljava/util/Collection;)V

    .line 90
    .local v1, "nv":Lorg/locationtech/jts/noding/NodingValidator;
    :try_start_0
    invoke-virtual {v1}, Lorg/locationtech/jts/noding/NodingValidator;->checkValid()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private computeSnaps(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .param p1, "segStrings"    # Ljava/util/Collection;
    .param p2, "snapPts"    # Ljava/util/Collection;

    .prologue
    .line 126
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i0":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/noding/NodedSegmentString;

    .line 128
    .local v1, "ss":Lorg/locationtech/jts/noding/NodedSegmentString;
    invoke-direct {p0, v1, p2}, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->computeSnaps(Lorg/locationtech/jts/noding/NodedSegmentString;Ljava/util/Collection;)V

    goto :goto_0

    .line 130
    .end local v1    # "ss":Lorg/locationtech/jts/noding/NodedSegmentString;
    :cond_0
    return-void
.end method

.method private computeSnaps(Lorg/locationtech/jts/noding/NodedSegmentString;Ljava/util/Collection;)V
    .locals 7
    .param p1, "ss"    # Lorg/locationtech/jts/noding/NodedSegmentString;
    .param p2, "snapPts"    # Ljava/util/Collection;

    .prologue
    .line 134
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Coordinate;

    .line 136
    .local v3, "snapPt":Lorg/locationtech/jts/geom/Coordinate;
    new-instance v0, Lorg/locationtech/jts/noding/snapround/HotPixel;

    iget-wide v4, p0, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->scaleFactor:D

    iget-object v6, p0, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/locationtech/jts/noding/snapround/HotPixel;-><init>(Lorg/locationtech/jts/geom/Coordinate;DLorg/locationtech/jts/algorithm/LineIntersector;)V

    .line 137
    .local v0, "hotPixel":Lorg/locationtech/jts/noding/snapround/HotPixel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/noding/NodedSegmentString;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 138
    invoke-virtual {v0, p1, v1}, Lorg/locationtech/jts/noding/snapround/HotPixel;->addSnappedNode(Lorg/locationtech/jts/noding/NodedSegmentString;I)Z

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "hotPixel":Lorg/locationtech/jts/noding/snapround/HotPixel;
    .end local v1    # "i":I
    .end local v3    # "snapPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    return-void
.end method

.method private computeVertexSnaps(Lorg/locationtech/jts/noding/NodedSegmentString;Lorg/locationtech/jts/noding/NodedSegmentString;)V
    .locals 10
    .param p1, "e0"    # Lorg/locationtech/jts/noding/NodedSegmentString;
    .param p2, "e1"    # Lorg/locationtech/jts/noding/NodedSegmentString;

    .prologue
    .line 166
    invoke-virtual {p1}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 167
    .local v4, "pts0":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 168
    .local v5, "pts1":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x0

    .local v1, "i0":I
    :goto_0
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    .line 169
    new-instance v0, Lorg/locationtech/jts/noding/snapround/HotPixel;

    aget-object v6, v4, v1

    iget-wide v8, p0, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->scaleFactor:D

    iget-object v7, p0, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-direct {v0, v6, v8, v9, v7}, Lorg/locationtech/jts/noding/snapround/HotPixel;-><init>(Lorg/locationtech/jts/geom/Coordinate;DLorg/locationtech/jts/algorithm/LineIntersector;)V

    .line 170
    .local v0, "hotPixel":Lorg/locationtech/jts/noding/snapround/HotPixel;
    const/4 v2, 0x0

    .local v2, "i1":I
    :goto_1
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_2

    .line 172
    if-ne p1, p2, :cond_1

    .line 173
    if-ne v1, v2, :cond_1

    .line 170
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {v0, p2, v2}, Lorg/locationtech/jts/noding/snapround/HotPixel;->addSnappedNode(Lorg/locationtech/jts/noding/NodedSegmentString;I)Z

    move-result v3

    .line 178
    .local v3, "isNodeAdded":Z
    if-eqz v3, :cond_0

    .line 179
    aget-object v6, v4, v1

    invoke-virtual {p1, v6, v1}, Lorg/locationtech/jts/noding/NodedSegmentString;->addIntersection(Lorg/locationtech/jts/geom/Coordinate;I)V

    goto :goto_2

    .line 168
    .end local v3    # "isNodeAdded":Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "hotPixel":Lorg/locationtech/jts/noding/snapround/HotPixel;
    .end local v2    # "i1":I
    :cond_3
    return-void
.end method

.method private findInteriorIntersections(Ljava/util/Collection;Lorg/locationtech/jts/algorithm/LineIntersector;)Ljava/util/List;
    .locals 3
    .param p1, "segStrings"    # Ljava/util/Collection;
    .param p2, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;

    .prologue
    .line 112
    new-instance v0, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;

    invoke-direct {v0, p2}, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;-><init>(Lorg/locationtech/jts/algorithm/LineIntersector;)V

    .line 113
    .local v0, "intFinderAdder":Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;
    new-instance v1, Lorg/locationtech/jts/noding/MCIndexNoder;

    invoke-direct {v1}, Lorg/locationtech/jts/noding/MCIndexNoder;-><init>()V

    .line 114
    .local v1, "noder":Lorg/locationtech/jts/noding/SinglePassNoder;
    invoke-virtual {v1, v0}, Lorg/locationtech/jts/noding/SinglePassNoder;->setSegmentIntersector(Lorg/locationtech/jts/noding/SegmentIntersector;)V

    .line 115
    invoke-virtual {v1, p1}, Lorg/locationtech/jts/noding/SinglePassNoder;->computeNodes(Ljava/util/Collection;)V

    .line 116
    invoke-virtual {v0}, Lorg/locationtech/jts/noding/InteriorIntersectionFinderAdder;->getInteriorIntersections()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private snapRound(Ljava/util/Collection;Lorg/locationtech/jts/algorithm/LineIntersector;)V
    .locals 1
    .param p1, "segStrings"    # Ljava/util/Collection;
    .param p2, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->findInteriorIntersections(Ljava/util/Collection;Lorg/locationtech/jts/algorithm/LineIntersector;)Ljava/util/List;

    move-result-object v0

    .line 98
    .local v0, "intersections":Ljava/util/List;
    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->computeSnaps(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 99
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->computeVertexSnaps(Ljava/util/Collection;)V

    .line 100
    return-void
.end method


# virtual methods
.method public computeNodes(Ljava/util/Collection;)V
    .locals 1
    .param p1, "inputSegmentStrings"    # Ljava/util/Collection;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->nodedSegStrings:Ljava/util/Collection;

    .line 79
    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->snapRound(Ljava/util/Collection;Lorg/locationtech/jts/algorithm/LineIntersector;)V

    .line 83
    return-void
.end method

.method public computeVertexSnaps(Ljava/util/Collection;)V
    .locals 5
    .param p1, "edges"    # Ljava/util/Collection;

    .prologue
    .line 151
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i0":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/noding/NodedSegmentString;

    .line 153
    .local v0, "edge0":Lorg/locationtech/jts/noding/NodedSegmentString;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i1":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/noding/NodedSegmentString;

    .line 155
    .local v1, "edge1":Lorg/locationtech/jts/noding/NodedSegmentString;
    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->computeVertexSnaps(Lorg/locationtech/jts/noding/NodedSegmentString;Lorg/locationtech/jts/noding/NodedSegmentString;)V

    goto :goto_0

    .line 158
    .end local v0    # "edge0":Lorg/locationtech/jts/noding/NodedSegmentString;
    .end local v1    # "edge1":Lorg/locationtech/jts/noding/NodedSegmentString;
    .end local v3    # "i1":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public getNodedSubstrings()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/locationtech/jts/noding/snapround/SimpleSnapRounder;->nodedSegStrings:Ljava/util/Collection;

    invoke-static {v0}, Lorg/locationtech/jts/noding/NodedSegmentString;->getNodedSubstrings(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
