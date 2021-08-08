.class Lorg/locationtech/jts/simplify/LineSegmentVisitor;
.super Ljava/lang/Object;
.source "LineSegmentIndex.java"

# interfaces
.implements Lorg/locationtech/jts/index/ItemVisitor;


# instance fields
.field private items:Ljava/util/ArrayList;

.field private querySeg:Lorg/locationtech/jts/geom/LineSegment;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 1
    .param p1, "querySeg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/simplify/LineSegmentVisitor;->items:Ljava/util/ArrayList;

    .line 84
    iput-object p1, p0, Lorg/locationtech/jts/simplify/LineSegmentVisitor;->querySeg:Lorg/locationtech/jts/geom/LineSegment;

    .line 85
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/locationtech/jts/simplify/LineSegmentVisitor;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public visitItem(Ljava/lang/Object;)V
    .locals 5
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 89
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/LineSegment;

    .line 90
    .local v0, "seg":Lorg/locationtech/jts/geom/LineSegment;
    iget-object v1, v0, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, v0, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p0, Lorg/locationtech/jts/simplify/LineSegmentVisitor;->querySeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v3, v3, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v4, p0, Lorg/locationtech/jts/simplify/LineSegmentVisitor;->querySeg:Lorg/locationtech/jts/geom/LineSegment;

    iget-object v4, v4, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v1, v2, v3, v4}, Lorg/locationtech/jts/geom/Envelope;->intersects(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lorg/locationtech/jts/simplify/LineSegmentVisitor;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    return-void
.end method
