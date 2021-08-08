.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$5;
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
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Ljava/lang/Object;)V
    .locals 1
    .param p1, "feature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 133
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    if-eqz v0, :cond_0

    .line 134
    check-cast p1, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;

    .end local p1    # "feature":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    :goto_0
    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor(I)V

    .line 137
    :cond_0
    return-void

    .line 135
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
