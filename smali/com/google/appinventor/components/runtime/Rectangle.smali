.class public Lcom/google/appinventor/components/runtime/Rectangle;
.super Lcom/google/appinventor/components/runtime/PolygonBase;
.source "Rectangle.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Rectangle"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private east:D

.field private north:D

.field private south:D

.field private west:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/appinventor/components/runtime/Rectangle$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/Rectangle$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Rectangle;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 4
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .prologue
    const-wide/16 v2, 0x0

    .line 94
    sget-object v0, Lcom/google/appinventor/components/runtime/Rectangle;->distanceComputation:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PolygonBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    .line 41
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    .line 42
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    .line 43
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    .line 44
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    .line 95
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 96
    return-void
.end method


# virtual methods
.method public Bounds()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the bounding box of the Rectangle in the format ((North West) (South East))."
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 227
    new-array v2, v8, [Ljava/lang/Double;

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 228
    .local v0, "nw":Lcom/google/appinventor/components/runtime/util/YailList;
    new-array v2, v8, [Ljava/lang/Double;

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 229
    .local v1, "se":Lcom/google/appinventor/components/runtime/util/YailList;
    new-array v2, v8, [Lcom/google/appinventor/components/runtime/util/YailList;

    aput-object v0, v2, v6

    aput-object v1, v2, v7

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method public Center()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the center of the Rectangle as a list of the form (Latitude Longitude)."
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public EastLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    return-wide v0
.end method

.method public EastLongitude(D)V
    .locals 1
    .param p1, "east"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The east edge of the rectangle, in decimal degrees east of the prime meridian."
    .end annotation

    .prologue
    .line 118
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    .line 119
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 121
    return-void
.end method

.method public NorthLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    return-wide v0
.end method

.method public NorthLatitude(D)V
    .locals 1
    .param p1, "north"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The north edge of the rectangle, in decimal degrees north of the equator."
    .end annotation

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    .line 145
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 147
    return-void
.end method

.method public SetCenter(DD)V
    .locals 19
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the Rectangle so that it is centered on the given latitude and longitude while attempting to maintain the width and height of the Rectangle as measured from the center to the edges."
    .end annotation

    .prologue
    .line 244
    const-wide v14, -0x3fa9800000000000L    # -90.0

    cmpg-double v13, p1, v14

    if-ltz v13, :cond_0

    const-wide v14, 0x4056800000000000L    # 90.0

    cmpl-double v13, p1, v14

    if-lez v13, :cond_1

    .line 245
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/Rectangle;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v13

    const-string v14, "SetCenter"

    const/16 v15, 0xd4d

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v14, v15, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 266
    :goto_0
    return-void

    .line 248
    :cond_1
    const-wide v14, -0x3f99800000000000L    # -180.0

    cmpg-double v13, p3, v14

    if-ltz v13, :cond_2

    const-wide v14, 0x4066800000000000L    # 180.0

    cmpl-double v13, p3, v14

    if-lez v13, :cond_3

    .line 249
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/Rectangle;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v13

    const-string v14, "SetCenter"

    const/16 v15, 0xd4d

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v14, v15, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Rectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    .line 253
    .local v4, "currentCenter":Lorg/osmdroid/util/GeoPoint;
    new-instance v10, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v10, v14, v15, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 254
    .local v10, "northPoint":Lorg/osmdroid/util/GeoPoint;
    new-instance v11, Lorg/osmdroid/util/GeoPoint;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v11, v14, v15, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 255
    .local v11, "southPoint":Lorg/osmdroid/util/GeoPoint;
    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v5, v14, v15, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 256
    .local v5, "eastPoint":Lorg/osmdroid/util/GeoPoint;
    new-instance v12, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v12, v14, v15, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 257
    .local v12, "westPoint":Lorg/osmdroid/util/GeoPoint;
    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v6, v14, v16

    .line 258
    .local v6, "latExtent2":D
    invoke-static {v5, v12}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v8, v14, v16

    .line 259
    .local v8, "longExtent2":D
    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 260
    const/4 v13, 0x0

    invoke-virtual {v4, v6, v7, v13}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v13

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    .line 261
    const/high16 v13, 0x43340000    # 180.0f

    invoke-virtual {v4, v6, v7, v13}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v13

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    .line 262
    const/high16 v13, 0x42b40000    # 90.0f

    invoke-virtual {v4, v8, v9, v13}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v13

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    .line 263
    const/high16 v13, 0x43870000    # 270.0f

    invoke-virtual {v4, v8, v9, v13}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object v13

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v13}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-interface {v13, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    goto/16 :goto_0
.end method

.method public SouthLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    return-wide v0
.end method

.method public SouthLatitude(D)V
    .locals 1
    .param p1, "south"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The south edge of the rectangle, in decimal degrees north of the equator."
    .end annotation

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    .line 171
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 173
    return-void
.end method

.method public Type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the type of the feature. For rectangles, this returns the text \"Rectangle\"."
    .end annotation

    .prologue
    .line 103
    const-string v0, "Rectangle"

    return-object v0
.end method

.method public WestLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    return-wide v0
.end method

.method public WestLongitude(D)V
    .locals 1
    .param p1, "west"    # D
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The west edge of the rectangle, in decimal degrees east of the equator."
    .end annotation

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    .line 197
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 198
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    .line 199
    return-void
.end method

.method public varargs accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "visitor":Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;, "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<TT;>;"
    invoke-interface {p1, p0, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 8

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    invoke-static/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(DDDD)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public updateBounds(DDDD)V
    .locals 1
    .param p1, "north"    # D
    .param p3, "west"    # D
    .param p5, "south"    # D
    .param p7, "east"    # D

    .prologue
    .line 280
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->north:D

    .line 281
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/Rectangle;->west:D

    .line 282
    iput-wide p5, p0, Lcom/google/appinventor/components/runtime/Rectangle;->south:D

    .line 283
    iput-wide p7, p0, Lcom/google/appinventor/components/runtime/Rectangle;->east:D

    .line 284
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 285
    return-void
.end method
