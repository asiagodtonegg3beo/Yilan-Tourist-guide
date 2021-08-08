.class Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;
.super Ljava/lang/Object;
.source "NativeOpenStreetMapController.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/Polygon$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->configurePolygon(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Lorg/osmdroid/views/overlay/Polygon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    .prologue
    .line 654
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 3
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    .line 664
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 665
    .local v0, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v0, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    .line 667
    .end local v0    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    :cond_0
    return-void
.end method

.method public onDragEnd(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 28
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    .line 671
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    if-eqz v5, :cond_2

    .line 672
    const-wide/16 v16, 0x0

    .local v16, "latitude":D
    const-wide/16 v22, 0x0

    .line 673
    .local v22, "longitude":D
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 675
    .local v4, "count":I
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/osmdroid/util/GeoPoint;

    .line 676
    .local v19, "p":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual/range {v19 .. v19}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v24

    add-double v16, v16, v24

    .line 677
    invoke-virtual/range {v19 .. v19}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v24

    add-double v22, v22, v24

    .line 678
    goto :goto_0

    .line 679
    .end local v19    # "p":Lorg/osmdroid/util/GeoPoint;
    :cond_0
    if-lez v4, :cond_1

    .line 680
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    int-to-double v0, v4

    move-wide/from16 v24, v0

    div-double v24, v16, v24

    int-to-double v0, v4

    move-wide/from16 v26, v0

    div-double v26, v22, v26

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->updateCenter(DD)V

    .line 699
    .end local v4    # "count":I
    .end local v16    # "latitude":D
    .end local v22    # "longitude":D
    .end local p1    # "polygon":Lorg/osmdroid/views/overlay/Polygon;
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 700
    .local v18, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_2

    .line 682
    .end local v18    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    .restart local v4    # "count":I
    .restart local v16    # "latitude":D
    .restart local v22    # "longitude":D
    .restart local p1    # "polygon":Lorg/osmdroid/views/overlay/Polygon;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->updateCenter(DD)V

    goto :goto_1

    .line 684
    .end local v4    # "count":I
    .end local v16    # "latitude":D
    .end local v22    # "longitude":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    instance-of v5, v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    if-eqz v5, :cond_4

    .line 685
    const-wide v6, -0x3fa9800000000000L    # -90.0

    .local v6, "north":D
    const-wide v12, -0x3f99800000000000L    # -180.0

    .local v12, "east":D
    const-wide v8, 0x4066800000000000L    # 180.0

    .local v8, "west":D
    const-wide v10, 0x4056800000000000L    # 90.0

    .line 686
    .local v10, "south":D
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/overlay/Polygon;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/osmdroid/util/GeoPoint;

    .line 687
    .restart local v19    # "p":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual/range {v19 .. v19}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v14

    .line 688
    .local v14, "lat":D
    invoke-virtual/range {v19 .. v19}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v20

    .line 689
    .local v20, "lng":D
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 690
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 691
    move-wide/from16 v0, v20

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 692
    move-wide/from16 v0, v20

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 693
    goto :goto_3

    .line 694
    .end local v14    # "lat":D
    .end local v19    # "p":Lorg/osmdroid/util/GeoPoint;
    .end local v20    # "lng":D
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;

    invoke-interface/range {v5 .. v13}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->updateBounds(DDDD)V

    goto/16 :goto_1

    .line 696
    .end local v6    # "north":D
    .end local v8    # "west":D
    .end local v10    # "south":D
    .end local v12    # "east":D
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    move-object/from16 v24, p1

    check-cast v24, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    invoke-virtual/range {v24 .. v24}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getMultiPoints()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->updatePoints(Ljava/util/List;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    check-cast v5, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;

    check-cast p1, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;

    .end local p1    # "polygon":Lorg/osmdroid/views/overlay/Polygon;
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$MultiPolygon;->getMultiHoles()Ljava/util/List;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->updateHolePoints(Ljava/util/List;)V

    goto/16 :goto_1

    .line 702
    :cond_5
    return-void
.end method

.method public onDragStart(Lorg/osmdroid/views/overlay/Polygon;)V
    .locals 3
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;

    .prologue
    .line 657
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->this$0:Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;->access$000(Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;

    .line 658
    .local v0, "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/NativeOpenStreetMapController$7;->val$component:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;

    invoke-interface {v0, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;->onFeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    .line 660
    .end local v0    # "listener":Lcom/google/appinventor/components/runtime/util/MapFactory$MapEventListener;
    :cond_0
    return-void
.end method
