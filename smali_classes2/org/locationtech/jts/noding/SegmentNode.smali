.class public Lorg/locationtech/jts/noding/SegmentNode;
.super Ljava/lang/Object;
.source "SegmentNode.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final coord:Lorg/locationtech/jts/geom/Coordinate;

.field private final isInterior:Z

.field private final segString:Lorg/locationtech/jts/noding/NodedSegmentString;

.field public final segmentIndex:I

.field private final segmentOctant:I


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/noding/NodedSegmentString;Lorg/locationtech/jts/geom/Coordinate;II)V
    .locals 1
    .param p1, "segString"    # Lorg/locationtech/jts/noding/NodedSegmentString;
    .param p2, "coord"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "segmentIndex"    # I
    .param p4, "segmentOctant"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/locationtech/jts/noding/SegmentNode;->segString:Lorg/locationtech/jts/noding/NodedSegmentString;

    .line 34
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p2}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    iput-object v0, p0, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    .line 35
    iput p3, p0, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    .line 36
    iput p4, p0, Lorg/locationtech/jts/noding/SegmentNode;->segmentOctant:I

    .line 37
    invoke-virtual {p1, p3}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentNode;->isInterior:Z

    .line 38
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 66
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/noding/SegmentNode;

    .line 68
    .local v0, "other":Lorg/locationtech/jts/noding/SegmentNode;
    iget v1, p0, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    iget v2, v0, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    if-ge v1, v2, :cond_0

    const/4 v1, -0x1

    .line 73
    :goto_0
    return v1

    .line 69
    :cond_0
    iget v1, p0, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    iget v2, v0, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, v0, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    .line 73
    :cond_2
    iget v1, p0, Lorg/locationtech/jts/noding/SegmentNode;->segmentOctant:I

    iget-object v2, p0, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, v0, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v1, v2, v3}, Lorg/locationtech/jts/noding/SegmentPointComparator;->compare(ILorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v1

    goto :goto_0
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public isEndPoint(I)Z
    .locals 2
    .param p1, "maxSegmentIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 54
    iget v1, p0, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/locationtech/jts/noding/SegmentNode;->isInterior:Z

    if-nez v1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    iget v1, p0, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    if-eq v1, p1, :cond_0

    .line 56
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInterior()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lorg/locationtech/jts/noding/SegmentNode;->isInterior:Z

    return v0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/locationtech/jts/noding/SegmentNode;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " seg # = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/locationtech/jts/noding/SegmentNode;->segmentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 81
    return-void
.end method
