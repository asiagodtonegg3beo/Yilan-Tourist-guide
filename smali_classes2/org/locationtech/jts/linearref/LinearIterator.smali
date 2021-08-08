.class public Lorg/locationtech/jts/linearref/LinearIterator;
.super Ljava/lang/Object;
.source "LinearIterator.java"


# instance fields
.field private componentIndex:I

.field private currentLine:Lorg/locationtech/jts/geom/LineString;

.field private linearGeom:Lorg/locationtech/jts/geom/Geometry;

.field private final numLines:I

.field private vertexIndex:I


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "linear"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0, v0}, Lorg/locationtech/jts/linearref/LinearIterator;-><init>(Lorg/locationtech/jts/geom/Geometry;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;II)V
    .locals 2
    .param p1, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "componentIndex"    # I
    .param p3, "vertexIndex"    # I

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->componentIndex:I

    .line 55
    iput v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->vertexIndex:I

    .line 90
    instance-of v0, p1, Lorg/locationtech/jts/geom/Lineal;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lineal geometry is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lorg/locationtech/jts/linearref/LinearIterator;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 93
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v0

    iput v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->numLines:I

    .line 94
    iput p2, p0, Lorg/locationtech/jts/linearref/LinearIterator;->componentIndex:I

    .line 95
    iput p3, p0, Lorg/locationtech/jts/linearref/LinearIterator;->vertexIndex:I

    .line 96
    invoke-direct {p0}, Lorg/locationtech/jts/linearref/LinearIterator;->loadCurrentLine()V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/linearref/LinearLocation;)V
    .locals 2
    .param p1, "linear"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "start"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 76
    invoke-virtual {p2}, Lorg/locationtech/jts/linearref/LinearLocation;->getComponentIndex()I

    move-result v0

    invoke-static {p2}, Lorg/locationtech/jts/linearref/LinearIterator;->segmentEndVertexIndex(Lorg/locationtech/jts/linearref/LinearLocation;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/locationtech/jts/linearref/LinearIterator;-><init>(Lorg/locationtech/jts/geom/Geometry;II)V

    .line 77
    return-void
.end method

.method private loadCurrentLine()V
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->componentIndex:I

    iget v1, p0, Lorg/locationtech/jts/linearref/LinearIterator;->numLines:I

    if-lt v0, v1, :cond_0

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->currentLine:Lorg/locationtech/jts/geom/LineString;

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    iget v1, p0, Lorg/locationtech/jts/linearref/LinearIterator;->componentIndex:I

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/LineString;

    iput-object v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->currentLine:Lorg/locationtech/jts/geom/LineString;

    goto :goto_0
.end method

.method private static segmentEndVertexIndex(Lorg/locationtech/jts/linearref/LinearLocation;)I
    .locals 4
    .param p0, "loc"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegmentFraction()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegmentIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 44
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegmentIndex()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getComponentIndex()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->componentIndex:I

    return v0
.end method

.method public getLine()Lorg/locationtech/jts/geom/LineString;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->currentLine:Lorg/locationtech/jts/geom/LineString;

    return-object v0
.end method

.method public getSegmentEnd()Lorg/locationtech/jts/geom/Coordinate;
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->vertexIndex:I

    invoke-virtual {p0}, Lorg/locationtech/jts/linearref/LinearIterator;->getLine()Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->currentLine:Lorg/locationtech/jts/geom/LineString;

    iget v1, p0, Lorg/locationtech/jts/linearref/LinearIterator;->vertexIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSegmentStart()Lorg/locationtech/jts/geom/Coordinate;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->currentLine:Lorg/locationtech/jts/geom/LineString;

    iget v1, p0, Lorg/locationtech/jts/linearref/LinearIterator;->vertexIndex:I

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/LineString;->getCoordinateN(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getVertexIndex()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->vertexIndex:I

    return v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 118
    iget v1, p0, Lorg/locationtech/jts/linearref/LinearIterator;->componentIndex:I

    iget v2, p0, Lorg/locationtech/jts/linearref/LinearIterator;->numLines:I

    if-lt v1, v2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    iget v1, p0, Lorg/locationtech/jts/linearref/LinearIterator;->componentIndex:I

    iget v2, p0, Lorg/locationtech/jts/linearref/LinearIterator;->numLines:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/locationtech/jts/linearref/LinearIterator;->vertexIndex:I

    iget-object v2, p0, Lorg/locationtech/jts/linearref/LinearIterator;->currentLine:Lorg/locationtech/jts/geom/LineString;

    .line 120
    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 122
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEndOfLine()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 147
    iget v1, p0, Lorg/locationtech/jts/linearref/LinearIterator;->componentIndex:I

    iget v2, p0, Lorg/locationtech/jts/linearref/LinearIterator;->numLines:I

    if-lt v1, v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    iget v1, p0, Lorg/locationtech/jts/linearref/LinearIterator;->vertexIndex:I

    iget-object v2, p0, Lorg/locationtech/jts/linearref/LinearIterator;->currentLine:Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    .line 151
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/locationtech/jts/linearref/LinearIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->vertexIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->vertexIndex:I

    .line 133
    iget v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->vertexIndex:I

    iget-object v1, p0, Lorg/locationtech/jts/linearref/LinearIterator;->currentLine:Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->getNumPoints()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 134
    iget v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->componentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->componentIndex:I

    .line 135
    invoke-direct {p0}, Lorg/locationtech/jts/linearref/LinearIterator;->loadCurrentLine()V

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/linearref/LinearIterator;->vertexIndex:I

    goto :goto_0
.end method
