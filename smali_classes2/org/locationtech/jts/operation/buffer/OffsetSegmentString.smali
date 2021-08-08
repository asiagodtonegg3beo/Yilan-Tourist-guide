.class Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;
.super Ljava/lang/Object;
.source "OffsetSegmentString.java"


# static fields
.field private static final COORDINATE_ARRAY_TYPE:[Lorg/locationtech/jts/geom/Coordinate;


# instance fields
.field private minimimVertexDistance:D

.field private precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

.field private ptList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    sput-object v0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->COORDINATE_ARRAY_TYPE:[Lorg/locationtech/jts/geom/Coordinate;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->minimimVertexDistance:D

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method private isRedundant(Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 8
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 93
    iget-object v5, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v4, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    iget-object v5, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    .line 96
    .local v0, "lastPt":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v2

    .line 97
    .local v2, "ptDist":D
    iget-wide v6, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->minimimVertexDistance:D

    cmpg-double v5, v2, v6

    if-gez v5, :cond_0

    move v1, v4

    .line 98
    goto :goto_0
.end method


# virtual methods
.method public addPt(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 2
    .param p1, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 60
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 61
    .local v0, "bufPt":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/PrecisionModel;->makePrecise(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 63
    invoke-direct {p0, v0}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->isRedundant(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPts([Lorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 2
    .param p1, "pt"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "isForward"    # Z

    .prologue
    .line 71
    if-eqz p2, :cond_0

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 73
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_0
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 78
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->addPt(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 77
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 81
    :cond_1
    return-void
.end method

.method public closeRing()V
    .locals 5

    .prologue
    .line 104
    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, v3}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 106
    .local v2, "startPt":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Coordinate;

    .line 107
    .local v1, "lastPt":Lorg/locationtech/jts/geom/Coordinate;
    const/4 v0, 0x0

    .line 108
    .local v0, "last2Pt":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 109
    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "last2Pt":Lorg/locationtech/jts/geom/Coordinate;
    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    .line 110
    .restart local v0    # "last2Pt":Lorg/locationtech/jts/geom/Coordinate;
    :cond_2
    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/Coordinate;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    iget-object v3, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->ptList:Ljava/util/ArrayList;

    sget-object v2, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->COORDINATE_ARRAY_TYPE:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/locationtech/jts/geom/Coordinate;

    move-object v0, v1

    check-cast v0, [Lorg/locationtech/jts/geom/Coordinate;

    .line 130
    .local v0, "coord":[Lorg/locationtech/jts/geom/Coordinate;
    return-object v0
.end method

.method public reverse()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public setMinimumVertexDistance(D)V
    .locals 1
    .param p1, "minimimVertexDistance"    # D

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->minimimVertexDistance:D

    .line 56
    return-void
.end method

.method public setPrecisionModel(Lorg/locationtech/jts/geom/PrecisionModel;)V
    .locals 0
    .param p1, "precisionModel"    # Lorg/locationtech/jts/geom/PrecisionModel;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->precisionModel:Lorg/locationtech/jts/geom/PrecisionModel;

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v0}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    .line 136
    .local v0, "fact":Lorg/locationtech/jts/geom/GeometryFactory;
    invoke-virtual {p0}, Lorg/locationtech/jts/operation/buffer/OffsetSegmentString;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v1

    .line 137
    .local v1, "line":Lorg/locationtech/jts/geom/LineString;
    invoke-virtual {v1}, Lorg/locationtech/jts/geom/LineString;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
