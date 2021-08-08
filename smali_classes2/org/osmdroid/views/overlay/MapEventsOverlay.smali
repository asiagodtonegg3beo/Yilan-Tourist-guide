.class public Lorg/osmdroid/views/overlay/MapEventsOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "MapEventsOverlay.java"


# instance fields
.field private mReceiver:Lorg/osmdroid/events/MapEventsReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/events/MapEventsReceiver;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "receiver"    # Lorg/osmdroid/events/MapEventsReceiver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/MapEventsOverlay;-><init>(Lorg/osmdroid/events/MapEventsReceiver;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/events/MapEventsReceiver;)V
    .locals 0
    .param p1, "receiver"    # Lorg/osmdroid/events/MapEventsReceiver;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/osmdroid/views/overlay/MapEventsOverlay;->mReceiver:Lorg/osmdroid/events/MapEventsReceiver;

    .line 35
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "osmv"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 39
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 48
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    .line 49
    .local v1, "proj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 51
    .local v0, "p":Lorg/osmdroid/util/GeoPoint;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MapEventsOverlay;->mReceiver:Lorg/osmdroid/events/MapEventsReceiver;

    invoke-interface {v2, v0}, Lorg/osmdroid/events/MapEventsReceiver;->longPressHelper(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v2

    return v2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 42
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    .line 43
    .local v1, "proj":Lorg/osmdroid/views/Projection;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    .line 44
    .local v0, "p":Lorg/osmdroid/util/GeoPoint;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MapEventsOverlay;->mReceiver:Lorg/osmdroid/events/MapEventsReceiver;

    invoke-interface {v2, v0}, Lorg/osmdroid/events/MapEventsReceiver;->singleTapConfirmedHelper(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v2

    return v2
.end method
