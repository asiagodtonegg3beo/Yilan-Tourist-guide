.class public Lorg/locationtech/jts/geomgraph/EdgeIntersection;
.super Ljava/lang/Object;
.source "EdgeIntersection.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public coord:Lorg/locationtech/jts/geom/Coordinate;

.field public dist:D

.field public segmentIndex:I


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;ID)V
    .locals 1
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "segmentIndex"    # I
    .param p3, "dist"    # D

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    .line 41
    iput p2, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    .line 42
    iput-wide p3, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->dist:D

    .line 43
    return-void
.end method


# virtual methods
.method public compare(ID)I
    .locals 4
    .param p1, "segmentIndex"    # I
    .param p2, "dist"    # D

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 63
    iget v2, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    if-ge v2, p1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    iget v2, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    if-le v2, p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 65
    :cond_2
    iget-wide v2, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->dist:D

    cmpg-double v2, v2, p2

    if-ltz v2, :cond_0

    .line 66
    iget-wide v2, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->dist:D

    cmpl-double v0, v2, p2

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_0

    .line 67
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 53
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;

    .line 54
    .local v0, "other":Lorg/locationtech/jts/geomgraph/EdgeIntersection;
    iget v1, v0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    iget-wide v2, v0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->dist:D

    invoke-virtual {p0, v1, v2, v3}, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->compare(ID)I

    move-result v1

    return v1
.end method

.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->dist:D

    return-wide v0
.end method

.method public getSegmentIndex()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    return v0
.end method

.method public isEndPoint(I)Z
    .locals 6
    .param p1, "maxSegmentIndex"    # I

    .prologue
    const/4 v0, 0x1

    .line 72
    iget v1, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    if-nez v1, :cond_1

    iget-wide v2, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->dist:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    iget v1, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    if-eq v1, p1, :cond_0

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintStream;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " seg # = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " dist = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->dist:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->coord:Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seg # = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->segmentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dist = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/locationtech/jts/geomgraph/EdgeIntersection;->dist:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
