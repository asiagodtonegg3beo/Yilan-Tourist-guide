.class Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleVertexListVisitor;
.super Ljava/lang/Object;
.source "QuadEdgeSubdivision.java"

# interfaces
.implements Lorg/locationtech/jts/triangulate/quadedge/TriangleVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TriangleVertexListVisitor"
.end annotation


# instance fields
.field private triList:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleVertexListVisitor;->triList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$1;

    .prologue
    .line 752
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleVertexListVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public getTriangleVertices()Ljava/util/List;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleVertexListVisitor;->triList:Ljava/util/List;

    return-object v0
.end method

.method public visit([Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V
    .locals 6
    .param p1, "triEdges"    # [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 756
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleVertexListVisitor;->triList:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    aget-object v2, p1, v3

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    aput-object v2, v1, v3

    aget-object v2, p1, v4

    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    aput-object v2, v1, v4

    aget-object v2, p1, v5

    .line 757
    invoke-virtual {v2}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->orig()Lorg/locationtech/jts/triangulate/quadedge/Vertex;

    move-result-object v2

    aput-object v2, v1, v5

    .line 756
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    return-void
.end method
