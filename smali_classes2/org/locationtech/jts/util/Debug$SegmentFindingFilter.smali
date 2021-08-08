.class Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;
.super Ljava/lang/Object;
.source "Debug.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateSequenceFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/util/Debug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SegmentFindingFilter"
.end annotation


# instance fields
.field private hasSegment:Z

.field private p0:Lorg/locationtech/jts/geom/Coordinate;

.field private p1:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;->hasSegment:Z

    .line 229
    iput-object p1, p0, Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;->p0:Lorg/locationtech/jts/geom/Coordinate;

    .line 230
    iput-object p2, p0, Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 231
    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/CoordinateSequence;I)V
    .locals 2
    .param p1, "seq"    # Lorg/locationtech/jts/geom/CoordinateSequence;
    .param p2, "i"    # I

    .prologue
    .line 237
    if-nez p2, :cond_0

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;->p0:Lorg/locationtech/jts/geom/Coordinate;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {p1, v1}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;->p1:Lorg/locationtech/jts/geom/Coordinate;

    .line 239
    invoke-interface {p1, p2}, Lorg/locationtech/jts/geom/CoordinateSequence;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;->hasSegment:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hasSegment()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;->hasSegment:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;->hasSegment:Z

    return v0
.end method

.method public isGeometryChanged()Z
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    return v0
.end method
