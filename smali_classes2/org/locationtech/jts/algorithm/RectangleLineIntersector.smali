.class public Lorg/locationtech/jts/algorithm/RectangleLineIntersector;
.super Ljava/lang/Object;
.source "RectangleLineIntersector.java"


# instance fields
.field private diagDown0:Lorg/locationtech/jts/geom/Coordinate;

.field private diagDown1:Lorg/locationtech/jts/geom/Coordinate;

.field private diagUp0:Lorg/locationtech/jts/geom/Coordinate;

.field private diagUp1:Lorg/locationtech/jts/geom/Coordinate;

.field private li:Lorg/locationtech/jts/algorithm/LineIntersector;

.field private rectEnv:Lorg/locationtech/jts/geom/Envelope;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Envelope;)V
    .locals 6
    .param p1, "rectEnv"    # Lorg/locationtech/jts/geom/Envelope;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/locationtech/jts/algorithm/RobustLineIntersector;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/RobustLineIntersector;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    .line 53
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    .line 60
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->diagUp0:Lorg/locationtech/jts/geom/Coordinate;

    .line 61
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->diagUp1:Lorg/locationtech/jts/geom/Coordinate;

    .line 62
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxY()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->diagDown0:Lorg/locationtech/jts/geom/Coordinate;

    .line 63
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMaxX()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Envelope;->getMinY()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->diagDown1:Lorg/locationtech/jts/geom/Coordinate;

    .line 64
    return-void
.end method


# virtual methods
.method public intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 10
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 82
    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    invoke-direct {v1, p1, p2}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 83
    .local v1, "segEnv":Lorg/locationtech/jts/geom/Envelope;
    iget-object v5, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v5, v1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Envelope;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v3

    .line 90
    :cond_1
    iget-object v5, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v5, p1}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    goto :goto_0

    .line 91
    :cond_2
    iget-object v5, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->rectEnv:Lorg/locationtech/jts/geom/Envelope;

    invoke-virtual {v5, p2}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_4

    .line 100
    move-object v2, p1

    .line 101
    .local v2, "tmp":Lorg/locationtech/jts/geom/Coordinate;
    move-object p1, p2

    .line 102
    move-object p2, v2

    .line 110
    .end local v2    # "tmp":Lorg/locationtech/jts/geom/Coordinate;
    :cond_4
    const/4 v0, 0x0

    .line 111
    .local v0, "isSegUpwards":Z
    iget-wide v6, p2, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, p1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    cmpl-double v5, v6, v8

    if-lez v5, :cond_5

    .line 112
    const/4 v0, 0x1

    .line 133
    :cond_5
    if-eqz v0, :cond_6

    .line 134
    iget-object v5, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v6, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->diagDown0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->diagDown1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v5, p1, p2, v6, v7}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 139
    :goto_1
    iget-object v5, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    invoke-virtual {v5}, Lorg/locationtech/jts/algorithm/LineIntersector;->hasIntersection()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 140
    goto :goto_0

    .line 137
    :cond_6
    iget-object v5, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->li:Lorg/locationtech/jts/algorithm/LineIntersector;

    iget-object v6, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->diagUp0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v7, p0, Lorg/locationtech/jts/algorithm/RectangleLineIntersector;->diagUp1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v5, p1, p2, v6, v7}, Lorg/locationtech/jts/algorithm/LineIntersector;->computeIntersection(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_1
.end method
