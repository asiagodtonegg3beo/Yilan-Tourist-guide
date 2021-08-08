.class public Lorg/locationtech/jts/edgegraph/MarkHalfEdge;
.super Lorg/locationtech/jts/edgegraph/HalfEdge;
.source "MarkHalfEdge.java"


# instance fields
.field private isMarked:Z


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "orig"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lorg/locationtech/jts/edgegraph/HalfEdge;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->isMarked:Z

    .line 90
    return-void
.end method

.method public static isMarked(Lorg/locationtech/jts/edgegraph/HalfEdge;)Z
    .locals 1
    .param p0, "e"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    .line 35
    check-cast p0, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;

    .end local p0    # "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    invoke-virtual {p0}, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->isMarked()Z

    move-result v0

    return v0
.end method

.method public static mark(Lorg/locationtech/jts/edgegraph/HalfEdge;)V
    .locals 0
    .param p0, "e"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    .line 45
    check-cast p0, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;

    .end local p0    # "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    invoke-virtual {p0}, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->mark()V

    .line 46
    return-void
.end method

.method public static markBoth(Lorg/locationtech/jts/edgegraph/HalfEdge;)V
    .locals 1
    .param p0, "e"    # Lorg/locationtech/jts/edgegraph/HalfEdge;

    .prologue
    .line 77
    move-object v0, p0

    check-cast v0, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;

    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->mark()V

    .line 78
    invoke-virtual {p0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;

    invoke-virtual {v0}, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->mark()V

    .line 79
    return-void
.end method

.method public static setMark(Lorg/locationtech/jts/edgegraph/HalfEdge;Z)V
    .locals 0
    .param p0, "e"    # Lorg/locationtech/jts/edgegraph/HalfEdge;
    .param p1, "isMarked"    # Z

    .prologue
    .line 56
    check-cast p0, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;

    .end local p0    # "e":Lorg/locationtech/jts/edgegraph/HalfEdge;
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->setMark(Z)V

    .line 57
    return-void
.end method

.method public static setMarkBoth(Lorg/locationtech/jts/edgegraph/HalfEdge;Z)V
    .locals 1
    .param p0, "e"    # Lorg/locationtech/jts/edgegraph/HalfEdge;
    .param p1, "isMarked"    # Z

    .prologue
    .line 67
    move-object v0, p0

    check-cast v0, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->setMark(Z)V

    .line 68
    invoke-virtual {p0}, Lorg/locationtech/jts/edgegraph/HalfEdge;->sym()Lorg/locationtech/jts/edgegraph/HalfEdge;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->setMark(Z)V

    .line 69
    return-void
.end method


# virtual methods
.method public isMarked()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->isMarked:Z

    return v0
.end method

.method public mark()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->isMarked:Z

    .line 109
    return-void
.end method

.method public setMark(Z)V
    .locals 0
    .param p1, "isMarked"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lorg/locationtech/jts/edgegraph/MarkHalfEdge;->isMarked:Z

    .line 119
    return-void
.end method
