.class public Lorg/locationtech/jts/operation/GeometryGraphOperation;
.super Ljava/lang/Object;
.source "GeometryGraphOperation.java"


# instance fields
.field protected arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

.field protected final li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field protected resultPrecisionModel:Lorg/locationtech/jts/geom/PrecisionModel;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 3
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/GeometryGraphOperation;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 60
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/GeometryGraphOperation;->setComputationPrecision(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/locationtech/jts/geomgraph/GeometryGraph;

    iput-object v0, p0, Lorg/locationtech/jts/operation/GeometryGraphOperation;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .line 63
    iget-object v0, p0, Lorg/locationtech/jts/operation/GeometryGraphOperation;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    new-instance v1, Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-direct {v1, v2, p1}, Lorg/locationtech/jts/geomgraph/GeometryGraph;-><init>(ILorg/locationtech/jts/geom/Geometry;)V

    aput-object v1, v0, v2

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 40
    sget-object v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->OGC_SFS_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    invoke-direct {p0, p1, p2, v0}, Lorg/locationtech/jts/operation/GeometryGraphOperation;-><init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V
    .locals 4
    .param p1, "g0"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "g1"    # Lorg/locationtech/jts/geom/Geometry;
    .param p3, "boundaryNodeRule"    # Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/GeometryGraphOperation;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 49
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v0

    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/PrecisionModel;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/GeometryGraphOperation;->setComputationPrecision(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 54
    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geomgraph/GeometryGraph;

    iput-object v0, p0, Lorg/locationtech/jts/operation/GeometryGraphOperation;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    .line 55
    iget-object v0, p0, Lorg/locationtech/jts/operation/GeometryGraphOperation;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    new-instance v1, Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-direct {v1, v2, p1, p3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;-><init>(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V

    aput-object v1, v0, v2

    .line 56
    iget-object v0, p0, Lorg/locationtech/jts/operation/GeometryGraphOperation;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    new-instance v1, Lorg/locationtech/jts/geomgraph/GeometryGraph;

    invoke-direct {v1, v3, p2, p3}, Lorg/locationtech/jts/geomgraph/GeometryGraph;-><init>(ILorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/algorithm/BoundaryNodeRule;)V

    aput-object v1, v0, v3

    .line 57
    return-void

    .line 52
    :cond_0
    invoke-virtual {p2}, Lorg/locationtech/jts/geom/Geometry;->getPrecisionModel()Lorg/locationtech/jts/geom/PrecisionModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/operation/GeometryGraphOperation;->setComputationPrecision(Lorg/locationtech/jts/geom/PrecisionModel;)V

    goto :goto_0
.end method


# virtual methods
.method public getArgGeometry(I)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lorg/locationtech/jts/operation/GeometryGraphOperation;->arg:[Lorg/locationtech/jts/geomgraph/GeometryGraph;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/GeometryGraph;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method protected setComputationPrecision(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 2
    .param p1, "pm"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/locationtech/jts/operation/GeometryGraphOperation;->resultPrecisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 71
    iget-object v0, p0, Lorg/locationtech/jts/operation/GeometryGraphOperation;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v1, p0, Lorg/locationtech/jts/operation/GeometryGraphOperation;->resultPrecisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/algorithm/LineIntersector;->setPrecisionModel(Lorg/locationtech/jts/geom/PrecisionModel;)V

    .line 72
    return-void
.end method
