.class public Lorg/locationtech/jts/geom/CoordinateList;
.super Ljava/util/ArrayList;
.source "CoordinateList.java"


# static fields
.field private static final coordArrayType:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/locationtech/jts/geom/Coordinate;

    sput-object v0, Lorg/locationtech/jts/geom/CoordinateList;->coordArrayType:[Lorg/locationtech/jts/geom/Coordinate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/CoordinateList;->ensureCapacity(I)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/locationtech/jts/geom/CoordinateList;->add([Lorg/locationtech/jts/geom/Coordinate;Z)Z

    .line 52
    return-void
.end method

.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 1
    .param p1, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "allowRepeated"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/CoordinateList;->ensureCapacity(I)V

    .line 64
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/geom/CoordinateList;->add([Lorg/locationtech/jts/geom/Coordinate;Z)Z

    .line 65
    return-void
.end method


# virtual methods
.method public add(ILorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "coord"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "allowRepeated"    # Z

    .prologue
    .line 164
    if-nez p3, :cond_2

    .line 165
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v2

    .line 166
    .local v2, "size":I
    if-lez v2, :cond_2

    .line 167
    if-lez p1, :cond_1

    .line 168
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Lorg/locationtech/jts/geom/CoordinateList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/locationtech/jts/geom/Coordinate;

    .line 169
    .local v1, "prev":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v1, p2}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    .end local v1    # "prev":Lorg/locationtech/jts/geom/Coordinate;
    .end local v2    # "size":I
    :cond_0
    :goto_0
    return-void

    .line 171
    .restart local v2    # "size":I
    :cond_1
    if-ge p1, v2, :cond_2

    .line 172
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/CoordinateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    .line 173
    .local v0, "next":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v0, p2}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    .end local v0    # "next":Lorg/locationtech/jts/geom/Coordinate;
    .end local v2    # "size":I
    :cond_2
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public add(Lorg/locationtech/jts/geom/Coordinate;Z)V
    .locals 3
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "allowRepeated"    # Z

    .prologue
    .line 145
    if-nez p2, :cond_0

    .line 146
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 147
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/CoordinateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    .line 148
    .local v0, "last":Lorg/locationtech/jts/geom/Coordinate;
    invoke-virtual {v0, p1}, Lorg/locationtech/jts/geom/Coordinate;->equals2D(Lorg/locationtech/jts/geom/Coordinate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    .end local v0    # "last":Lorg/locationtech/jts/geom/Coordinate;
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;Z)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "allowRepeated"    # Z

    .prologue
    .line 132
    check-cast p1, Lorg/locationtech/jts/geom/Coordinate;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public add([Lorg/locationtech/jts/geom/Coordinate;Z)Z
    .locals 1
    .param p1, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "allowRepeated"    # Z

    .prologue
    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, p1, p2, v0}, Lorg/locationtech/jts/geom/CoordinateList;->add([Lorg/locationtech/jts/geom/Coordinate;ZZ)Z

    .line 121
    return v0
.end method

.method public add([Lorg/locationtech/jts/geom/Coordinate;ZII)Z
    .locals 3
    .param p1, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "allowRepeated"    # Z
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 80
    const/4 v1, 0x1

    .line 81
    .local v1, "inc":I
    if-le p3, p4, :cond_0

    const/4 v1, -0x1

    .line 83
    :cond_0
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-eq v0, p4, :cond_1

    .line 84
    aget-object v2, p1, v0

    invoke-virtual {p0, v2, p2}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 83
    add-int/2addr v0, v1

    goto :goto_0

    .line 86
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public add([Lorg/locationtech/jts/geom/Coordinate;ZZ)Z
    .locals 2
    .param p1, "coord"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "allowRepeated"    # Z
    .param p3, "direction"    # Z

    .prologue
    .line 98
    if-eqz p3, :cond_0

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 100
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_0
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 105
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 104
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 108
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public addAll(Ljava/util/Collection;Z)Z
    .locals 3
    .param p1, "coll"    # Ljava/util/Collection;
    .param p2, "allowRepeated"    # Z

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "isChanged":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0, v2, p2}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 190
    const/4 v1, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 219
    invoke-super {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/CoordinateList;

    .line 220
    .local v0, "clone":Lorg/locationtech/jts/geom/CoordinateList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 221
    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/CoordinateList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {v2}, Lorg/locationtech/jts/geom/Coordinate;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/locationtech/jts/geom/CoordinateList;->add(ILjava/lang/Object;)V

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return-object v0
.end method

.method public closeRing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/CoordinateList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 201
    new-instance v1, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0, v2}, Lorg/locationtech/jts/geom/CoordinateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v1, v0}, Lorg/locationtech/jts/geom/Coordinate;-><init>(Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-virtual {p0, v1, v2}, Lorg/locationtech/jts/geom/CoordinateList;->add(Lorg/locationtech/jts/geom/Coordinate;Z)V

    .line 202
    :cond_0
    return-void
.end method

.method public getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/CoordinateList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public toCoordinateArray()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lorg/locationtech/jts/geom/CoordinateList;->coordArrayType:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/CoordinateList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/locationtech/jts/geom/Coordinate;

    check-cast v0, [Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method
