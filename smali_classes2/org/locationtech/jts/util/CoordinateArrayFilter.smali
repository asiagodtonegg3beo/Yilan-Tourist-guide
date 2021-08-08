.class public Lorg/locationtech/jts/util/CoordinateArrayFilter;
.super Ljava/lang/Object;
.source "CoordinateArrayFilter.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateFilter;


# instance fields
.field n:I

.field pts:[Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/util/CoordinateArrayFilter;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/util/CoordinateArrayFilter;->n:I

    .line 37
    new-array v0, p1, [Lorg/locationtech/jts/geom/Coordinate;

    iput-object v0, p0, Lorg/locationtech/jts/util/CoordinateArrayFilter;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    .line 38
    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 3
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/locationtech/jts/util/CoordinateArrayFilter;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    iget v1, p0, Lorg/locationtech/jts/util/CoordinateArrayFilter;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/locationtech/jts/util/CoordinateArrayFilter;->n:I

    aput-object p1, v0, v1

    .line 51
    return-void
.end method

.method public getCoordinates()[Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/locationtech/jts/util/CoordinateArrayFilter;->pts:[Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method
