.class Lorg/locationtech/jts/algorithm/ConvexHull$RadialComparator;
.super Ljava/lang/Object;
.source "ConvexHull.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/algorithm/ConvexHull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RadialComparator"
.end annotation


# instance fields
.field private origin:Lorg/locationtech/jts/geom/Coordinate;


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 0
    .param p1, "origin"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iput-object p1, p0, Lorg/locationtech/jts/algorithm/ConvexHull$RadialComparator;->origin:Lorg/locationtech/jts/geom/Coordinate;

    .line 444
    return-void
.end method

.method private static polarCompare(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I
    .locals 20
    .param p0, "o"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "q"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 472
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    sub-double v2, v16, v18

    .line 473
    .local v2, "dxp":D
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    sub-double v6, v16, v18

    .line 474
    .local v6, "dyp":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->x:D

    move-wide/from16 v18, v0

    sub-double v4, v16, v18

    .line 475
    .local v4, "dxq":D
    move-object/from16 v0, p2

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/locationtech/jts/geom/Coordinate;->y:D

    move-wide/from16 v18, v0

    sub-double v8, v16, v18

    .line 491
    .local v8, "dyq":D
    invoke-static/range {p0 .. p2}, Lorg/locationtech/jts/algorithm/CGAlgorithms;->computeOrientation(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v14

    .line 493
    .local v14, "orient":I
    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    const/4 v15, 0x1

    .line 505
    :goto_0
    return v15

    .line 494
    :cond_0
    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    const/4 v15, -0x1

    goto :goto_0

    .line 497
    :cond_1
    mul-double v16, v2, v2

    mul-double v18, v6, v6

    add-double v10, v16, v18

    .line 498
    .local v10, "op":D
    mul-double v16, v4, v4

    mul-double v18, v8, v8

    add-double v12, v16, v18

    .line 499
    .local v12, "oq":D
    cmpg-double v15, v10, v12

    if-gez v15, :cond_2

    .line 500
    const/4 v15, -0x1

    goto :goto_0

    .line 502
    :cond_2
    cmpl-double v15, v10, v12

    if-lez v15, :cond_3

    .line 503
    const/4 v15, 0x1

    goto :goto_0

    .line 505
    :cond_3
    const/4 v15, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 447
    move-object v0, p1

    check-cast v0, Lorg/locationtech/jts/geom/Coordinate;

    .local v0, "p1":Lorg/locationtech/jts/geom/Coordinate;
    move-object v1, p2

    .line 448
    check-cast v1, Lorg/locationtech/jts/geom/Coordinate;

    .line 449
    .local v1, "p2":Lorg/locationtech/jts/geom/Coordinate;
    iget-object v2, p0, Lorg/locationtech/jts/algorithm/ConvexHull$RadialComparator;->origin:Lorg/locationtech/jts/geom/Coordinate;

    invoke-static {v2, v0, v1}, Lorg/locationtech/jts/algorithm/ConvexHull$RadialComparator;->polarCompare(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    return v2
.end method
