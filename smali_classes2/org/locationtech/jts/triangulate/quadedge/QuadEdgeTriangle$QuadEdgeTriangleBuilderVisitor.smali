.class Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle$QuadEdgeTriangleBuilderVisitor;
.super Ljava/lang/Object;
.source "QuadEdgeTriangle.java"

# interfaces
.implements Lorg/locationtech/jts/triangulate/quadedge/TriangleVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuadEdgeTriangleBuilderVisitor"
.end annotation


# instance fields
.field private triangles:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle$QuadEdgeTriangleBuilderVisitor;->triangles:Ljava/util/List;

    .line 327
    return-void
.end method


# virtual methods
.method public getTriangles()Ljava/util/List;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle$QuadEdgeTriangleBuilderVisitor;->triangles:Ljava/util/List;

    return-object v0
.end method

.method public visit([Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V
    .locals 2
    .param p1, "edges"    # [Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;

    .prologue
    .line 330
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle$QuadEdgeTriangleBuilderVisitor;->triangles:Ljava/util/List;

    new-instance v1, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;

    invoke-direct {v1, p1}, Lorg/locationtech/jts/triangulate/quadedge/QuadEdgeTriangle;-><init>([Lorg/locationtech/jts/triangulate/quadedge/QuadEdge;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    return-void
.end method
