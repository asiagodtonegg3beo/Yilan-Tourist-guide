.class Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleEdgesListVisitor;
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
    name = "TriangleEdgesListVisitor"
.end annotation


# instance fields
.field private triList:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleEdgesListVisitor;->triList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$1;

    .prologue
    .line 726
    invoke-direct {p0}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleEdgesListVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public getTriangleEdges()Ljava/util/List;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleEdgesListVisitor;->triList:Ljava/util/List;

    return-object v0
.end method

.method public visit([Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V
    .locals 2
    .param p1, "triEdges"    # [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 730
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeSubdivision$TriangleEdgesListVisitor;->triList:Ljava/util/List;

    invoke-virtual {p1}, [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    return-void
.end method
