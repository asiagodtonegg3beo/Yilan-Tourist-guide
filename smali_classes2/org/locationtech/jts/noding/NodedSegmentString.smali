.class public Lorg/locationtech/jts/noding/NodedSegmentString;
.super Ljava/lang/Object;
.source "NodedSegmentString.java"

# interfaces
.implements Lorg/locationtech/jts/noding/NodableSegmentString;


# instance fields
.field private data:Ljava/lang/Object;

.field private nodeList:Lorg/locationtech/jts/noding/SegmentNodeList;

.field private pts:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V
    .locals 1
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lorg/locationtech/jts/noding/SegmentNodeList;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/noding/SegmentNodeList;-><init>(Lorg/locationtech/jts/noding/NodedSegmentString;)V

    iput-object v0, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->nodeList:Lorg/locationtech/jts/noding/SegmentNodeList;

    .line 79
    iput-object p1, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 80
    iput-object p2, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->data:Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public static getNodedSubstrings(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p0, "segStrings"    # Ljava/util/Collection;

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v0, "resultEdgelist":Ljava/util/List;
    invoke-static {p0, v0}, Lorg/locationtech/jts/noding/NodedSegmentString;->getNodedSubstrings(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 50
    return-object v0
.end method

.method public static getNodedSubstrings(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .param p0, "segStrings"    # Ljava/util/Collection;
    .param p1, "resultEdgelist"    # Ljava/util/Collection;

    .prologue
    .line 61
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/noding/NodedSegmentString;

    .line 63
    .local v1, "ss":Lorg/locationtech/jts/noding/NodedSegmentString;
    invoke-virtual {v1}, Lorg/locationtech/jts/noding/NodedSegmentString;->getNodeList()Lorg/locationtech/jts/noding/SegmentNodeList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/locationtech/jts/noding/SegmentNodeList;->addSplitEdges(Ljava/util/Collection;)V

    goto :goto_0

    .line 65
    .end local v1    # "ss":Lorg/locationtech/jts/noding/NodedSegmentString;
    :cond_0
    return-void
.end method

.method private safeOctant(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 1
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 123
    invoke-virtual {p1, p2}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2}, Lorg/locationtech/jts/noding/Octant;->octant(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addIntersection(Lorg/locationtech/jts/algorithm/LineIntersector;III)V
    .locals 2
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;
    .param p2, "segmentIndex"    # I
    .param p3, "geomIndex"    # I
    .param p4, "intIndex"    # I

    .prologue
    .line 145
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p1, p4}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersection(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 146
    .local v0, "intPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p0, v0, p2}, Lorg/locationtech/jts/noding/NodedSegmentString;->addIntersection(Lorg/locationtech/jts/geom/Coordinate;I)V

    .line 147
    return-void
.end method

.method public addIntersection(Lorg/locationtech/jts/geom/Coordinate;I)V
    .locals 0
    .param p1, "intPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "segmentIndex"    # I

    .prologue
    .line 156
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/noding/NodedSegmentString;->addIntersectionNode(Lorg/locationtech/jts/geom/Coordinate;I)Lorg/locationtech/jts/noding/SegmentNode;

    .line 157
    return-void
.end method

.method public addIntersectionNode(Lorg/locationtech/jts/geom/Coordinate;I)Lorg/locationtech/jts/noding/SegmentNode;
    .locals 5
    .param p1, "intPt"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "segmentIndex"    # I

    .prologue
    .line 169
    move v3, p2

    .line 172
    .local v3, "normalizedSegmentIndex":I
    add-int/lit8 v2, v3, 0x1

    .line 173
    .local v2, "nextSegIndex":I
    iget-object v4, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 174
    iget-object v4, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v1, v4, v2

    .line 179
    .local v1, "nextPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p1, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    move v3, v2

    .line 187
    .end local v1    # "nextPt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_0
    iget-object v4, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->nodeList:Lorg/locationtech/jts/noding/SegmentNodeList;

    invoke-virtual {v4, p1, v3}, Lorg/locationtech/jts/noding/SegmentNodeList;->add(Lorg/locationtech/jts/geom/Coordinate;I)Lorg/locationtech/jts/noding/SegmentNode;

    move-result-object v0

    .line 188
    .local v0, "ei":Lorg/locationtech/jts/noding/SegmentNode;
    return-object v0
.end method

.method public addIntersections(Lorg/locationtech/jts/algorithm/LineIntersector;II)V
    .locals 2
    .param p1, "li"    # Lorg/locationtech/jts/algorithm/LineIntersector;
    .param p2, "segmentIndex"    # I
    .param p3, "geomIndex"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/locationtech/jts/algorithm/LineIntersector;->getIntersectionNum()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 134
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/locationtech/jts/noding/NodedSegmentString;->addIntersection(Lorg/locationtech/jts/algorithm/LineIntersector;III)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method public getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getNodeList()Lorg/locationtech/jts/noding/SegmentNodeList;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->nodeList:Lorg/locationtech/jts/noding/SegmentNodeList;

    return-object v0
.end method

.method public getSegmentOctant(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/noding/NodedSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/noding/NodedSegmentString;->safeOctant(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->data:Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;

    iget-object v1, p0, Lorg/locationtech/jts/noding/NodedSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;-><init>([Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-static {v0}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
