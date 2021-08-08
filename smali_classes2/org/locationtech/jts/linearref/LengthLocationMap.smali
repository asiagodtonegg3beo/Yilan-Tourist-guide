.class public Lorg/locationtech/jts/linearref/LengthLocationMap;
.super Ljava/lang/Object;
.source "LengthLocationMap.java"


# instance fields
.field private linearGeom:Lorg/locationtech/jts/geom/Geometry;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 0
    .param p1, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/locationtech/jts/linearref/LengthLocationMap;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 80
    return-void
.end method

.method public static getLength(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/linearref/LinearLocation;)D
    .locals 4
    .param p0, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "loc"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 71
    new-instance v0, Lorg/locationtech/jts/linearref/LengthLocationMap;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/linearref/LengthLocationMap;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 72
    .local v0, "locater":Lorg/locationtech/jts/linearref/LengthLocationMap;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/linearref/LengthLocationMap;->getLength(Lorg/locationtech/jts/linearref/LinearLocation;)D

    move-result-wide v2

    return-wide v2
.end method

.method public static getLocation(Lorg/locationtech/jts/geom/Geometry;D)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 3
    .param p0, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "length"    # D

    .prologue
    .line 40
    new-instance v0, Lorg/locationtech/jts/linearref/LengthLocationMap;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/linearref/LengthLocationMap;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 41
    .local v0, "locater":Lorg/locationtech/jts/linearref/LengthLocationMap;
    invoke-virtual {v0, p1, p2}, Lorg/locationtech/jts/linearref/LengthLocationMap;->getLocation(D)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v1

    return-object v1
.end method

.method public static getLocation(Lorg/locationtech/jts/geom/Geometry;DZ)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 3
    .param p0, "linearGeom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "length"    # D
    .param p3, "resolveLower"    # Z

    .prologue
    .line 57
    new-instance v0, Lorg/locationtech/jts/linearref/LengthLocationMap;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/linearref/LengthLocationMap;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 58
    .local v0, "locater":Lorg/locationtech/jts/linearref/LengthLocationMap;
    invoke-virtual {v0, p1, p2, p3}, Lorg/locationtech/jts/linearref/LengthLocationMap;->getLocation(DZ)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v1

    return-object v1
.end method

