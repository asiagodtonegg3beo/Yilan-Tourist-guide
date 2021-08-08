.class public Lorg/locationtech/jts/triangulate/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field private data:Ljava/lang/Object;

.field private ls:Lorg/locationtech/jts/geom/LineSegment;


# direct methods
.method public constructor <init>(DDDDDD)V
    .locals 11
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "z1"    # D
    .param p7, "x2"    # D
    .param p9, "y2"    # D
    .param p11, "z2"    # D

    .prologue
    .line 35
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    invoke-direct/range {v3 .. v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    invoke-direct {p0, v1, v3}, Lorg/locationtech/jts/triangulate/Segment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 36
    return-void
.end method

.method public constructor <init>(DDDDDDLjava/lang/Object;)V
    .locals 13
    .param p1, "x1"    # D
    .param p3, "y1"    # D
    .param p5, "z1"    # D
    .param p7, "x2"    # D
    .param p9, "y2"    # D
    .param p11, "z2"    # D
    .param p13, "data"    # Ljava/lang/Object;

    .prologue
    .line 42
    new-instance v3, Lorg/locationtech/jts/geom/Coordinate;

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v3 .. v9}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    new-instance v5, Lorg/locationtech/jts/geom/Coordinate;

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move-wide/from16 v10, p11

    invoke-direct/range {v5 .. v11}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DDD)V

    move-object/from16 v0, p13

    invoke-direct {p0, v3, v5, v0}, Lorg/locationtech/jts/triangulate/Segment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/Segment;->data:Ljava/lang/Object;

    .line 64
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V
    .locals 1
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/Segment;->data:Ljava/lang/Object;

    .line 53
    new-instance v0, Lorg/locationtech/jts/geom/LineSegment;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    iput-object v0, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    .line 54
    iput-object p3, p0, Lorg/locationtech/jts/triangulate/Segment;->data:Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public equalsTopo(Lorg/locationtech/jts/triangulate/Segment;)Z
    .locals 2
    .param p1, "s"    # Lorg/locationtech/jts/triangulate/Segment;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/Segment;->getLineSegment()Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/LineSegment;->equalsTopo(Lorg/locationtech/jts/geom/LineSegment;)Z

    move-result v0

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/Segment;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getEnd()Lorg/locationtech/jts/geom/Coordinate;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/LineSegment;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getEndX()D
    .locals 4

    .prologue
    .line 121
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/LineSegment;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 122
    .local v0, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    return-wide v2
.end method

.method public getEndY()D
    .locals 4

    .prologue
    .line 131
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/LineSegment;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 132
    .local v0, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    return-wide v2
.end method

.method public getEndZ()D
    .locals 4

    .prologue
    .line 141
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/LineSegment;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 142
    .local v0, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    return-wide v2
.end method

.method public getLineSegment()Lorg/locationtech/jts/geom/LineSegment;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    return-object v0
.end method

.method public getStart()Lorg/locationtech/jts/geom/Coordinate;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/LineSegment;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getStartX()D
    .locals 4

    .prologue
    .line 91
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/LineSegment;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 92
    .local v0, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    return-wide v2
.end method

.method public getStartY()D
    .locals 4

    .prologue
    .line 101
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/LineSegment;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 102
    .local v0, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    return-wide v2
.end method

.method public getStartZ()D
    .locals 4

    .prologue
    .line 111
    iget-object v1, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/LineSegment;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 112
    .local v0, "p":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v2, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    return-wide v2
.end method

.method public intersection(Lorg/locationtech/jts/triangulate/Segment;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 2
    .param p1, "s"    # Lorg/locationtech/jts/triangulate/Segment;

    .prologue
    .line 190
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {p1}, Lorg/locationtech/jts/triangulate/Segment;->getLineSegment()Lorg/locationtech/jts/geom/LineSegment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/LineSegment;->intersection(Lorg/locationtech/jts/geom/LineSegment;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 169
    iput-object p1, p0, Lorg/locationtech/jts/triangulate/Segment;->data:Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/locationtech/jts/triangulate/Segment;->ls:Lorg/locationtech/jts/geom/LineSegment;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineSegment;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
