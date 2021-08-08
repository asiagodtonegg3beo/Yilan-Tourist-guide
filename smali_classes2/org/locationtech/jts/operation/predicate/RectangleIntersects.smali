.class public Lorg/locationtech/jts/operation/predicate/RectangleIntersects;
.super Ljava/lang/Object;
.source "RectangleIntersects.java"


# instance fields
.field private rectEnv:Lorg/locationtech/jts/geom/Envelope;

.field private rectangle:Lorg/locationtech/jts/geom/Polygon;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Polygon;)V
    .locals 1
    .param p1, "rectangle"    # Lorg/locationtech/jts/geom/Polygon;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersects;->rectangle:Lorg/locationtech/jts/geom/Polygon;

    .line 74
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Polygon;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v0

    iput-object v0, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersects;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 75
    return-void
.end method

.method public static intersects(Lorg/locationtech/jts/geom/Polygon;Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 2
    .param p0, "rectangle"    # Lorg/locationtech/jts/geom/Polygon;
    .param p1, "b"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 57
    new-instance v0, Lorg/locationtech/jts/operation/predicate/RectangleIntersects;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/operation/predicate/RectangleIntersects;-><init>(Lorg/locationtech/jts/geom/Polygon;)V

    .line 58
    .local v0, "rp":Lorg/locationtech/jts/operation/predicate/RectangleIntersects;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/predicate/RectangleIntersects;->intersects(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public intersects(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 7
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 86
    iget-object v5, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersects;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getEnvelopeInternal()Lorg/locationtech/jts/geom/Envelope;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v3

    .line 93
    :cond_1
    new-instance v2, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;

    iget-object v5, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersects;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v2, v5}, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;-><init>(Lorg/locationtech/jts/geom/Envelope;)V

    .line 94
    .local v2, "visitor":Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;
    invoke-virtual {v2, p1}, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->applyTo(Lorg/locationtech/jts/geom/Geometry;)V

    .line 95
    invoke-virtual {v2}, Lorg/locationtech/jts/operation/predicate/EnvelopeIntersectsVisitor;->intersects()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 96
    goto :goto_0

    .line 101
    :cond_2
    new-instance v0, Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;

    iget-object v5, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersects;->rectangle:Lorg/locationtech/jts/geom/Polygon;

    invoke-direct {v0, v5}, Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;-><init>(Lorg/locationtech/jts/geom/Polygon;)V

    .line 102
    .local v0, "ecpVisitor":Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;->applyTo(Lorg/locationtech/jts/geom/Geometry;)V

    .line 103
    invoke-virtual {v0}, Lorg/locationtech/jts/operation/predicate/GeometryContainsPointVisitor;->containsPoint()Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 104
    goto :goto_0

    .line 109
    :cond_3
    new-instance v1, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;

    iget-object v5, p0, Lorg/locationtech/jts/operation/predicate/RectangleIntersects;->rectangle:Lorg/locationtech/jts/geom/Polygon;

    invoke-direct {v1, v5}, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;-><init>(Lorg/locationtech/jts/geom/Polygon;)V

    .line 110
    .local v1, "riVisitor":Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;
    invoke-virtual {v1, p1}, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->applyTo(Lorg/locationtech/jts/geom/Geometry;)V

    .line 111
    invoke-virtual {v1}, Lorg/locationtech/jts/operation/predicate/RectangleIntersectsSegmentVisitor;->intersects()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 112
    goto :goto_0
.end method
