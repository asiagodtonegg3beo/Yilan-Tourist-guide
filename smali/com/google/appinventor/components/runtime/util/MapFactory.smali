.class public final Lcom/google/appinventor/components/runtime/util/MapFactory;
.super Ljava/lang/Object;
.source "MapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureType;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;,
        Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newMap(Lcom/google/appinventor/components/runtime/Form;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;
    .locals 2
    .param p0, "form"    # Lcom/google/appinventor/components/runtime/Form;

    .prologue
    .line 1598
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1599
    new-instance v0, Lcom/google/appinventor/components/runtime/util/DummyMapController;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/DummyMapController;-><init>()V

    .line 1601
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    goto :goto_0
.end method
