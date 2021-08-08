.class public Lorg/locationtech/jts/geomgraph/Label;
.super Ljava/lang/Object;
.source "Label.java"


# instance fields
.field elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "onLoc"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geomgraph/TopologyLocation;

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    .line 63
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    const/4 v1, 0x0

    new-instance v2, Lorg/locationtech/jts/geomgraph/TopologyLocation;

    invoke-direct {v2, p1}, Lorg/locationtech/jts/geomgraph/TopologyLocation;-><init>(I)V

    aput-object v2, v0, v1

    .line 64
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    const/4 v1, 0x1

    new-instance v2, Lorg/locationtech/jts/geomgraph/TopologyLocation;

    invoke-direct {v2, p1}, Lorg/locationtech/jts/geomgraph/TopologyLocation;-><init>(I)V

    aput-object v2, v0, v1

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "geomIndex"    # I
    .param p2, "onLoc"    # I

    .prologue
    const/4 v3, -0x1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geomgraph/TopologyLocation;

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    .line 72
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    const/4 v1, 0x0

    new-instance v2, Lorg/locationtech/jts/geomgraph/TopologyLocation;

    invoke-direct {v2, v3}, Lorg/locationtech/jts/geomgraph/TopologyLocation;-><init>(I)V

    aput-object v2, v0, v1

    .line 73
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    const/4 v1, 0x1

    new-instance v2, Lorg/locationtech/jts/geomgraph/TopologyLocation;

    invoke-direct {v2, v3}, Lorg/locationtech/jts/geomgraph/TopologyLocation;-><init>(I)V

    aput-object v2, v0, v1

    .line 74
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->setLocation(I)V

    .line 75
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "onLoc"    # I
    .param p2, "leftLoc"    # I
    .param p3, "rightLoc"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geomgraph/TopologyLocation;

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    .line 82
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    const/4 v1, 0x0

    new-instance v2, Lorg/locationtech/jts/geomgraph/TopologyLocation;

    invoke-direct {v2, p1, p2, p3}, Lorg/locationtech/jts/geomgraph/TopologyLocation;-><init>(III)V

    aput-object v2, v0, v1

    .line 83
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    const/4 v1, 0x1

    new-instance v2, Lorg/locationtech/jts/geomgraph/TopologyLocation;

    invoke-direct {v2, p1, p2, p3}, Lorg/locationtech/jts/geomgraph/TopologyLocation;-><init>(III)V

    aput-object v2, v0, v1

    .line 84
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "geomIndex"    # I
    .param p2, "onLoc"    # I
    .param p3, "leftLoc"    # I
    .param p4, "rightLoc"    # I

    .prologue
    const/4 v3, -0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geomgraph/TopologyLocation;

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    .line 91
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    const/4 v1, 0x0

    new-instance v2, Lorg/locationtech/jts/geomgraph/TopologyLocation;

    invoke-direct {v2, v3, v3, v3}, Lorg/locationtech/jts/geomgraph/TopologyLocation;-><init>(III)V

    aput-object v2, v0, v1

    .line 92
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    const/4 v1, 0x1

    new-instance v2, Lorg/locationtech/jts/geomgraph/TopologyLocation;

    invoke-direct {v2, v3, v3, v3}, Lorg/locationtech/jts/geomgraph/TopologyLocation;-><init>(III)V

    aput-object v2, v0, v1

    .line 93
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->setLocations(III)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geomgraph/Label;)V
    .locals 5
    .param p1, "lbl"    # Lorg/locationtech/jts/geomgraph/Label;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/locationtech/jts/geomgraph/TopologyLocation;

    iput-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    .line 100
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    new-instance v1, Lorg/locationtech/jts/geomgraph/TopologyLocation;

    iget-object v2, p1, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;-><init>(Lorg/locationtech/jts/geomgraph/TopologyLocation;)V

    aput-object v1, v0, v3

    .line 101
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    new-instance v1, Lorg/locationtech/jts/geomgraph/TopologyLocation;

    iget-object v2, p1, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v2, v2, v4

    invoke-direct {v1, v2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;-><init>(Lorg/locationtech/jts/geomgraph/TopologyLocation;)V

    aput-object v1, v0, v4

    .line 102
    return-void
.end method

.method public static toLineLabel(Lorg/locationtech/jts/geomgraph/Label;)Lorg/locationtech/jts/geomgraph/Label;
    .locals 3
    .param p0, "label"    # Lorg/locationtech/jts/geomgraph/Label;

    .prologue
    .line 48
    new-instance v1, Lorg/locationtech/jts/geomgraph/Label;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lorg/locationtech/jts/geomgraph/Label;-><init>(I)V

    .line 49
    .local v1, "lineLabel":Lorg/locationtech/jts/geomgraph/Label;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 50
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geomgraph/Label;->getLocation(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/locationtech/jts/geomgraph/Label;->setLocation(II)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-object v1
.end method


# virtual methods
.method public allPositionsEqual(II)Z
    .locals 1
    .param p1, "geomIndex"    # I
    .param p2, "loc"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->allPositionsEqual(I)Z

    move-result v0

    return v0
.end method

.method public flip()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->flip()V

    .line 107
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->flip()V

    .line 108
    return-void
.end method

.method public getGeometryCount()I
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "count":I
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 152
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->isNull()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 153
    :cond_1
    return v0
.end method

.method public getLocation(I)I
    .locals 2
    .param p1, "geomIndex"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->get(I)I

    move-result v0

    return v0
.end method

.method public getLocation(II)I
    .locals 1
    .param p1, "geomIndex"    # I
    .param p2, "posIndex"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->get(I)I

    move-result v0

    return v0
.end method

.method public isAnyNull(I)Z
    .locals 1
    .param p1, "geomIndex"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->isAnyNull()Z

    move-result v0

    return v0
.end method

.method public isArea()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 158
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->isArea()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->isArea()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public isArea(I)Z
    .locals 1
    .param p1, "geomIndex"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->isArea()Z

    move-result v0

    return v0
.end method

.method public isEqualOnSide(Lorg/locationtech/jts/geomgraph/Label;I)Z
    .locals 4
    .param p1, "lbl"    # Lorg/locationtech/jts/geomgraph/Label;
    .param p2, "side"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v3, v3, v1

    .line 173
    invoke-virtual {v2, v3, p2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->isEqualOnSide(Lorg/locationtech/jts/geomgraph/TopologyLocation;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v3, v3, v0

    .line 174
    invoke-virtual {v2, v3, p2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->isEqualOnSide(Lorg/locationtech/jts/geomgraph/TopologyLocation;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 174
    goto :goto_0
.end method

.method public isLine(I)Z
    .locals 1
    .param p1, "geomIndex"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->isLine()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "geomIndex"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->isNull()Z

    move-result v0

    return v0
.end method

.method public merge(Lorg/locationtech/jts/geomgraph/Label;)V
    .locals 4
    .param p1, "lbl"    # Lorg/locationtech/jts/geomgraph/Label;

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 140
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p1, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    new-instance v2, Lorg/locationtech/jts/geomgraph/TopologyLocation;

    iget-object v3, p1, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lorg/locationtech/jts/geomgraph/TopologyLocation;-><init>(Lorg/locationtech/jts/geomgraph/TopologyLocation;)V

    aput-object v2, v1, v0

    .line 139
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v1, v1, v0

    iget-object v2, p1, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->merge(Lorg/locationtech/jts/geomgraph/TopologyLocation;)V

    goto :goto_1

    .line 147
    :cond_1
    return-void
.end method

.method public setAllLocations(II)V
    .locals 1
    .param p1, "geomIndex"    # I
    .param p2, "location"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->setAllLocations(I)V

    .line 123
    return-void
.end method

.method public setAllLocationsIfNull(I)V
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/locationtech/jts/geomgraph/Label;->setAllLocationsIfNull(II)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/locationtech/jts/geomgraph/Label;->setAllLocationsIfNull(II)V

    .line 132
    return-void
.end method

.method public setAllLocationsIfNull(II)V
    .locals 1
    .param p1, "geomIndex"    # I
    .param p2, "location"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->setAllLocationsIfNull(I)V

    .line 127
    return-void
.end method

.method public setLocation(II)V
    .locals 2
    .param p1, "geomIndex"    # I
    .param p2, "location"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->setLocation(II)V

    .line 119
    return-void
.end method

.method public setLocation(III)V
    .locals 1
    .param p1, "geomIndex"    # I
    .param p2, "posIndex"    # I
    .param p3, "location"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->setLocation(II)V

    .line 115
    return-void
.end method

.method public toLine(I)V
    .locals 4
    .param p1, "geomIndex"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->isArea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    new-instance v1, Lorg/locationtech/jts/geomgraph/TopologyLocation;

    iget-object v2, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v2, v2, p1

    iget-object v2, v2, Lorg/locationtech/jts/geomgraph/TopologyLocation;->location:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-direct {v1, v2}, Lorg/locationtech/jts/geomgraph/TopologyLocation;-><init>(I)V

    aput-object v1, v0, p1

    .line 187
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "A:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    .line 196
    const-string v1, " B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    iget-object v1, p0, Lorg/locationtech/jts/geomgraph/Label;->elt:[Lorg/locationtech/jts/geomgraph/TopologyLocation;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/locationtech/jts/geomgraph/TopologyLocation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
