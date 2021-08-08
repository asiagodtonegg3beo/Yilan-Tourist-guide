.class public abstract Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;
.super Lcom/google/appinventor/components/runtime/MapFeatureBase;
.source "MapFeatureBaseWithFill.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private fillColor:I

.field private fillOpacity:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V
    .locals 2
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "distanceComputation":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;, "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<Ljava/lang/Double;>;"
    const/high16 v1, -0x10000

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 21
    iput v1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->fillColor:I

    .line 22
    iput v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->fillOpacity:F

    .line 27
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->FillColor(I)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->FillOpacity(F)V

    .line 29
    return-void
.end method


# virtual methods
.method public FillColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The paint color used to fill in the %type%."
    .end annotation

    .prologue
    .line 48
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->fillColor:I

    return v0
.end method

.method public FillColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF0000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 36
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->fillColor:I

    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureFill(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 38
    return-void
.end method

.method public FillOpacity()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The opacity of the interior of the map feature."
    .end annotation

    .prologue
    .line 69
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->fillOpacity:F

    return v0
.end method

.method public FillOpacity(F)V
    .locals 2
    .param p1, "opacity"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 56
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->fillOpacity:F

    .line 57
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->fillColor:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->fillColor:I

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureFill(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 59
    return-void
.end method
