.class Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;
.super Lorg/locationtech/jts/geom/util/ShortCircuitedGeometryVisitor;
.source "RectangleIntersects.java"


# instance fields
.field private intersects:Z

.field private rectEnv:Lorg/locationtech/jts/geom/Envelope;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 1
    .param p1, "rectEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 132
    invoke-direct {p0}, Lorg/locationtech/jts/geom/util/ShortCircuitedGeometryVisitor;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->intersects:Z

    .line 133
    iput-object p1, p0, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 134
    return-void
.end method


# virtual methods
.method public intersects()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->intersects:Z

    return v0
.end method

.method protected isDone()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 184
    iget-boolean v1, p0, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->intersects:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected visit(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 7
    .param p1, "element"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v6, 0x1

    .line 150
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    .line 153
    .local v0, "elementEnv":Lorg/locationtech/jts/geom/Envelope;
    iget-object v1, p0, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/Envelope;->contains(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    iput-boolean v6, p0, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->intersects:Z

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    iget-object v1, p0, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_3

    .line 171
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v2

    iget-object v1, p0, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_3

    .line 172
    iput-boolean v6, p0, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->intersects:Z

    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v2

    iget-object v1, p0, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v2

    iget-object v1, p0, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 177
    iput-boolean v6, p0, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->intersects:Z

    goto :goto_0
.end method
