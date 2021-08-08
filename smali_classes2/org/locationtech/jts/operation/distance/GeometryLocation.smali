.class public Lorg/locationtech/jts/operation/distance/GeometryLocation;
.super Ljava/lang/Object;
.source "GeometryLocation.java"


# static fields
.field public static final INSIDE_AREA:I = -0x1


# instance fields
.field private component:Lorg/locationtech/jts/geom/Geometry;

.field private pt:Lorg/locationtech/jts/geom/Coordinate;

.field private segIndex:I


# direct methods
.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "component"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "segIndex"    # I
    .param p3, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/GeometryLocation;->component:Lorg/locationtech/jts/geom/Geometry;

    .line 41
    iput-object v0, p0, Lorg/locationtech/jts/operation/distance/GeometryLocation;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 54
    iput-object p1, p0, Lorg/locationtech/jts/operation/distance/GeometryLocation;->component:Lorg/locationtech/jts/geom/Geometry;

    .line 55
    iput p2, p0, Lorg/locationtech/jts/operation/distance/GeometryLocation;->segIndex:I

    .line 56
    iput-object p3, p0, Lorg/locationtech/jts/operation/distance/GeometryLocation;->pt:Lorg/locationtech/jts/geom/Coordinate;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;)V
    .locals 1
    .param p1, "component"    # Lorg/locationtech/jts/geom/Geometry;
    .param p2, "pt"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 67
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/locationtech/jts/operation/distance/GeometryLocation;-><init>(Lorg/locationtech/jts/geom/Geometry;ILorg/locationtech/jts/geom/Coordinate;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getCoordinate()Lorg/locationtech/jts/geom/Coordinate;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/GeometryLocation;->pt:Lorg/locationtech/jts/geom/Coordinate;

    return-object v0
.end method

.method public getGeometryComponent()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/locationtech/jts/operation/distance/GeometryLocation;->component:Lorg/locationtech/jts/geom/Geometry;

    return-object v0
.end method

.method public getSegmentIndex()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/locationtech/jts/operation/distance/GeometryLocation;->segIndex:I

    return v0
.end method

.method public isInsideArea()Z
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lorg/locationtech/jts/operation/distance/GeometryLocation;->segIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
