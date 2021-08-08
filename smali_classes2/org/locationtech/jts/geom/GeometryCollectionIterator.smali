.class public Lorg/locationtech/jts/geom/GeometryCollectionIterator;
.super Ljava/lang/Object;
.source "GeometryCollectionIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private atStart:Z

.field private index:I

.field private max:I

.field private parent:Lorg/locationtech/jts/geom/Geometry;

.field private subcollectionIterator:Lorg/locationtech/jts/geom/GeometryCollectionIterator;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;)V
    .locals 1
    .param p1, "parent"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->parent:Lorg/locationtech/jts/geom/Geometry;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->atStart:Z

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->index:I

    .line 68
    invoke-virtual {p1}, Lorg/locationtech/jts/geom/Geometry;->getNumGeometries()I

    move-result v0

    iput v0, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->max:I

    .line 69
    return-void
.end method

.method private static isAtomic(Lorg/locationtech/jts/geom/Geometry;)Z
    .locals 1
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;

    .prologue
    .line 127
    instance-of v0, p0, Lorg/locationtech/jts/geom/GeometryCollection;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 77
    iget-boolean v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->atStart:Z

    if-eqz v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->subcollectionIterator:Lorg/locationtech/jts/geom/GeometryCollectionIterator;

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->subcollectionIterator:Lorg/locationtech/jts/geom/GeometryCollectionIterator;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->subcollectionIterator:Lorg/locationtech/jts/geom/GeometryCollectionIterator;

    .line 86
    :cond_2
    iget v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->index:I

    iget v2, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->max:I

    if-lt v1, v2, :cond_0

    .line 87
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 99
    iget-boolean v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->atStart:Z

    if-eqz v1, :cond_2

    .line 100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->atStart:Z

    .line 101
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->parent:Lorg/locationtech/jts/geom/Geometry;

    invoke-static {v1}, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->isAtomic(Lorg/locationtech/jts/geom/Geometry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->index:I

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->parent:Lorg/locationtech/jts/geom/Geometry;

    .line 122
    :cond_1
    :goto_0
    return-object v0

    .line 105
    :cond_2
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->subcollectionIterator:Lorg/locationtech/jts/geom/GeometryCollectionIterator;

    if-eqz v1, :cond_4

    .line 106
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->subcollectionIterator:Lorg/locationtech/jts/geom/GeometryCollectionIterator;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->subcollectionIterator:Lorg/locationtech/jts/geom/GeometryCollectionIterator;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->subcollectionIterator:Lorg/locationtech/jts/geom/GeometryCollectionIterator;

    .line 113
    :cond_4
    iget v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->index:I

    iget v2, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->max:I

    if-lt v1, v2, :cond_5

    .line 114
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 116
    :cond_5
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->parent:Lorg/locationtech/jts/geom/Geometry;

    iget v2, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->index:I

    invoke-virtual {v1, v2}, Lorg/locationtech/jts/geom/Geometry;->getGeometryN(I)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 117
    .local v0, "obj":Lorg/locationtech/jts/geom/Geometry;
    instance-of v1, v0, Lorg/locationtech/jts/geom/GeometryCollection;

    if-eqz v1, :cond_1

    .line 118
    new-instance v1, Lorg/locationtech/jts/geom/GeometryCollectionIterator;

    check-cast v0, Lorg/locationtech/jts/geom/GeometryCollection;

    .end local v0    # "obj":Lorg/locationtech/jts/geom/Geometry;
    invoke-direct {v1, v0}, Lorg/locationtech/jts/geom/GeometryCollectionIterator;-><init>(Lorg/locationtech/jts/geom/Geometry;)V

    iput-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->subcollectionIterator:Lorg/locationtech/jts/geom/GeometryCollectionIterator;

    .line 120
    iget-object v1, p0, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->subcollectionIterator:Lorg/locationtech/jts/geom/GeometryCollectionIterator;

    invoke-virtual {v1}, Lorg/locationtech/jts/geom/GeometryCollectionIterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
