.class Lcom/google/appinventor/components/runtime/MapFeatureBase$1;
.super Ljava/lang/Object;
.source "MapFeatureBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MapFeatureBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/MapFeatureBase;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MapFeatureBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/MapFeatureBase;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;->this$0:Lcom/google/appinventor/components/runtime/MapFeatureBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2
    .param p1, "circle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    aget-object v0, p2, v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p2, v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2
    .param p1, "lineString"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    aget-object v0, p2, v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p2, v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2
    .param p1, "marker"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 48
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2
    .param p1, "polygon"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 62
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    aget-object v0, p2, v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p2, v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2
    .param p1, "rectangle"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 80
    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    aget-object v0, p2, v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p2, v1

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
