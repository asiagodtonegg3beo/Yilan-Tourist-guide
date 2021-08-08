.class public Lorg/locationtech/jts/geom/CoordinateArrays$ForwardComparator;
.super Ljava/lang/Object;
.source "CoordinateArrays.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/geom/CoordinateArrays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForwardComparator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p1, [Lorg/locationtech/jts/geom/Coordinate;

    .end local p1    # "o1":Ljava/lang/Object;
    move-object v0, p1

    check-cast v0, [Lorg/locationtech/jts/geom/Coordinate;

    .line 99
    .local v0, "pts1":[Lorg/locationtech/jts/geom/Coordinate;
    check-cast p2, [Lorg/locationtech/jts/geom/Coordinate;

    .end local p2    # "o2":Ljava/lang/Object;
    move-object v1, p2

    check-cast v1, [Lorg/locationtech/jts/geom/Coordinate;

    .line 101
    .local v1, "pts2":[Lorg/locationtech/jts/geom/Coordinate;
    invoke-static {v0, v1}, Lorg/locationtech/jts/geom/CoordinateArrays;->compare([Lorg/locationtech/jts/geom/Coordinate;[Lorg/locationtech/jts/geom/Coordinate;)I

    move-result v2

    return v2
.end method
