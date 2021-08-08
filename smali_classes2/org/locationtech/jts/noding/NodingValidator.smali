.class public Lorg/locationtech/jts/noding/NodingValidator;
.super Ljava/lang/Object;
.source "NodingValidator.java"


# static fields
.field private static final fact:Lorg/locationtech/jts/geom/GeometryFactory;


# instance fields
.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field private segStrings:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    sput-object v0, Lorg/locationtech/jts/noding/NodingValidator;->fact:Lorg/locationtech/jts/geom/GeometryFactory;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "segStrings"    # Ljava/util/Collection;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/noding/NodingValidator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 40
    iput-object p1, p0, Lorg/locationtech/jts/noding/NodingValidator;->segStrings:Ljava/util/Collection;

    .line 41
    return-void
.end method

.method private checkCollapse(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 5
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 72
    invoke-virtual {p1, p3}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found non-noded collapse at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/locationtech/jts/noding/NodingValidator;->fact:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v3, 0x3

    new-array v3, v3, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    .line 74
    invoke-virtual {v2, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    return-void
.end method

.method private checkCollapses()V
    .locals 3

    .prologue
    .line 56
    iget-object v2, p0, Lorg/locationtech/jts/noding/NodingValidator;->segStrings:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/noding/SegmentString;

    .line 58
    .local v1, "ss":Lorg/locationtech/jts/noding/SegmentString;
    invoke-direct {p0, v1}, Lorg/locationtech/jts/noding/NodingValidator;->checkCollapses(Lorg/locationtech/jts/noding/SegmentString;)V

    goto :goto_0

    .line 60
    .end local v1    # "ss":Lorg/locationtech/jts/noding/SegmentString;
    :cond_0
    return-void
.end method

.method private checkCollapses(Lorg/locationtech/jts/noding/SegmentString;)V
    .locals 5
    .param p1, "ss"    # Lorg/locationtech/jts/noding/SegmentString;

    .prologue
    .line 64
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 65
    .local v1, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_0

    .line 66
    aget-object v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v1, v3

    add-int/lit8 v4, v0, 0x2

    aget-object v4, v1, v4

    invoke-direct {p0, v2, v3, v4}, Lorg/locationtech/jts/noding/NodingValidator;->checkCollapse(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method private checkEndPtVertexIntersections()V
    .locals 5

    .prologue
    .line 144
    iget-object v3, p0, Lorg/locationtech/jts/noding/NodingValidator;->segStrings:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/noding/SegmentString;

    .line 146
    .local v2, "ss":Lorg/locationtech/jts/noding/SegmentString;
    invoke-interface {v2}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 147
    .local v1, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    iget-object v4, p0, Lorg/locationtech/jts/noding/NodingValidator;->segStrings:Ljava/util/Collection;

    invoke-direct {p0, v3, v4}, Lorg/locationtech/jts/noding/NodingValidator;->checkEndPtVertexIntersections(Lorg/locationtech/jts/geom/Coordinate;Ljava/util/Collection;)V

    .line 148
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    iget-object v4, p0, Lorg/locationtech/jts/noding/NodingValidator;->segStrings:Ljava/util/Collection;

    invoke-direct {p0, v3, v4}, Lorg/locationtech/jts/noding/NodingValidator;->checkEndPtVertexIntersections(Lorg/locationtech/jts/geom/Coordinate;Ljava/util/Collection;)V

    goto :goto_0

    .line 150
    .end local v1    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v2    # "ss":Lorg/locationtech/jts/noding/SegmentString;
    :cond_0
    return-void
.end method

.method private checkEndPtVertexIntersections(Lorg/locationtech/jts/geom/Coordinate;Ljava/util/Collection;)V
    .locals 7
    .param p1, "testPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "segStrings"    # Ljava/util/Collection;

    .prologue
    .line 154
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/noding/SegmentString;

    .line 156
    .local v3, "ss":Lorg/locationtech/jts/noding/SegmentString;
    invoke-interface {v3}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 157
    .local v2, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 158
    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found endpt/interior pt intersection at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :pt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "j":I
    .end local v2    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    .end local v3    # "ss":Lorg/locationtech/jts/noding/SegmentString;
    :cond_2
    return-void
.end method

.method private checkInteriorIntersections()V
    .locals 5

    .prologue
    .line 82
    iget-object v4, p0, Lorg/locationtech/jts/noding/NodingValidator;->segStrings:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/noding/SegmentString;

    .line 84
    .local v2, "ss0":Lorg/locationtech/jts/noding/SegmentString;
    iget-object v4, p0, Lorg/locationtech/jts/noding/NodingValidator;->segStrings:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "j":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/noding/SegmentString;

    .line 87
    .local v3, "ss1":Lorg/locationtech/jts/noding/SegmentString;
    invoke-direct {p0, v2, v3}, Lorg/locationtech/jts/noding/NodingValidator;->checkInteriorIntersections(Lorg/locationtech/jts/noding/SegmentString;Lorg/locationtech/jts/noding/SegmentString;)V

    goto :goto_0

    .line 90
    .end local v1    # "j":Ljava/util/Iterator;
    .end local v2    # "ss0":Lorg/locationtech/jts/noding/SegmentString;
    .end local v3    # "ss1":Lorg/locationtech/jts/noding/SegmentString;
    :cond_1
    return-void
.end method

.method private checkInteriorIntersections(Lorg/locationtech/jts/noding/SegmentString;ILorg/locationtech/jts/noding/SegmentString;I)V
    .locals 7
    .param p1, "e0"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p2, "segIndex0"    # I
    .param p3, "e1"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p4, "segIndex1"    # I

    .prologue
    .line 105
    if-ne p1, p3, :cond_1

    if-ne p2, p4, :cond_1

    .line 124
    :cond_0
    return-void

    .line 107
    :cond_1
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    aget-object v0, v4, p2

    .line 108
    .local v0, "p00":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    aget-object v1, v4, v5

    .line 109
    .local v1, "p01":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p3}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    aget-object v2, v4, p4

    .line 110
    .local v2, "p10":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p3}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    add-int/lit8 v5, p4, 0x1

    aget-object v3, v4, v5

    .line 112
    .local v3, "p11":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v4, p0, Lorg/locationtech/jts/noding/NodingValidator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 113
    iget-object v4, p0, Lorg/locationtech/jts/noding/NodingValidator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 115
    iget-object v4, p0, Lorg/locationtech/jts/noding/NodingValidator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v4}, Lorg/locationtech/jts/algorithm/LineIntersector;->isProper()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/locationtech/jts/noding/NodingValidator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 116
    invoke-direct {p0, v4, v0, v1}, Lorg/locationtech/jts/noding/NodingValidator;->hasInteriorIntersection(Lorg/locationtech/jts/algorithm/LineIntersector;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/locationtech/jts/noding/NodingValidator;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 117
    invoke-direct {p0, v4, v2, v3}, Lorg/locationtech/jts/noding/NodingValidator;->hasInteriorIntersection(Lorg/locationtech/jts/algorithm/LineIntersector;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found non-noded intersection at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private checkInteriorIntersections(Lorg/locationtech/jts/noding/SegmentString;Lorg/locationtech/jts/noding/SegmentString;)V
    .locals 5
    .param p1, "ss0"    # Lorg/locationtech/jts/noding/SegmentString;
    .param p2, "ss1"    # Lorg/locationtech/jts/noding/SegmentString;

    .prologue
    .line 94
    invoke-interface {p1}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 95
    .local v2, "pts0":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {p2}, Lorg/locationtech/jts/noding/SegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 96
    .local v3, "pts1":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .local v0, "i0":I
    :goto_0
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_1

    .line 97
    const/4 v1, 0x0

    .local v1, "i1":I
    :goto_1
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 98
    invoke-direct {p0, p1, v0, p2, v1}, Lorg/locationtech/jts/noding/NodingValidator;->checkInteriorIntersections(Lorg/locationtech/jts/noding/SegmentString;ILorg/locationtech/jts/noding/SegmentString;I)V

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "i1":I
    :cond_1
    return-void
.end method

.method private hasInteriorIntersection(Lorg/locationtech/jts/algorithm/LineIntersector;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 3
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;
    .param p2, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersectionNum()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 131
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersection(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 132
    .local v1, "intPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v1, p2}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p3}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    const/4 v2, 0x1

    .line 135
    .end local v1    # "intPt":Lorg/locationtech/jts/geom/Coordinate;
    :goto_1
    return v2

    .line 130
    .restart local v1    # "intPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "intPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkValid()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/locationtech/jts/noding/NodingValidator;->checkEndPtVertexIntersections()V

    .line 47
    invoke-direct {p0}, Lorg/locationtech/jts/noding/NodingValidator;->checkInteriorIntersections()V

    .line 48
    invoke-direct {p0}, Lorg/locationtech/jts/noding/NodingValidator;->checkCollapses()V

    .line 49
    return-void
.end method
