.class public Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;
.super Ljava/lang/Object;
.source "QuadEdgeSubdivision.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;,
        Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleVertexListVisitor;,
        Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleEdgesListVisitor;,
        Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCircumcentreVisitor;
    }
.end annotation


# static fields
.field private static final EDGE_COINCIDENCE_TOL_FACTOR:D = 1000.0


# instance fields
.field private edgeCoincidenceTolerance:D

.field private frameEnv:Lorg/locationtech/jts/geom/Envelope;

.field private frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

.field private locator:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;

.field private quadEdges:Ljava/util/List;

.field private seg:Lorg/locationtech/jts/geom/LineSegment;

.field private startingEdge:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

.field private tolerance:D

.field private triEdges:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

.field private visitedKey:I


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Envelope;D)V
    .locals 2
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;
    .param p2, "tolerance"    # D

    .prologue
    const/4 v1, 0x3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->visitedKey:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->quadEdges:Ljava/util/List;

    .line 92
    new-array v0, v1, [Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->locator:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;

    .line 457
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/LineSegment;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->seg:Lorg/locationtech/jts/geom/LineSegment;

    .line 670
    new-array v0, v1, [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->triEdges:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 108
    iput-wide p2, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->tolerance:D

    .line 109
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v0, p2, v0

    iput-wide v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->edgeCoincidenceTolerance:D

    .line 111
    invoke-direct {p0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->createFrame(Lorg/locationtech/jts/geom/Envelope;)V

    .line 113
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->initSubdiv()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->startingEdge:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 114
    new-instance v0, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/triangulate/quadedge/LastFoundQuadEdgeLocator;-><init>(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;)V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->locator:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;

    .line 115
    return-void
.end method

.method private createFrame(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 14
    .param p1, "env"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 119
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getWidth()D

    move-result-wide v0

    .line 120
    .local v0, "deltaX":D
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getHeight()D

    move-result-wide v2

    .line 121
    .local v2, "deltaY":D
    const-wide/16 v4, 0x0

    .line 122
    .local v4, "offset":D
    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    .line 123
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v4, v0, v6

    .line 128
    :goto_0
    iget-object v6, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    const/4 v7, 0x0

    new-instance v8, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v10

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v12

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    .line 129
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v12

    add-double/2addr v12, v4

    invoke-direct {v8, v10, v11, v12, v13}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(DD)V

    aput-object v8, v6, v7

    .line 131
    iget-object v6, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    const/4 v7, 0x1

    new-instance v8, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v10

    sub-double/2addr v10, v4

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v12

    sub-double/2addr v12, v4

    invoke-direct {v8, v10, v11, v12, v13}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(DD)V

    aput-object v8, v6, v7

    .line 132
    iget-object v6, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    const/4 v7, 0x2

    new-instance v8, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v10

    add-double/2addr v10, v4

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v12

    sub-double/2addr v12, v4

    invoke-direct {v8, v10, v11, v12, v13}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(DD)V

    aput-object v8, v6, v7

    .line 134
    new-instance v6, Lorg/locationtech/jts/geom/Envelope;

    iget-object v7, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    iget-object v8, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    .line 135
    invoke-virtual {v8}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    iput-object v6, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 136
    iget-object v6, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameEnv:Lorg/locationtech/jts/geom/Envelope;

    iget-object v7, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/locationtech/jts/geom/Envelope;->expandToInclude(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 137
    return-void

    .line 125
    :cond_0
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double v4, v2, v6

    goto :goto_0
.end method

.method private fetchTriangleToVisit(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Ljava/util/Stack;ZLjava/util/Set;)[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 5
    .param p1, "edge"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .param p2, "edgeStack"    # Ljava/util/Stack;
    .param p3, "includeFrame"    # Z
    .param p4, "visitedEdges"    # Ljava/util/Set;

    .prologue
    .line 685
    move-object v0, p1

    .line 686
    .local v0, "curr":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    const/4 v1, 0x0

    .line 687
    .local v1, "edgeCount":I
    const/4 v2, 0x0

    .line 689
    .local v2, "isFrame":Z
    :cond_0
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->triEdges:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    aput-object v0, v4, v1

    .line 691
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->isFrameEdge(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 692
    const/4 v2, 0x1

    .line 695
    :cond_1
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    .line 696
    .local v3, "sym":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-interface {p4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 697
    invoke-virtual {p2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    :cond_2
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 702
    add-int/lit8 v1, v1, 0x1

    .line 703
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->lNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 704
    if-ne v0, p1, :cond_0

    .line 706
    if-eqz v2, :cond_3

    if-nez p3, :cond_3

    .line 707
    const/4 v4, 0x0

    .line 708
    :goto_0
    return-object v4

    :cond_3
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->triEdges:[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    goto :goto_0
.end method

.method public static getTriangleEdges(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V
    .locals 4
    .param p0, "startQE"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .param p1, "triEdge"    # [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    aput-object p0, p1, v1

    .line 74
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->lNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    aput-object v0, p1, v2

    .line 75
    aget-object v0, p1, v2

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->lNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    aput-object v0, p1, v3

    .line 76
    aget-object v0, p1, v3

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->lNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    aget-object v1, p1, v1

    if-eq v0, v1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Edges do not form a triangle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    return-void
.end method

.method private initSubdiv()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 142
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    aget-object v3, v3, v5

    iget-object v4, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    aget-object v4, v4, v6

    invoke-virtual {p0, v3, v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->makeEdge(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 143
    .local v0, "ea":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    aget-object v3, v3, v6

    iget-object v4, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    aget-object v4, v4, v7

    invoke-virtual {p0, v3, v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->makeEdge(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    .line 144
    .local v1, "eb":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    invoke-static {v3, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 145
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    aget-object v3, v3, v7

    iget-object v4, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    aget-object v4, v4, v5

    invoke-virtual {p0, v3, v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->makeEdge(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    .line 146
    .local v2, "ec":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 147
    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 148
    return-object v0
.end method


# virtual methods
.method public connect(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 2
    .param p1, "a"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .param p2, "b"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 214
    invoke-static {p1, p2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->connect(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 215
    .local v0, "q":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->quadEdges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-object v0
.end method

.method public delete(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V
    .locals 5
    .param p1, "e"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 227
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 228
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 230
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    .line 231
    .local v2, "eSym":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 232
    .local v0, "eRot":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    .line 235
    .local v1, "eRotSym":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->quadEdges:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->quadEdges:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 237
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->quadEdges:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->quadEdges:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->delete()V

    .line 241
    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->delete()V

    .line 242
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->delete()V

    .line 243
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->delete()V

    .line 244
    return-void
.end method

.method public getEdges()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->quadEdges:Ljava/util/List;

    return-object v0
.end method

.method public getEdges(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 10
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    const/4 v9, 0x0

    .line 830
    invoke-virtual {p0, v9}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getPrimaryEdges(Z)Ljava/util/List;

    move-result-object v5

    .line 831
    .local v5, "quadEdges":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v0, v6, [Lorg/locationtech/jts/geom/LineString;

    .line 832
    .local v0, "edges":[Lorg/locationtech/jts/geom/LineString;
    const/4 v1, 0x0

    .line 833
    .local v1, "i":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 834
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 835
    .local v4, "qe":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/4 v6, 0x2

    new-array v6, v6, [Lorg/locationtech/jts/geom/Coordinate;

    .line 836
    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v7

    invoke-virtual {v7}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v8

    invoke-virtual {v8}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v8

    aput-object v8, v6, v7

    .line 835
    invoke-virtual {p1, v6}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v6

    aput-object v6, v0, v1

    move v1, v2

    .line 837
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 838
    .end local v4    # "qe":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    :cond_0
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiLineString([Lorg/locationtech/jts/geom/LineString;)Lorg/locationtech/jts/geom/MultiLineString;

    move-result-object v6

    return-object v6
.end method

.method public getEnvelope()Lorg/locationtech/jts/geom/Envelope;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Envelope;)V

    return-object v0
.end method

.method public getPrimaryEdges(Z)Ljava/util/List;
    .locals 6
    .param p1, "includeFrame"    # Z

    .prologue
    .line 584
    iget v5, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->visitedKey:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->visitedKey:I

    .line 586
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v2, "edges":Ljava/util/List;
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 588
    .local v1, "edgeStack":Ljava/util/Stack;
    iget-object v5, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->startingEdge:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 592
    .local v4, "visitedEdges":Ljava/util/Set;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 593
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 594
    .local v0, "edge":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 595
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->getPrimary()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    .line 597
    .local v3, "priQE":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    if-nez p1, :cond_1

    invoke-virtual {p0, v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->isFrameEdge(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 598
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    :cond_2
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v5

    invoke-virtual {v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 607
    .end local v0    # "edge":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .end local v3    # "priQE":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    :cond_3
    return-object v2
.end method

.method public getTolerance()D
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->tolerance:D

    return-wide v0
.end method

.method public getTriangleCoordinates(Z)Ljava/util/List;
    .locals 2
    .param p1, "includeFrame"    # Z

    .prologue
    .line 773
    new-instance v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;

    invoke-direct {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;-><init>()V

    .line 774
    .local v0, "visitor":Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;
    invoke-virtual {p0, v0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->visitTriangles(Lorg/locationtech/jts/triangulate/quadedge/TriangleVisitor;Z)V

    .line 775
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCoordinatesVisitor;->getTriangles()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getTriangleEdges(Z)Ljava/util/List;
    .locals 2
    .param p1, "includeFrame"    # Z

    .prologue
    .line 721
    new-instance v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleEdgesListVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleEdgesListVisitor;-><init>(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$1;)V

    .line 722
    .local v0, "visitor":Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleEdgesListVisitor;
    invoke-virtual {p0, v0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->visitTriangles(Lorg/locationtech/jts/triangulate/quadedge/TriangleVisitor;Z)V

    .line 723
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleEdgesListVisitor;->getTriangleEdges()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getTriangleVertices(Z)Ljava/util/List;
    .locals 2
    .param p1, "includeFrame"    # Z

    .prologue
    .line 747
    new-instance v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleVertexListVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleVertexListVisitor;-><init>(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$1;)V

    .line 748
    .local v0, "visitor":Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleVertexListVisitor;
    invoke-virtual {p0, v0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->visitTriangles(Lorg/locationtech/jts/triangulate/quadedge/TriangleVisitor;Z)V

    .line 749
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleVertexListVisitor;->getTriangleVertices()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getTriangles(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 8
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 849
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getTriangleCoordinates(Z)Ljava/util/List;

    move-result-object v4

    .line 850
    .local v4, "triPtsList":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Lorg/locationtech/jts/geom/Polygon;

    .line 851
    .local v5, "tris":[Lorg/locationtech/jts/geom/Polygon;
    const/4 v0, 0x0

    .line 852
    .local v0, "i":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 853
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/locationtech/jts/geom/Coordinate;

    move-object v3, v6

    check-cast v3, [Lorg/locationtech/jts/geom/Coordinate;

    .line 854
    .local v3, "triPt":[Lorg/locationtech/jts/geom/Coordinate;
    add-int/lit8 v1, v0, 0x1

    .line 855
    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p1, v3}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v6

    aput-object v6, v5, v0

    move v0, v1

    .line 856
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 857
    .end local v3    # "triPt":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    invoke-virtual {p1, v5}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v6

    return-object v6
.end method

.method public getVertexUniqueEdges(Z)Ljava/util/List;
    .locals 8
    .param p1, "includeFrame"    # Z

    .prologue
    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 544
    .local v0, "edges":Ljava/util/List;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 545
    .local v6, "visitedVertices":Ljava/util/Set;
    iget-object v7, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->quadEdges:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 546
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 547
    .local v3, "qe":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v4

    .line 549
    .local v4, "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 550
    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 551
    if-nez p1, :cond_1

    invoke-virtual {p0, v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->isFrameVertex(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 552
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_2
    invoke-virtual {v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    .line 562
    .local v2, "qd":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v5

    .line 564
    .local v5, "vd":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 565
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 566
    if-nez p1, :cond_3

    invoke-virtual {p0, v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->isFrameVertex(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 567
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    .end local v2    # "qd":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .end local v3    # "qe":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .end local v4    # "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .end local v5    # "vd":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    :cond_4
    return-object v0
.end method

.method public getVertices(Z)Ljava/util/Collection;
    .locals 6
    .param p1, "includeFrame"    # Z

    .prologue
    .line 503
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 504
    .local v4, "vertices":Ljava/util/Set;
    iget-object v5, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->quadEdges:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 505
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 506
    .local v1, "qe":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    .line 508
    .local v2, "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    if-nez p1, :cond_1

    invoke-virtual {p0, v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->isFrameVertex(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 509
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_2
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v3

    .line 518
    .local v3, "vd":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    if-nez p1, :cond_3

    invoke-virtual {p0, v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->isFrameVertex(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 519
    :cond_3
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    .end local v1    # "qe":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .end local v2    # "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .end local v3    # "vd":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    :cond_4
    return-object v4
.end method

.method public getVoronoiCellPolygon(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Polygon;
    .locals 9
    .param p1, "qe"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .param p2, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 921
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v2, "cellPts":Ljava/util/List;
    move-object v5, p1

    .line 926
    .local v5, "startQE":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    :cond_0
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->rot()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v7

    invoke-virtual {v7}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v7

    invoke-virtual {v7}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 927
    .local v0, "cc":Lorg/locationtech/jts/geom/Coordinate;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object p1

    .line 931
    if-ne p1, v5, :cond_0

    .line 933
    new-instance v3, Lorg/locationtech/jts/geom/CoordinateList;

    invoke-direct {v3}, Lorg/locationtech/jts/geom/CoordinateList;-><init>()V

    .line 934
    .local v3, "coordList":Lorg/locationtech/jts/geom/CoordinateList;
    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7}, Lorg/locationtech/jts/geom/CoordinateList;->addAll(Ljava/util/Collection;Z)Z

    .line 935
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/CoordinateList;->closeRing()V

    .line 937
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_1

    .line 938
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 939
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Lorg/locationtech/jts/geom/CoordinateList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lorg/locationtech/jts/geom/CoordinateList;->add(Ljava/lang/Object;Z)Z

    .line 942
    :cond_1
    invoke-virtual {v3}, Lorg/locationtech/jts/geom/CoordinateList;->toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 943
    .local v4, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p2, v4}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v1

    .line 945
    .local v1, "cellPoly":Lorg/locationtech/jts/geom/Polygon;
    invoke-virtual {v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v6

    .line 946
    .local v6, "v":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    invoke-virtual {v6}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/locationtech/jts/geom/Polygon;->setUserData(Ljava/lang/Object;)V

    .line 947
    return-object v1
.end method

.method public getVoronoiCellPolygons(Lorg/locationtech/jts/geom/GeometryFactory;)Ljava/util/List;
    .locals 6
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 896
    new-instance v4, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCircumcentreVisitor;

    invoke-direct {v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleCircumcentreVisitor;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->visitTriangles(Lorg/locationtech/jts/triangulate/quadedge/TriangleVisitor;Z)V

    .line 898
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 899
    .local v0, "cells":Ljava/util/List;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getVertexUniqueEdges(Z)Ljava/util/List;

    move-result-object v1

    .line 900
    .local v1, "edges":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 901
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 902
    .local v3, "qe":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {p0, v3, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getVoronoiCellPolygon(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 904
    .end local v3    # "qe":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    :cond_0
    return-object v0
.end method

.method public getVoronoiDiagram(Lorg/locationtech/jts/geom/GeometryFactory;)Lorg/locationtech/jts/geom/Geometry;
    .locals 2
    .param p1, "geomFact"    # Lorg/locationtech/jts/geom/GeometryFactory;

    .prologue
    .line 873
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getVoronoiCellPolygons(Lorg/locationtech/jts/geom/GeometryFactory;)Ljava/util/List;

    move-result-object v0

    .line 874
    .local v0, "vorCells":Ljava/util/List;
    invoke-static {v0}, Lorg/locationtech/jts/geom/GeometryFactory;->toGeometryArray(Ljava/util/Collection;)[Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createGeometryCollection([Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/GeometryCollection;

    move-result-object v1

    return-object v1
.end method

.method public insertSite(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 6
    .param p1, "v"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->locate(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    .line 379
    .local v1, "e":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v3

    iget-wide v4, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->tolerance:D

    invoke-virtual {p1, v3, v4, v5}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->equals(Lorg/locationtech/jts/triangulate/quadedge/Vertex;D)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v3

    iget-wide v4, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->tolerance:D

    invoke-virtual {p1, v3, v4, v5}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->equals(Lorg/locationtech/jts/triangulate/quadedge/Vertex;D)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v2, v1

    .line 394
    :goto_0
    return-object v2

    .line 386
    :cond_1
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->makeEdge(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 387
    .local v0, "base":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-static {v0, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->splice(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 388
    move-object v2, v0

    .line 390
    .local v2, "startEdge":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    :cond_2
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->connect(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    .line 392
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->lNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    if-ne v3, v2, :cond_2

    goto :goto_0
.end method

.method public isFrameBorderEdge(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z
    .locals 6
    .param p1, "e"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 421
    new-array v0, v5, [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 422
    .local v0, "leftTri":[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-static {p1, v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getTriangleEdges(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 424
    new-array v1, v5, [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 425
    .local v1, "rightTri":[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->getTriangleEdges(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    .line 429
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->lNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v5

    invoke-virtual {v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    .line 430
    .local v2, "vLeftTriOther":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    invoke-virtual {p0, v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->isFrameVertex(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v4

    .line 433
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v5

    invoke-virtual {v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->lNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v5

    invoke-virtual {v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v3

    .line 434
    .local v3, "vRightTriOther":Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    invoke-virtual {p0, v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->isFrameVertex(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 437
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isFrameEdge(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z
    .locals 1
    .param p1, "e"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 405
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->isFrameVertex(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->isFrameVertex(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    const/4 v0, 0x1

    .line 407
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrameVertex(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z
    .locals 4
    .param p1, "v"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 448
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->equals(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 450
    :cond_1
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->equals(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->frameVertex:[Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->equals(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 454
    goto :goto_0
.end method

.method public isOnEdge(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 5
    .param p1, "e"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .param p2, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 470
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->seg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v3

    invoke-virtual {v3}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/locationtech/jts/geom/LineSegment;->setCoordinates(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 471
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->seg:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v2, p2}, Lorg/locationtech/jts/geom/LineSegment;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    .line 473
    .local v0, "dist":D
    iget-wide v2, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->edgeCoincidenceTolerance:D

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isVertexOfEdge(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z
    .locals 4
    .param p1, "e"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .param p2, "v"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 485
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->tolerance:D

    invoke-virtual {p2, v0, v2, v3}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->equals(Lorg/locationtech/jts/triangulate/quadedge/Vertex;D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->tolerance:D

    invoke-virtual {p2, v0, v2, v3}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->equals(Lorg/locationtech/jts/triangulate/quadedge/Vertex;D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    :cond_0
    const/4 v0, 0x1

    .line 488
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public locate(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 2
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 328
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->locator:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;

    new-instance v1, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    invoke-direct {v1, p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-interface {v0, v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;->locate(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    return-object v0
.end method

.method public locate(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 6
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v3, 0x0

    .line 342
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->locator:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;

    new-instance v5, Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    invoke-direct {v5, p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-interface {v4, v5}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;->locate(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v1

    .line 343
    .local v1, "e":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    if-nez v1, :cond_1

    move-object v2, v3

    .line 357
    :cond_0
    :goto_0
    return-object v2

    .line 347
    :cond_1
    move-object v0, v1

    .line 348
    .local v0, "base":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 349
    invoke-virtual {v1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 351
    :cond_2
    move-object v2, v0

    .line 353
    .local v2, "locEdge":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    :cond_3
    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->getCoordinate()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 355
    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    .line 356
    if-ne v2, v0, :cond_3

    move-object v2, v3

    .line 357
    goto :goto_0
.end method

.method public locate(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 1
    .param p1, "v"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 316
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->locator:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;

    invoke-interface {v0, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;->locate(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    return-object v0
.end method

.method public locateFromEdge(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 5
    .param p1, "v"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p2, "startEdge"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, "iter":I
    iget-object v3, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->quadEdges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 267
    .local v2, "maxIter":I
    move-object v0, p2

    .line 270
    .local v0, "e":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 281
    if-le v1, v2, :cond_0

    .line 282
    new-instance v3, Lorg/locationtech/jts/triangulate/quadedge/LocateFailureException;

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->toLineSegment()Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/locationtech/jts/triangulate/quadedge/LocateFailureException;-><init>(Lorg/locationtech/jts/geom/LineSegment;)V

    throw v3

    .line 290
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->equals(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dest()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->equals(Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    :cond_1
    return-object v0

    .line 292
    :cond_2
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->rightOf(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 293
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    goto :goto_0

    .line 294
    :cond_3
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->rightOf(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 295
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->oNext()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_4
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;->rightOf(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 297
    invoke-virtual {v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->dPrev()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    goto :goto_0
.end method

.method public makeEdge(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .locals 2
    .param p1, "o"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;
    .param p2, "d"    # Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    .prologue
    .line 199
    invoke-static {p1, p2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->makeEdge(Lorg/locationtech/jts/triangulate/quadedge/Vertex;Lorg/locationtech/jts/triangulate/quadedge/Vertex;)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v0

    .line 200
    .local v0, "q":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->quadEdges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-object v0
.end method

.method public setLocator(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;)V
    .locals 0
    .param p1, "locator"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;

    .prologue
    .line 188
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->locator:Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeLocator;

    .line 189
    return-void
.end method

.method public visitTriangles(Lorg/locationtech/jts/triangulate/quadedge/TriangleVisitor;Z)V
    .locals 5
    .param p1, "triVisitor"    # Lorg/locationtech/jts/triangulate/quadedge/TriangleVisitor;
    .param p2, "includeFrame"    # Z

    .prologue
    .line 645
    iget v4, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->visitedKey:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->visitedKey:I

    .line 649
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 650
    .local v1, "edgeStack":Ljava/util/Stack;
    iget-object v4, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->startingEdge:Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    invoke-virtual {v1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 654
    .local v3, "visitedEdges":Ljava/util/Set;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 655
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .line 656
    .local v0, "edge":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 657
    invoke-direct {p0, v0, v1, p2, v3}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;->fetchTriangleToVisit(Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;Ljava/util/Stack;ZLjava/util/Set;)[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    .line 659
    .local v2, "triEdges":[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    if-eqz v2, :cond_0

    .line 660
    invoke-interface {p1, v2}, Lorg/locationtech/jts/triangulate/quadedge/TriangleVisitor;->visit([Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    goto :goto_0

    .line 663
    .end local v0    # "edge":Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    .end local v2    # "triEdges":[Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;
    :cond_1
    return-void
.end method
