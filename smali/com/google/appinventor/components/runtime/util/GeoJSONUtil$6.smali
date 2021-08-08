.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$6;
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
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 142
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    if-eqz v0, :cond_0

    .line 143
    check-cast p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    .end local p1    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseFloatOrString(Ljava/lang/Object;)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillOpacity(F)V

    .line 145
    :cond_0
    return-void
.end method
