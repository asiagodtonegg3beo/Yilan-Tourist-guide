.class public Lorg/locationtech/jts/operation/relate/RelateOp;
.super Lorg/locationtech/jts/operation/GeometryGraphOperation;
.source "RelateOp.java"


# instance fields
.field private relate:Lorg/locationtech/jts/operation/relate/RelateComputer;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 2
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lorg/locationtech/jts/operation/GeometryGraphOperation;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 88
    new-instance v0, Lorg/locationtech/jts/operation/relate/RelateComputer;

    iget-object v1, p0, Lorg/locationtech/jts/operation/relate/RelateOp;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/operation/relate/RelateComputer;-><init>([Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    iput-object v0, p0, Lorg/locationtech/jts/operation/relate/RelateOp;->relate:Lorg/locationtech/jts/operation/relate/RelateComputer;

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V
    .locals 2
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "boundaryNodeRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lorg/locationtech/jts/operation/GeometryGraphOperation;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V

    .line 101
    new-instance v0, Lorg/locationtech/jts/operation/relate/RelateComputer;

    iget-object v1, p0, Lorg/locationtech/jts/operation/relate/RelateOp;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/operation/relate/RelateComputer;-><init>([Lorg/locationtech/jts/geomgraph/GeometryGraph;)V

    iput-object v0, p0, Lorg/locationtech/jts/operation/relate/RelateOp;->relate:Lorg/locationtech/jts/operation/relate/RelateComputer;

    .line 102
    return-void
.end method

.method public static relate(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/geom/IntersectionMatrix;
    .locals 2
    .param p0, "a"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 56
    new-instance v1, Lorg/locationtech/jts/operation/relate/RelateOp;

    invoke-direct {v1, p0, p1}, Lorg/locationtech/jts/operation/relate/RelateOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V

    .line 57
    .local v1, "relOp":Lorg/locationtech/jts/operation/relate/RelateOp;
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/relate/RelateOp;->getIntersectionMatrix()Lorg/locationtech/jts/geom/IntersectionMatrix;

    move-result-object v0

    .line 58
    .local v0, "im":Lorg/locationtech/jts/geom/IntersectionMatrix;
    return-object v0
.end method

.method public static relate(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)Lorg/locationtech/jts/geom/IntersectionMatrix;
    .locals 2
    .param p0, "a"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "boundaryNodeRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .prologue
    .line 72
    new-instance v1, Lorg/locationtech/jts/operation/relate/RelateOp;

    invoke-direct {v1, p0, p1, p2}, Lorg/locationtech/jts/operation/relate/RelateOp;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V

    .line 73
    .local v1, "relOp":Lorg/locationtech/jts/operation/relate/RelateOp;
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/relate/RelateOp;->getIntersectionMatrix()Lorg/locationtech/jts/geom/IntersectionMatrix;

    move-result-object v0

    .line 74
    .local v0, "im":Lorg/locationtech/jts/geom/IntersectionMatrix;
    return-object v0
.end method


# virtual methods
.method public getIntersectionMatrix()Lorg/locationtech/jts/geom/IntersectionMatrix;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/locationtech/jts/operation/relate/RelateOp;->relate:Lorg/locationtech/jts/operation/relate/RelateComputer;

    invoke-virtual {v0}, Lorg/locationtech/jts/operation/relate/RelateComputer;->computeIM()Lorg/locationtech/jts/geom/IntersectionMatrix;

    move-result-object v0

    return-object v0
.end method
