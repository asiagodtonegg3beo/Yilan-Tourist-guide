.class public abstract Lorg/locationtech/jts/geomgraph/GraphComponent;
.super Ljava/lang/Object;
.source "GraphComponent.java"


# instance fields
.field private isCovered:Z

.field private isCoveredSet:Z

.field private isInResult:Z

.field private isVisited:Z

.field protected label:Lorg/locationtech/jts/geomgraph/Label;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isInResult:Z

    .line 34
    iput-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isCovered:Z

    .line 35
    iput-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isCoveredSet:Z

    .line 36
    iput-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isVisited:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geomgraph/Label;)V
    .locals 1
    .param p1, "label"    # Lorg/locationtech/jts/geomgraph/Label;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isInResult:Z

    .line 34
    iput-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isCovered:Z

    .line 35
    iput-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isCoveredSet:Z

    .line 36
    iput-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isVisited:Z

    .line 42
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->label:Lorg/locationtech/jts/geomgraph/Label;

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract computeIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V
.end method

.method public abstract getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
.end method

.method public getLabel()Lorg/locationtech/jts/geomgraph/Label;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->label:Lorg/locationtech/jts/geomgraph/Label;

    return-object v0
.end method

.method public isCovered()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isCovered:Z

    return v0
.end method

.method public isCoveredSet()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isCoveredSet:Z

    return v0
.end method

.method public isInResult()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isInResult:Z

    return v0
.end method

.method public abstract isIsolated()Z
.end method

.method public isVisited()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isVisited:Z

    return v0
.end method

.method public setCovered(Z)V
    .locals 1
    .param p1, "isCovered"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isCovered:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isCoveredSet:Z

    .line 53
    return-void
.end method

.method public setInResult(Z)V
    .locals 0
    .param p1, "isInResult"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isInResult:Z

    return-void
.end method

.method public setLabel(Lorg/locationtech/jts/geomgraph/Label;)V
    .locals 0
    .param p1, "label"    # Lorg/locationtech/jts/geomgraph/Label;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->label:Lorg/locationtech/jts/geomgraph/Label;

    return-void
.end method

.method public setVisited(Z)V
    .locals 0
    .param p1, "isVisited"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->isVisited:Z

    return-void
.end method

.method public updateIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V
    .locals 2
    .param p1, "im"    # Lorg/locationtech/jts/geom/IntersectionMatrix;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/GraphComponent;->label:Lorg/locationtech/jts/geomgraph/Label;

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/Label;->getGeometryCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "found partial label"

    invoke-static {v0, v1}, Lorg/locationtech/jts/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 81
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geomgraph/GraphComponent;->computeIM(Lorg/locationtech/jts/geom/IntersectionMatrix;)V

    .line 82
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
