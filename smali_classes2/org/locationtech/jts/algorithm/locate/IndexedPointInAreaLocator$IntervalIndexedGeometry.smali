.class Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;
.super Ljava/lang/Object;
.source "IndexedPointInAreaLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntervalIndexedGeometry"
.end annotation


# instance fields
.field private final index:Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;

    invoke-direct {v0}, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;->index:Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;

    .line 102
    invoke-direct {p0, p1}, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;->init(Lorg/locationtech/jts/geom/Geometry;)V

    .line 103
    return-void
.end method

.method private addLine([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 12
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 117
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 118
    new-instance v6, Lorg/locationtech/jts/geom/LineSegment;

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    aget-object v7, p1, v0

    invoke-direct {v6, v1, v7}, Lorg/locationtech/jts/geom/LineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 119
    .local v6, "seg":Lorg/locationtech/jts/geom/LineSegment;
    iget-object v1, v6, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v1, v6, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v10, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 120
    .local v2, "min":D
    iget-object v1, v6, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-object v1, v6, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-wide v10, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 121
    .local v4, "max":D
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;->index:Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;

    invoke-virtual/range {v1 .. v6}, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->insert(DDLjava/lang/Object;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "min":D
    .end local v4    # "max":D
    .end local v6    # "seg":Lorg/locationtech/jts/geom/LineSegment;
    :cond_0
    return-void
.end method

.method private init(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 5
    .param p1, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 107
    invoke-static {p1}, Lorg/locationtech/jts/geom/util/LinearComponentExtracter;->getLines(Lorg/locationtech/jts/geom/Geometry;)Ljava/util/List;

    move-result-object v2

    .line 108
    .local v2, "lines":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/LineString;

    .line 110
    .local v1, "line":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    .line 111
    .local v3, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-direct {p0, v3}, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;->addLine([Lorg/locationtech/jts/geom/Coordinate;)V

    goto :goto_0

    .line 113
    .end local v1    # "line":Lorg/locationtech/jts/geom/LineString;
    .end local v3    # "pts":[Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    return-void
.end method


# virtual methods
.method public query(DD)Ljava/util/List;
    .locals 7
    .param p1, "min"    # D
    .param p3, "max"    # D

    .prologue
    .line 127
    new-instance v6, Lorg/locationtech/jts/index/ArrayListVisitor;

    invoke-direct {v6}, Lorg/locationtech/jts/index/ArrayListVisitor;-><init>()V

    .line 128
    .local v6, "visitor":Lorg/locationtech/jts/index/ArrayListVisitor;
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;->index:Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->query(DDLorg/locationtech/jts/index/ItemVisitor;)V

    .line 129
    invoke-virtual {v6}, Lorg/locationtech/jts/index/ArrayListVisitor;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public query(DDLorg/locationtech/jts/index/ItemVisitor;)V
    .locals 7
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "visitor"    # Lorg/locationtech/jts/index/ItemVisitor;

    .prologue
    .line 134
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$IntervalIndexedGeometry;->index:Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/locationtech/jts/index/intervalrtree/SortedPackedIntervalRTree;->query(DDLorg/locationtech/jts/index/ItemVisitor;)V

    .line 135
    return-void
.end method
