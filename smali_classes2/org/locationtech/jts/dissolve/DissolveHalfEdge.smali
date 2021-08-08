.class Lorg/locationtech/jts/dissolve/DissolveHalfEdge;
.super Lorg/locationtech/jts/edgegraph/MarkHalfEdge;
.source "DissolveHalfEdge.java"


# instance fields
.field private isStart:Z


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "orig"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->isStart:Z

    .line 32
    return-void
.end method


# virtual methods
.method public isStart()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->isStart:Z

    return v0
.end method

.method public setStart()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/dissolve/DissolveHalfEdge;->isStart:Z

    .line 51
    return-void
.end method
