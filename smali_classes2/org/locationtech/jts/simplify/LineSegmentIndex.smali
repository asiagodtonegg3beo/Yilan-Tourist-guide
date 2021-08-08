.class Lorg/locationtech/jts/simplify/LineSegmentIndex;
.super Ljava/lang/Object;
.source "LineSegmentIndex.java"


# instance fields
.field private index:Lorg/locationtech/jts/index/quadtree/Quadtree;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lorg/locationtech/jts/index/quadtree/Quadtree;

    invoke-direct {v0}, Lorg/locationtech/jts/index/quadtree/Quadtree;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/simplify/LineSegmentIndex;->index:Lorg/locationtech/jts/index/quadtree/Quadtree;

    .line 35
    return-void
.end method


# virtual methods
.method public add(Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 4
    .param p1, "seg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/locationtech/jts/simplify/LineSegmentIndex;->index:Lorg/locationtech/jts/index/quadtree/Quadtree;

    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    iget-object v2, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1, v2, v3}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-virtual {v0, v1, p1}, Lorg/locationtech/jts/index/quadtree/Quadtree;->insert(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public add(Lorg/locationtech/jts/simplify/TaggedLineString;)V
    .locals 4
    .param p1, "line"    # Lorg/locationtech/jts/simplify/TaggedLineString;

    .prologue
    .line 38
    invoke-virtual {p1}, Lorg/locationtech/jts/simplify/TaggedLineString;->getSegments()[Lorg/locationtech/jts/simplify/TaggedLineSegment;

    move-result-object v2

    .line 39
    .local v2, "segs":[Lorg/locationtech/jts/simplify/TaggedLineSegment;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 40
    aget-object v1, v2, v0

    .line 41
    .local v1, "seg":Lorg/locationtech/jts/simplify/TaggedLineSegment;
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/simplify/LineSegmentIndex;->add(Lorg/locationtech/jts/geom/LineSegment;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "seg":Lorg/locationtech/jts/simplify/TaggedLineSegment;
    :cond_0
    return-void
.end method

.method public query(Lorg/locationtech/jts/geom/LineSegment;)Ljava/util/List;
    .locals 5
    .param p1, "querySeg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 57
    new-instance v0, Lorg/locationtech/jts/geom/Envelope;

    iget-object v3, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v4, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, v3, v4}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 59
    .local v0, "env":Lorg/locationtech/jts/geom/Envelope;
    new-instance v2, Lorg/locationtech/jts/simplify/LineSegmentVisitor;

    invoke-direct {v2, p1}, Lorg/locationtech/jts/simplify/LineSegmentVisitor;-><init>(Lorg/locationtech/jts/geom/LineSegment;)V

    .line 60
    .local v2, "visitor":Lorg/locationtech/jts/simplify/LineSegmentVisitor;
    iget-object v3, p0, Lorg/locationtech/jts/simplify/LineSegmentIndex;->index:Lorg/locationtech/jts/index/quadtree/Quadtree;

    invoke-virtual {v3, v0, v2}, Lorg/locationtech/jts/index/quadtree/Quadtree;->query(Lorg/locationtech/jts/geom/Envelope;Lorg/locationtech/jts/index/ItemVisitor;)V

    .line 61
    invoke-virtual {v2}, Lorg/locationtech/jts/simplify/LineSegmentVisitor;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 68
    .local v1, "itemsFound":Ljava/util/List;
    return-object v1
.end method

.method public remove(Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 4
    .param p1, "seg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/locationtech/jts/simplify/LineSegmentIndex;->index:Lorg/locationtech/jts/index/quadtree/Quadtree;

    new-instance v1, Lorg/locationtech/jts/geom/Envelope;

    iget-object v2, p1, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p1, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1, v2, v3}, Lorg/locationtech/jts/geom/Envelope;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-virtual {v0, v1, p1}, Lorg/locationtech/jts/index/quadtree/Quadtree;->remove(Lorg/locationtech/jts/geom/Envelope;Ljava/lang/Object;)Z

    .line 53
    return-void
.end method
