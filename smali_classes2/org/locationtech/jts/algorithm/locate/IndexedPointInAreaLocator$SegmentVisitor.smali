.class Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$SegmentVisitor;
.super Ljava/lang/Object;
.source "IndexedPointInAreaLocator.java"

# interfaces
.implements Lorg/locationtech/jts/index/ItemVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SegmentVisitor"
.end annotation


# instance fields
.field private counter:Lorg/locationtech/jts/algorithm/RayCrossingCounter;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/algorithm/RayCrossingCounter;)V
    .locals 0
    .param p1, "counter"    # Lorg/locationtech/jts/algorithm/RayCrossingCounter;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$SegmentVisitor;->counter:Lorg/locationtech/jts/algorithm/RayCrossingCounter;

    .line 87
    return-void
.end method


# virtual methods
.method public visitItem(Ljava/lang/Object;)V
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    .line 91
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/LineSegment;

    .line 92
    .local v0, "seg":Lorg/locationtech/jts/geom/LineSegment;
    iget-object v1, p0, Lorg/locationtech/jts/algorithm/locate/IndexedPointInAreaLocator$SegmentVisitor;->counter:Lorg/locationtech/jts/algorithm/RayCrossingCounter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/LineSegment;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/locationtech/jts/geom/LineSegment;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/locationtech/jts/algorithm/RayCrossingCounter;->countSegment(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 93
    return-void
.end method
