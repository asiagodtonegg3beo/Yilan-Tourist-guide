.class public Lorg/locationtech/jts/triangulate/quadedge/EdgeConnectedTriangleTraversal;
.super Ljava/lang/Object;
.source "EdgeConnectedTriangleTraversal.java"


# instance fields
.field private triQueue:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/EdgeConnectedTriangleTraversal;->triQueue:Ljava/util/LinkedList;

    .line 27
    return-void
.end method

.method private process(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;Lorg/locationtech/jts/triangulate/quadedge/TraversalVisitor;)V
    .locals 3
    .param p1, "currTri"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;
    .param p2, "visitor"    # Lorg/locationtech/jts/triangulate/quadedge/TraversalVisitor;

    .prologue
    .line 63
    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getNeighbours()[Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;

    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 65
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;->getEdge(I)Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->sym()Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    move-result-object v2

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;

    .line 66
    .local v1, "neighTri":Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;
    if-nez v1, :cond_1

    .line 64
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    invoke-interface {p2, p1, v0, v1}, Lorg/locationtech/jts/triangulate/quadedge/TraversalVisitor;->visit(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;ILorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lorg/locationtech/jts/triangulate/quadedge/EdgeConnectedTriangleTraversal;->triQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 71
    .end local v1    # "neighTri":Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;
    :cond_2
    return-void
.end method


# virtual methods
.method public init(Ljava/util/Collection;)V
    .locals 1
    .param p1, "tris"    # Ljava/util/Collection;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/EdgeConnectedTriangleTraversal;->triQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 40
    return-void
.end method

.method public init(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;)V
    .locals 1
    .param p1, "tri"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;

    .prologue
    .line 30
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/EdgeConnectedTriangleTraversal;->triQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public visitAll(Lorg/locationtech/jts/triangulate/quadedge/TraversalVisitor;)V
    .locals 2
    .param p1, "visitor"    # Lorg/locationtech/jts/triangulate/quadedge/TraversalVisitor;

    .prologue
    .line 56
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/EdgeConnectedTriangleTraversal;->triQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/quadedge/EdgeConnectedTriangleTraversal;->triQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;

    .line 58
    .local v0, "tri":Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;
    invoke-direct {p0, v0, p1}, Lorg/locationtech/jts/triangulate/quadedge/EdgeConnectedTriangleTraversal;->process(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;Lorg/locationtech/jts/triangulate/quadedge/TraversalVisitor;)V

    goto :goto_0

    .line 60
    .end local v0    # "tri":Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;
    :cond_0
    return-void
.end method
