.class public Lorg/locationtech/jts/geom/Coordinate$DimensionalComparator;
.super Ljava/lang/Object;
.source "Coordinate.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/geom/Coordinate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DimensionalComparator"
.end annotation


# instance fields
.field private dimensionsToTest:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/locationtech/jts/geom/Coordinate$DimensionalComparator;-><init>(I)V

    .line 381
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "dimensionsToTest"    # I

    .prologue
    const/4 v0, 0x2

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput v0, p0, Lorg/locationtech/jts/geom/Coordinate$DimensionalComparator;->dimensionsToTest:I

    .line 391
    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only 2 or 3 dimensions may be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_0
    iput p1, p0, Lorg/locationtech/jts/geom/Coordinate$DimensionalComparator;->dimensionsToTest:I

    .line 394
    return-void
.end method

.method public static compare(DD)I
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 361
    cmpg-double v3, p0, p2

    if-gez v3, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 362
    :cond_1
    cmpl-double v3, p0, p2

    if-lez v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 364
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 365
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 369
    :cond_3
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 370
    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 408
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    .local v0, "c1":Lorg/locationtech/jts/geom/Coordinate;
    move-object v1, p2

    .line 409
    check-cast v1, Lorg/locationtech/jts/geom/Coordinate;

    .line 411
    .local v1, "c2":Lorg/locationtech/jts/geom/Coordinate;
    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->x:D

    invoke-static {v6, v7, v8, v9}, Lorg/locationtech/jts/geom/Coordinate$DimensionalComparator;->compare(DD)I

    move-result v2

    .line 412
    .local v2, "compX":I
    if-eqz v2, :cond_0

    .line 420
    .end local v2    # "compX":I
    :goto_0
    return v2

    .line 414
    .restart local v2    # "compX":I
    :cond_0
    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->y:D

    invoke-static {v6, v7, v8, v9}, Lorg/locationtech/jts/geom/Coordinate$DimensionalComparator;->compare(DD)I

    move-result v3

    .line 415
    .local v3, "compY":I
    if-eqz v3, :cond_1

    move v2, v3

    goto :goto_0

    .line 417
    :cond_1
    iget v5, p0, Lorg/locationtech/jts/geom/Coordinate$DimensionalComparator;->dimensionsToTest:I

    const/4 v6, 0x2

    if-gt v5, v6, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 419
    :cond_2
    iget-wide v6, v0, Lorg/locationtech/jts/geom/Coordinate;->z:D

    iget-wide v8, v1, Lorg/locationtech/jts/geom/Coordinate;->z:D

    invoke-static {v6, v7, v8, v9}, Lorg/locationtech/jts/geom/Coordinate$DimensionalComparator;->compare(DD)I

    move-result v4

    .local v4, "compZ":I
    move v2, v4

    .line 420
    goto :goto_0
.end method
