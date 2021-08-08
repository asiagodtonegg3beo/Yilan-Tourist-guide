.class public Lorg/locationtech/jts/noding/BasicSegmentString;
.super Ljava/lang/Object;
.source "BasicSegmentString.java"

# interfaces
.implements Lorg/locationtech/jts/noding/SegmentString;


# instance fields
.field private data:Ljava/lang/Object;

.field private pts:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>([Lorg/locationtech/jts/geom/Coordinate;Ljava/lang/Object;)V
    .locals 0
    .param p1, "pts"    # [Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/locationtech/jts/noding/BasicSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 46
    iput-object p2, p0, Lorg/locationtech/jts/noding/BasicSegmentString;->data:Ljava/lang/Object;

    .line 47
    return-void
.end method


# virtual methods
.method public getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lorg/locationtech/jts/noding/BasicSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/locationtech/jts/noding/BasicSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/locationtech/jts/noding/BasicSegmentString;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getSegmentOctant(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lorg/locationtech/jts/noding/BasicSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/noding/BasicSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/noding/BasicSegmentString;->getCoordinate(I)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/locationtech/jts/noding/Octant;->octant(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lorg/locationtech/jts/noding/BasicSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/locationtech/jts/noding/BasicSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget-object v2, p0, Lorg/locationtech/jts/noding/BasicSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

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
    .line 61
    iput-object p1, p0, Lorg/locationtech/jts/noding/BasicSegmentString;->data:Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/locationtech/jts/noding/BasicSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;

    iget-object v1, p0, Lorg/locationtech/jts/noding/BasicSegmentString;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v0, v1}, Lorg/locationtech/jts/geom/impl/CoordinateArraySequence;-><init>([Lorg/locationtech/jts/geom/Coordinate;)V

    invoke-static {v0}, Lorg/locationtech/jts/io/WKTWriter;->toLineString(Lorg/locationtech/jts/geom/CoordinateSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
