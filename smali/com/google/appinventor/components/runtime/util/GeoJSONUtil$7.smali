.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$7;
.super Ljava/lang/Object;
.source "GeoJSONUtil.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$PropertyApplication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 150
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    if-eqz v0, :cond_0

    .line 151
    check-cast p1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;

    .end local p1    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseIntegerOrString(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height(I)V

    .line 153
    :cond_0
    return-void
.end method
