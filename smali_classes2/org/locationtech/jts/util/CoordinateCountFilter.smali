.class public Lorg/locationtech/jts/util/CoordinateCountFilter;
.super Ljava/lang/Object;
.source "CoordinateCountFilter.java"

# interfaces
.implements Lorg/locationtech/jts/geom/CoordinateFilter;


# instance fields
.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lorg/locationtech/jts/util/CoordinateCountFilter;->n:I

    .line 28
    return-void
.end method


# virtual methods
.method public filter(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "coord"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 40
    iget v0, p0, Lorg/locationtech/jts/util/CoordinateCountFilter;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/locationtech/jts/util/CoordinateCountFilter;->n:I

    .line 41
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/locationtech/jts/util/CoordinateCountFilter;->n:I

    return v0
.end method
