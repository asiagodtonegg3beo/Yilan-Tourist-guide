.class public abstract Lcom/google/appinventor/components/runtime/MapFeatureBase;
.super Ljava/lang/Object;
.source "MapFeatureBase.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private centroid:Lorg/osmdroid/util/GeoPoint;

.field protected container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

.field private description:Ljava/lang/String;

.field private final distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private distanceToPoint:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private draggable:Z

.field private geometry:Lorg/locationtech/jts/geom/Geometry;

.field private infobox:Z

.field protected map:Lcom/google/appinventor/components/runtime/Map;

.field private strokeColor:I

.field private strokeOpacity:F

.field private strokeWidth:I

.field private title:Ljava/lang/String;

.field private visible:Z


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V
    .locals 6
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
    const/high16 v5, -0x1000000

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .line 34
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    .line 35
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    .line 36
    iput v5, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeColor:I

    .line 37
    iput v4, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeOpacity:F

    .line 38
    iput v2, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeWidth:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->title:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->description:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->draggable:Z

    .line 42
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->infobox:Z

    .line 43
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->centroid:Lorg/osmdroid/util/GeoPoint;

    .line 45
    new-instance v0, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureBase;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->distanceToPoint:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 92
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->geometry:Lorg/locationtech/jts/geom/Geometry;

    .line 97
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .line 98
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    .line 99
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 100
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Description(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Draggable(Z)V

    .line 102
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->EnableInfobox(Z)V

    .line 103
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeColor(I)V

    .line 104
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeOpacity(F)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeWidth(I)V

    .line 106
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Title(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Visible(Z)V

    .line 108
    return-void
.end method


# virtual methods
.method public Centroid()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user clicked on the %type%."
    .end annotation

    .prologue
    .line 359
    const-string v0, "Click"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 361
    return-void
.end method

.method public Description()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The description displayed in the info window that appears when the user clicks on the %type%."
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->description:Ljava/lang/String;

    return-object v0
.end method

.method public Description(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 251
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->description:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 253
    return-void
.end method

.method public DistanceToFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Z)D
    .locals 4
    .param p1, "mapFeature"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;
    .param p2, "centroids"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Compute the distance, in meters, between two map features."
    .end annotation

    .prologue
    .line 348
    if-nez p1, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public DistanceToPoint(DDZ)D
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "centroid"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Compute the distance, in meters, between a %type% and a latitude, longitude point."
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->distanceToPoint:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public Drag()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user dragged the %type%."
    .end annotation

    .prologue
    .line 394
    const-string v0, "Drag"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 396
    return-void
.end method

.method public Draggable(Z)V
    .locals 1
    .param p1, "draggable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->draggable:Z

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureDraggable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 214
    return-void
.end method

.method public Draggable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The Draggable property is used to set whether or not the user can drag the %type% by long-pressing and then dragging the %type% to a new location."
    .end annotation

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->draggable:Z

    return v0
.end method

.method public EnableInfobox(Z)V
    .locals 1
    .param p1, "enable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->infobox:Z

    .line 273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 274
    return-void
.end method

.method public EnableInfobox()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable or disable the infobox window display when the user taps the %type%."
    .end annotation

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->infobox:Z

    return v0
.end method

.method public HideInfobox()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the infobox if it is shown. If the infobox is not visible this function has no effect."
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->hideInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 305
    return-void
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user long-pressed on the %type%. This event will only trigger if Draggable is false."
    .end annotation

    .prologue
    .line 372
    const-string v0, "LongClick"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 374
    return-void
.end method

.method public ShowInfobox()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the infobox for the %type%. This will show the infobox even if EnableInfobox is set to false."
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->showInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 295
    return-void
.end method

.method public StartDrag()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user started a drag operation."
    .end annotation

    .prologue
    .line 384
    const-string v0, "StartDrag"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 386
    return-void
.end method

.method public StopDrag()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user stopped a drag operation."
    .end annotation

    .prologue
    .line 404
    const-string v0, "StopDrag"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 406
    return-void
.end method

.method public StrokeColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The paint color used to outline the %type%."
    .end annotation

    .prologue
    .line 164
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeColor:I

    return v0
.end method

.method public StrokeColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 152
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeColor:I

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 154
    return-void
.end method

.method public StrokeOpacity()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The opacity of the stroke used to outline the map feature."
    .end annotation

    .prologue
    .line 185
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeOpacity:F

    return v0
.end method

.method public StrokeOpacity(F)V
    .locals 2
    .param p1, "opacity"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 172
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeOpacity:F

    .line 173
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeColor:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeColor:I

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 175
    return-void
.end method

.method public StrokeWidth()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The width of the stroke used to outline the %type%."
    .end annotation

    .prologue
    .line 204
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeWidth:I

    return v0
.end method

.method public StrokeWidth(I)V
    .locals 1
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 193
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->strokeWidth:I

    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 195
    return-void
.end method

.method public Title()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The title displayed in the info window that appears when the user clicks on the %type%."
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->title:Ljava/lang/String;

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->title:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 233
    return-void
.end method

.method public Visible(Z)V
    .locals 1
    .param p1, "visibility"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    if-ne v0, p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 127
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    .line 128
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 133
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_1
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the %type% should be visible on the screen. Value is true if the component is showing and false if hidden."
    .end annotation

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    return v0
.end method

.method protected final declared-synchronized clearGeometry()V
    .locals 1

    .prologue
    .line 431
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->centroid:Lorg/osmdroid/util/GeoPoint;

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->geometry:Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p0

    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract computeGeometry()Lorg/locationtech/jts/geom/Geometry;
.end method

.method public final declared-synchronized getCentroid()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->centroid:Lorg/osmdroid/util/GeoPoint;

    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->centroid:Lorg/osmdroid/util/GeoPoint;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->centroid:Lorg/osmdroid/util/GeoPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->geometry:Lorg/locationtech/jts/geom/Geometry;

    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->computeGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->geometry:Lorg/locationtech/jts/geom/Geometry;

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->geometry:Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeFromMap()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 117
    return-void
.end method

.method public setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .prologue
    .line 111
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    .line 112
    return-void
.end method