.method private getLocationForward(D)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 15
    .param p1, "length"    # D

    .prologue
    .line 124
    const-wide/16 v12, 0x0

    cmpg-double v7, p1, v12

    if-gtz v7, :cond_0

    .line 125
    new-instance v7, Lorg/locationtech/jts/linearref/LinearLocation;

    invoke-direct {v7}, Lorg/locationtech/jts/linearref/LinearLocation;-><init>()V

    .line 164
    :goto_0
    return-object v7

    .line 127
    :cond_0
    const-wide/16 v10, 0x0

    .line 129
    .local v10, "totalLength":D
    new-instance v1, Lorg/locationtech/jts/linearref/LinearIterator;

    iget-object v7, p0, Lorg/locationtech/jts/linearref/LengthLocationMap;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {v1, v7}, Lorg/locationtech/jts/linearref/LinearIterator;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 130
    .local v1, "it":Lorg/locationtech/jts/linearref/LinearIterator;
    :goto_1
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 140
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->isEndOfLine()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 141
    cmpl-double v7, v10, p1

    if-nez v7, :cond_3

    .line 142
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->getComponentIndex()I

    move-result v0

    .line 143
    .local v0, "compIndex":I
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->getVertexIndex()I

    move-result v6

    .line 144
    .local v6, "segIndex":I
    new-instance v7, Lorg/locationtech/jts/linearref/LinearLocation;

    const-wide/16 v12, 0x0

    invoke-direct {v7, v0, v6, v12, v13}, Lorg/locationtech/jts/linearref/LinearLocation;-><init>(IID)V

    goto :goto_0

    .line 148
    .end local v0    # "compIndex":I
    .end local v6    # "segIndex":I
    :cond_1
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->getSegmentStart()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    .line 149
    .local v4, "p0":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->getSegmentEnd()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v5

    .line 150
    .local v5, "p1":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v5, v4}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v8

    .line 152
    .local v8, "segLen":D
    add-double v12, v10, v8

    cmpl-double v7, v12, p1

    if-lez v7, :cond_2

    .line 153
    sub-double v12, p1, v10

    div-double v2, v12, v8

    .line 154
    .local v2, "frac":D
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->getComponentIndex()I

    move-result v0

    .line 155
    .restart local v0    # "compIndex":I
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->getVertexIndex()I

    move-result v6

    .line 156
    .restart local v6    # "segIndex":I
    new-instance v7, Lorg/locationtech/jts/linearref/LinearLocation;

    invoke-direct {v7, v0, v6, v2, v3}, Lorg/locationtech/jts/linearref/LinearLocation;-><init>(IID)V

    goto :goto_0

    .line 158
    .end local v0    # "compIndex":I
    .end local v2    # "frac":D
    .end local v6    # "segIndex":I
    :cond_2
    add-double/2addr v10, v8

    .line 161
    .end local v4    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v5    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .end local v8    # "segLen":D
    :cond_3
    invoke-virtual {v1}, Lorg/locationtech/jts/linearref/LinearIterator;->next()V

    goto :goto_1

    .line 164
    :cond_4
    iget-object v7, p0, Lorg/locationtech/jts/linearref/LengthLocationMap;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v7}, Lorg/locationtech/jts/linearref/LinearLocation;->getEndLocation(Lorg/locationtech/jts/geom/Geometry;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v7

    goto :goto_0
.end method

.method private resolveHigher(Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 6
    .param p1, "loc"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    const-wide/16 v4, 0x0

    .line 169
    iget-object v1, p0, Lorg/locationtech/jts/linearref/LengthLocationMap;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {p1, v1}, Lorg/locationtech/jts/linearref/LinearLocation;->isEndpoint(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    .end local p1    # "loc":Lorg/locationtech/jts/linearref/LinearLocation;
    :cond_0
    :goto_0
    return-object p1

    .line 171
    .restart local p1    # "loc":Lorg/locationtech/jts/linearref/LinearLocation;
    :cond_1
    invoke-virtual {p1}, Lorg/locationtech/jts/linearref/LinearLocation;->getComponentIndex()I

    move-result v0

    .line 173
    .local v0, "compIndex":I
    iget-object v1, p0, Lorg/locationtech/jts/linearref/LengthLocationMap;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 176
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 177
    iget-object v1, p0, Lorg/locationtech/jts/linearref/LengthLocationMap;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/locationtech/jts/linearref/LengthLocationMap;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    .line 178
    invoke-virtual {v1, v0}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v1

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/Geometry;->getLength()D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_2

    .line 180
    :cond_3
    new-instance p1, Lorg/locationtech/jts/linearref/LinearLocation;

    .end local p1    # "loc":Lorg/locationtech/jts/linearref/LinearLocation;
    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v4, v5}, Lorg/locationtech/jts/linearref/LinearLocation;-><init>(IID)V

    goto :goto_0
.end method


# virtual methods
.method public getLength(Lorg/locationtech/jts/linearref/LinearLocation;)D
    .locals 10
    .param p1, "loc"    # Lorg/locationtech/jts/linearref/LinearLocation;

    .prologue
    .line 185
    const-wide/16 v6, 0x0

    .line 187
    .local v6, "totalLength":D
    new-instance v0, Lorg/locationtech/jts/linearref/LinearIterator;

    iget-object v3, p0, Lorg/locationtech/jts/linearref/LengthLocationMap;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-direct {v0, v3}, Lorg/locationtech/jts/linearref/LinearIterator;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    .line 188
    .local v0, "it":Lorg/locationtech/jts/linearref/LinearIterator;
    :goto_0
    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearIterator;->isEndOfLine()Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearIterator;->getSegmentStart()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    .line 191
    .local v1, "p0":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearIterator;->getSegmentEnd()Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    .line 192
    .local v2, "p1":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v2, v1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v4

    .line 194
    .local v4, "segLen":D
    invoke-virtual {p1}, Lorg/locationtech/jts/linearref/LinearLocation;->getComponentIndex()I

    move-result v3

    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearIterator;->getComponentIndex()I

    move-result v8

    if-ne v3, v8, :cond_1

    .line 195
    invoke-virtual {p1}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegmentIndex()I

    move-result v3

    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearIterator;->getVertexIndex()I

    move-result v8

    if-ne v3, v8, :cond_1

    .line 196
    invoke-virtual {p1}, Lorg/locationtech/jts/linearref/LinearLocation;->getSegmentFraction()D

    move-result-wide v8

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    .line 202
    .end local v1    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v2    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .end local v4    # "segLen":D
    .end local v6    # "totalLength":D
    :cond_0
    return-wide v6

    .line 198
    .restart local v1    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    .restart local v2    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .restart local v4    # "segLen":D
    .restart local v6    # "totalLength":D
    :cond_1
    add-double/2addr v6, v4

    .line 200
    .end local v1    # "p0":Lorg/locationtech/jts/geom/Coordinate;
    .end local v2    # "p1":Lorg/locationtech/jts/geom/Coordinate;
    .end local v4    # "segLen":D
    :cond_2
    invoke-virtual {v0}, Lorg/locationtech/jts/linearref/LinearIterator;->next()V

    goto :goto_0
.end method

.method public getLocation(D)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 1
    .param p1, "length"    # D

    .prologue
    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/locationtech/jts/linearref/LengthLocationMap;->getLocation(DZ)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(DZ)Lorg/locationtech/jts/linearref/LinearLocation;
    .locals 9
    .param p1, "length"    # D
    .param p3, "resolveLower"    # Z

    .prologue
    .line 108
    move-wide v0, p1

    .line 111
    .local v0, "forwardLength":D
    const-wide/16 v6, 0x0

    cmpg-double v5, p1, v6

    if-gez v5, :cond_0

    .line 112
    iget-object v5, p0, Lorg/locationtech/jts/linearref/LengthLocationMap;->linearGeom:Lorg/locationtech/jts/geom/Geometry;

    invoke-virtual {v5}, Lorg/locationtech/jts/geom/Geometry;->getLength()D

    move-result-wide v2

    .line 113
    .local v2, "lineLen":D
    add-double v0, v2, p1

    .line 115
    .end local v2    # "lineLen":D
    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/locationtech/jts/linearref/LengthLocationMap;->getLocationForward(D)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v4

    .line 116
    .local v4, "loc":Lorg/locationtech/jts/linearref/LinearLocation;
    if-eqz p3, :cond_1

    .line 119
    .end local v4    # "loc":Lorg/locationtech/jts/linearref/LinearLocation;
    :goto_0
    return-object v4

    .restart local v4    # "loc":Lorg/locationtech/jts/linearref/LinearLocation;
    :cond_1
    invoke-direct {p0, v4}, Lorg/locationtech/jts/linearref/LengthLocationMap;->resolveHigher(Lorg/locationtech/jts/linearref/LinearLocation;)Lorg/locationtech/jts/linearref/LinearLocation;

    move-result-object v4

    goto :goto_0
.end method
