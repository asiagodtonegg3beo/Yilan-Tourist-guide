.class public Lorg/locationtech/jts/geomgraph/TopologyLocation;
.super Ljava/lang/Object;
.source "TopologyLocation.java"


# instance fields
.field location:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "on"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->init(I)V

    .line 66
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 67
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "on"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->init(I)V

    .line 59
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 60
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 61
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geomgraph/TopologyLocation;)V
    .locals 3
    .param p1, "gl"    # Lorg/locationtech/jts/geomgraph/TopologyLocation;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iget-object v1, p1, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v1, v1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->init(I)V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    iget-object v2, p1, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "location"    # [I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->init(I)V

    .line 49
    return-void
.end method

.method private init(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 78
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    .line 79
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->setAllLocations(I)V

    .line 80
    return-void
.end method


# virtual methods
.method public allPositionsEqual(I)Z
    .locals 2
    .param p1, "loc"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 152
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    const/4 v1, 0x0

    .line 154
    :goto_1
    return v1

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public flip()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 115
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v1, v1

    if-gt v1, v3, :cond_0

    .line 119
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v0, v1, v3

    .line 117
    .local v0, "temp":I
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v2, v2, v4

    aput v2, v1, v3

    .line 118
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aput v0, v1, v4

    goto :goto_0
.end method

.method public get(I)I
    .locals 1
    .param p1, "posIndex"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v0, v0, p1

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLocations()[I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    return-object v0
.end method

.method public isAnyNull()Z
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 104
    :goto_1
    return v1

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isArea()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 110
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqualOnSide(Lorg/locationtech/jts/geomgraph/TopologyLocation;I)Z
    .locals 2
    .param p1, "le"    # Lorg/locationtech/jts/geomgraph/TopologyLocation;
    .param p2, "locIndex"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v0, v0, p2

    iget-object v1, p1, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v1, v1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLine()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 111
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v1, v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull()Z
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 92
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 94
    :goto_1
    return v1

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public merge(Lorg/locationtech/jts/geomgraph/TopologyLocation;)V
    .locals 6
    .param p1, "gl"    # Lorg/locationtech/jts/geomgraph/TopologyLocation;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 164
    iget-object v2, p1, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v2, v2

    iget-object v3, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 165
    const/4 v2, 0x3

    new-array v1, v2, [I

    .line 166
    .local v1, "newLoc":[I
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v2, v2, v5

    aput v2, v1, v5

    .line 167
    const/4 v2, 0x1

    aput v4, v1, v2

    .line 168
    const/4 v2, 0x2

    aput v4, v1, v2

    .line 169
    iput-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    .line 171
    .end local v1    # "newLoc":[I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 172
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v2, v2, v0

    if-ne v2, v4, :cond_1

    iget-object v2, p1, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 173
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    iget-object v3, p1, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 171
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_2
    return-void
.end method

.method public setAllLocations(I)V
    .locals 2
    .param p1, "locValue"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 125
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aput p1, v1, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    return-void
.end method

.method public setAllLocationsIfNull(I)V
    .locals 3
    .param p1, "locValue"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aput p1, v1, v0

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_1
    return-void
.end method

.method public setLocation(I)V
    .locals 1
    .param p1, "locValue"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->setLocation(II)V

    .line 142
    return-void
.end method

.method public setLocation(II)V
    .locals 1
    .param p1, "locIndex"    # I
    .param p2, "locValue"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aput p2, v0, p1

    .line 138
    return-void
.end method

.method public setLocations(III)V
    .locals 2
    .param p1, "on"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 146
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 147
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 148
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 179
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 180
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v1, v1

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    aget v1, v1, v3

    invoke-static {v1}, Lorg/locationtech/jts/geom/Location;->toLocationSymbol(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 181
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Lorg/locationtech/jts/geom/Location;->toLocationSymbol(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    array-length v1, v1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Lorg/locationtech/jts/geom/Location;->toLocationSymbol(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 183
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
