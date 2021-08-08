.class public Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;
.super Ljava/lang/Object;
.source "UniqueCoordinateArrayFilter.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateFilter;


# instance fields
.field list:Ljava/util/ArrayList;

.field treeSet:Ljava/util/TreeSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;->treeSet:Ljava/util/TreeSet;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;->list:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public static filterCoordinates([Lorg/locationtech/jts/geom/Coordinate;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 3
    .param p0, "coords"    # [Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 40
    new-instance v0, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;

    invoke-direct {v0}, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;-><init>()V

    .line 41
    .local v0, "filter":Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 42
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;->filter(Lorg/locationtech/jts/geom/Coordinate;)V

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;->getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;->treeSet:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;->treeSet:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    return-void
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lorg/locationtech/jts/geom/Coordinate;

    .line 59
    .local v0, "coordinates":[Lorg/locationtech/jts/geom/Coordinate;
    iget-object v1, p0, Lorg/locationtech/jts/util/UniqueCoordinateArrayFilter;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/locationtech/jts/geom/Coordinate;

    check-cast v1, [Lorg/locationtech/jts/geom/Coordinate;

    return-object v1
.end method
