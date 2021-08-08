.class public Lorg/locationtech/jts/triangulate/ConstraintVertex;
.super Lorg/locationtech/jts/triangulate/quadedge/Vertex;
.source "ConstraintVertex.java"


# instance fields
.field private constraint:Ljava/lang/Object;

.field private isOnConstraint:Z


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/locationtech/jts/triangulate/quadedge/Vertex;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConstraintVertex;->constraint:Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method public getConstraint()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/ConstraintVertex;->constraint:Ljava/lang/Object;

    return-object v0
.end method

.method public isOnConstraint()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lorg/locationtech/jts/triangulate/ConstraintVertex;->isOnConstraint:Z

    return v0
.end method

.method protected merge(Lorg/locationtech/jts/triangulate/ConstraintVertex;)V
    .locals 1
    .param p1, "other"    # Lorg/locationtech/jts/triangulate/ConstraintVertex;

    .prologue
    .line 83
    iget-boolean v0, p1, Lorg/locationtech/jts/triangulate/ConstraintVertex;->isOnConstraint:Z

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/triangulate/ConstraintVertex;->isOnConstraint:Z

    .line 85
    iget-object v0, p1, Lorg/locationtech/jts/triangulate/ConstraintVertex;->constraint:Ljava/lang/Object;

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/ConstraintVertex;->constraint:Ljava/lang/Object;

    .line 87
    :cond_0
    return-void
.end method

.method public setConstraint(Ljava/lang/Object;)V
    .locals 1
    .param p1, "constraint"    # Ljava/lang/Object;

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/triangulate/ConstraintVertex;->isOnConstraint:Z

    .line 63
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/ConstraintVertex;->constraint:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public setOnConstraint(Z)V
    .locals 0
    .param p1, "isOnConstraint"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lorg/locationtech/jts/triangulate/ConstraintVertex;->isOnConstraint:Z

    .line 45
    return-void
.end method
