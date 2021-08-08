.class Lorg/locationtech/jts/simplify/TaggedLineString;
.super Ljava/lang/Object;
.source "TaggedLineString.java"


# instance fields
.field private minimumSize:I

.field private parentLine:Lorg/locationtech/jts/geom/LineString;

.field private resultSegs:Ljava/util/List;

.field private segs:[Lorg/locationtech/jts/simplify/TaggedLineSegment;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/LineString;)V
    .locals 1
    .param p1, "parentLine"    # Lorg/locationtech/jts/geom/LineString;

    .prologue
    .line 39
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/locationtech/jts/simplify/TaggedLineString;-><init>(Lorg/locationtech/jts/geom/LineString;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/LineString;I)V
    .locals 1
    .param p1, "parentLine"    # Lorg/locationtech/jts/geom/LineString;
    .param p2, "minimumSize"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->resultSegs:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->parentLine:Lorg/locationtech/jts/geom/LineString;

    .line 44
    iput p2, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->minimumSize:I

    .line 45
    invoke-direct {p0}, Lorg/locationtech/jts/simplify/TaggedLineString;->init()V

    .line 46
    return-void
.end method

.method private static extractCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 5
    .param p0, "segs"    # Ljava/util/List;

    .prologue
    .line 90
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [Lorg/locationtech/jts/geom/Coordinate;

    .line 91
    .local v1, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    const/4 v2, 0x0

    .line 92
    .local v2, "seg":Lorg/locationtech/jts/geom/LineSegment;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 93
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "seg":Lorg/locationtech/jts/geom/LineSegment;
    check-cast v2, Lorg/locationtech/jts/geom/LineSegment;

    .line 94
    .restart local v2    # "seg":Lorg/locationtech/jts/geom/LineSegment;
    iget-object v3, v2, Lorg/locationtech/jts/geom/LineSegment;->p0:Lorg/locationtech/jts/geom/Coordinate;

    aput-object v3, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v2, Lorg/locationtech/jts/geom/LineSegment;->p1:Lorg/locationtech/jts/geom/Coordinate;

    aput-object v4, v1, v3

    .line 98
    return-object v1
.end method

.method private init()V
    .locals 6

    .prologue
    .line 63
    iget-object v3, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->parentLine:Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v3}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 64
    .local v1, "pts":[Lorg/locationtech/jts/geom/Coordinate;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [Lorg/locationtech/jts/simplify/TaggedLineSegment;

    iput-object v3, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->segs:[Lorg/locationtech/jts/simplify/TaggedLineSegment;

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 66
    new-instance v2, Lorg/locationtech/jts/simplify/TaggedLineSegment;

    aget-object v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v1, v4

    iget-object v5, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->parentLine:Lorg/locationtech/jts/geom/LineString;

    invoke-direct {v2, v3, v4, v5, v0}, Lorg/locationtech/jts/simplify/TaggedLineSegment;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Geometry;I)V

    .line 68
    .local v2, "seg":Lorg/locationtech/jts/simplify/TaggedLineSegment;
    iget-object v3, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->segs:[Lorg/locationtech/jts/simplify/TaggedLineSegment;

    aput-object v2, v3, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "seg":Lorg/locationtech/jts/simplify/TaggedLineSegment;
    :cond_0
    return-void
.end method


# virtual methods
.method public addToResult(Lorg/locationtech/jts/geom/LineSegment;)V
    .locals 1
    .param p1, "seg"    # Lorg/locationtech/jts/geom/LineSegment;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->resultSegs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method public asLineString()Lorg/locationtech/jts/geom/LineString;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->parentLine:Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->resultSegs:Ljava/util/List;

    invoke-static {v1}, Lorg/locationtech/jts/simplify/TaggedLineString;->extractCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method

.method public asLinearRing()Lorg/locationtech/jts/geom/LinearRing;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->parentLine:Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getFactory()Lorg/locationtech/jts/geom/GeometryFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->resultSegs:Ljava/util/List;

    invoke-static {v1}, Lorg/locationtech/jts/simplify/TaggedLineString;->extractCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumSize()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->minimumSize:I

    return v0
.end method

.method public getParent()Lorg/locationtech/jts/geom/LineString;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->parentLine:Lorg/locationtech/jts/geom/LineString;

    return-object v0
.end method

.method public getParentCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->parentLine:Lorg/locationtech/jts/geom/LineString;

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/LineString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getResultCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->resultSegs:Ljava/util/List;

    invoke-static {v0}, Lorg/locationtech/jts/simplify/TaggedLineString;->extractCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    return-object v0
.end method

.method public getResultSize()I
    .locals 2

    .prologue
    .line 55
    iget-object v1, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->resultSegs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 56
    .local v0, "resultSegsSize":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public getSegment(I)Lorg/locationtech/jts/simplify/TaggedLineSegment;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->segs:[Lorg/locationtech/jts/simplify/TaggedLineSegment;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSegments()[Lorg/locationtech/jts/simplify/TaggedLineSegment;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/locationtech/jts/simplify/TaggedLineString;->segs:[Lorg/locationtech/jts/simplify/TaggedLineSegment;

    return-object v0
.end method
