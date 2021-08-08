.class public Lorg/osmdroid/views/MapView;
.super Landroid/view/ViewGroup;
.source "MapView.java"

# interfaces
.implements Lorg/osmdroid/api/IMapView;
.implements Lorg/osmdroid/views/util/constants/MapViewConstants;
.implements Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/MapView$LayoutParams;,
        Lorg/osmdroid/views/MapView$MapViewZoomListener;,
        Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;,
        Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;,
        Lorg/osmdroid/views/MapView$OnTapListener;,
        Lorg/osmdroid/views/MapView$OnFirstLayoutListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ViewGroup;",
        "Lorg/osmdroid/api/IMapView;",
        "Lorg/osmdroid/views/util/constants/MapViewConstants;",
        "Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final ZOOM_LOG_BASE_INV:D

.field private static final ZOOM_SENSITIVITY:D = 1.0

.field private static sMotionEventTransformMethod:Ljava/lang/reflect/Method;


# instance fields
.field private enableFling:Z

.field private initCenter:Lorg/osmdroid/api/IGeoPoint;

.field private final mController:Lorg/osmdroid/views/MapController;

.field private mEnableZoomController:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mInvalidateRect:Landroid/graphics/Rect;

.field protected final mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mIsFlinging:Z

.field private mLayoutOccurred:Z

.field private final mLayoutPoint:Landroid/graphics/Point;

.field protected mListener:Lorg/osmdroid/events/MapListener;

.field private mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

.field protected mMaximumZoomLevel:Ljava/lang/Integer;

.field protected mMinimumZoomLevel:Ljava/lang/Integer;

.field private mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/metalev/multitouch/controller/MultiTouchController",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mMultiTouchScale:F

.field protected mMultiTouchScalePoint:Landroid/graphics/PointF;

.field private final mOnFirstLayoutListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/osmdroid/views/MapView$OnFirstLayoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnTapListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/views/MapView$OnTapListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

.field protected mProjection:Lorg/osmdroid/views/Projection;

.field final mRotateScaleMatrix:Landroid/graphics/Matrix;

.field final mRotateScalePoint:Landroid/graphics/Point;

.field protected mScrollableAreaBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field protected mScrollableAreaLimit:Landroid/graphics/Rect;

.field private final mScroller:Landroid/widget/Scroller;

.field protected final mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

.field private mTileRequestCompleteHandler:Landroid/os/Handler;

.field private mTilesScaledToDpi:Z

.field private final mZoomController:Landroid/widget/ZoomButtonsController;

.field private mZoomLevel:D

.field private mapOrientation:F

.field private pauseFling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 75
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Lorg/osmdroid/views/MapView;->ZOOM_LOG_BASE_INV:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 240
    invoke-direct {p0, p1, v0, v0, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, v0, v0, p2}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V

    .line 237
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p3, "tileRequestCompleteHandler"    # Landroid/os/Handler;

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V

    .line 256
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p3, "tileRequestCompleteHandler"    # Landroid/os/Handler;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 173
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isMapViewHardwareAccelerated()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapView;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;Z)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/os/Handler;Landroid/util/AttributeSet;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p3, "tileRequestCompleteHandler"    # Landroid/os/Handler;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "hardwareAccelerated"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 180
    invoke-direct {p0, p1, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    .line 97
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    iput-boolean v5, p0, Lorg/osmdroid/views/MapView;->mEnableZoomController:Z

    .line 110
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    .line 111
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    .line 124
    iput-boolean v5, p0, Lorg/osmdroid/views/MapView;->mTilesScaledToDpi:Z

    .line 126
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    .line 127
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    .line 130
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    .line 142
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mOnFirstLayoutListeners:Ljava/util/LinkedList;

    .line 145
    iput-boolean v5, p0, Lorg/osmdroid/views/MapView;->mLayoutOccurred:Z

    .line 147
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mOnTapListeners:Ljava/util/List;

    .line 1337
    iput-boolean v6, p0, Lorg/osmdroid/views/MapView;->enableFling:Z

    .line 1338
    iput-boolean v5, p0, Lorg/osmdroid/views/MapView;->pauseFling:Z

    .line 181
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iput-object v4, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    .line 183
    iput-object v4, p0, Lorg/osmdroid/views/MapView;->mController:Lorg/osmdroid/views/MapController;

    .line 184
    iput-object v4, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    .line 185
    iput-object v4, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    .line 186
    iput-object v4, p0, Lorg/osmdroid/views/MapView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 230
    .end local p3    # "tileRequestCompleteHandler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local p3    # "tileRequestCompleteHandler":Landroid/os/Handler;
    :cond_1
    if-nez p5, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 190
    invoke-virtual {p0, v6, v4}, Lorg/osmdroid/views/MapView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 192
    :cond_2
    new-instance v1, Lorg/osmdroid/views/MapController;

    invoke-direct {v1, p0}, Lorg/osmdroid/views/MapController;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mController:Lorg/osmdroid/views/MapController;

    .line 193
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    .line 195
    if-nez p2, :cond_3

    .line 196
    invoke-direct {p0, p4}, Lorg/osmdroid/views/MapView;->getTileSourceFromAttributes(Landroid/util/AttributeSet;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v0

    .line 197
    .local v0, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance p2, Lorg/osmdroid/tileprovider/MapTileProviderArray;

    .end local p2    # "tileProvider":Lorg/osmdroid/tileprovider/MapTileProviderBase;
    new-array v1, v5, [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-direct {p2, v0, v4, v1}, Lorg/osmdroid/tileprovider/MapTileProviderArray;-><init>(Lorg/osmdroid/tileprovider/tilesource/ITileSource;Lorg/osmdroid/tileprovider/IRegisterReceiver;[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V

    .line 202
    .end local v0    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .restart local p2    # "tileProvider":Lorg/osmdroid/tileprovider/MapTileProviderBase;
    :cond_3
    :goto_1
    if-nez p3, :cond_4

    new-instance p3, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;

    .end local p3    # "tileRequestCompleteHandler":Landroid/os/Handler;
    invoke-direct {p3, p0}, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;-><init>(Landroid/view/View;)V

    :cond_4
    iput-object p3, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    .line 205
    iput-object p2, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 206
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileRequestCompleteHandler(Landroid/os/Handler;)V

    .line 207
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/osmdroid/views/MapView;->updateTileSizeForDensity(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 209
    new-instance v1, Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-direct {v1, v2, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 210
    new-instance v1, Lorg/osmdroid/views/overlay/DefaultOverlayManager;

    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-direct {v1, v2}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;-><init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    .line 212
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 213
    iput-object v4, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    .line 219
    :goto_2
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;

    invoke-direct {v2, p0, v4}, Lorg/osmdroid/views/MapView$MapViewGestureDetectorListener;-><init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/MapView$1;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 220
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v2, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;

    invoke-direct {v2, p0, v4}, Lorg/osmdroid/views/MapView$MapViewDoubleClickListener;-><init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/MapView$1;)V

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 227
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/config/IConfigurationProvider;->isMapViewRecyclerFriendly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 229
    invoke-virtual {p0, v6}, Lorg/osmdroid/views/MapView;->setHasTransientState(Z)V

    goto/16 :goto_0

    .line 197
    .restart local v0    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .restart local p3    # "tileRequestCompleteHandler":Landroid/os/Handler;
    :cond_5
    new-instance p2, Lorg/osmdroid/tileprovider/MapTileProviderBasic;

    .line 199
    .end local p2    # "tileProvider":Lorg/osmdroid/tileprovider/MapTileProviderBase;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    goto :goto_1

    .line 215
    .end local v0    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .end local p3    # "tileRequestCompleteHandler":Landroid/os/Handler;
    .restart local p2    # "tileProvider":Lorg/osmdroid/tileprovider/MapTileProviderBase;
    :cond_6
    new-instance v1, Landroid/widget/ZoomButtonsController;

    invoke-direct {v1, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    .line 216
    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    new-instance v2, Lorg/osmdroid/views/MapView$MapViewZoomListener;

    invoke-direct {v2, p0, v4}, Lorg/osmdroid/views/MapView$MapViewZoomListener;-><init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/MapView$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    goto :goto_2
.end method

.method static synthetic access$300(Lorg/osmdroid/views/MapView;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$400(Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/osmdroid/views/MapView;->mEnableZoomController:Z

    return v0
.end method

.method static synthetic access$500(Lorg/osmdroid/views/MapView;)Landroid/widget/ZoomButtonsController;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$600(Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/osmdroid/views/MapView;->enableFling:Z

    return v0
.end method

.method static synthetic access$700(Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 67
    iget-boolean v0, p0, Lorg/osmdroid/views/MapView;->pauseFling:Z

    return v0
.end method

.method static synthetic access$702(Lorg/osmdroid/views/MapView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lorg/osmdroid/views/MapView;->pauseFling:Z

    return p1
.end method

.method static synthetic access$800(Lorg/osmdroid/views/MapView;)Lorg/metalev/multitouch/controller/MultiTouchController;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    return-object v0
.end method

.method static synthetic access$900(Lorg/osmdroid/views/MapView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 67
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOnTapListeners:Ljava/util/List;

    return-object v0
.end method

.method private checkZoomButtons()V
    .locals 2

    .prologue
    .line 1292
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 1293
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    .line 1294
    return-void
.end method

.method private getTileSourceFromAttributes(Landroid/util/AttributeSet;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .locals 9
    .param p1, "aAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x0

    .line 1307
    sget-object v3, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->DEFAULT_TILE_SOURCE:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    .line 1309
    .local v3, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    if-eqz p1, :cond_0

    .line 1310
    const-string v5, "tilesource"

    invoke-interface {p1, v8, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1311
    .local v4, "tileSourceAttr":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1313
    :try_start_0
    invoke-static {v4}, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->getTileSource(Ljava/lang/String;)Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v1

    .line 1314
    .local v1, "r":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    const-string v5, "OsmDroid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using tile source specified in layout attributes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    move-object v3, v1

    .line 1322
    .end local v1    # "r":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .end local v4    # "tileSourceAttr":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    instance-of v5, v3, Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;

    if-eqz v5, :cond_1

    .line 1323
    const-string v5, "style"

    invoke-interface {p1, v8, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1324
    .local v2, "style":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1325
    const-string v5, "OsmDroid"

    const-string v6, "Using default style: 1"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    .end local v2    # "style":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v5, "OsmDroid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using tile source: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    return-object v3

    .line 1316
    .restart local v4    # "tileSourceAttr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1317
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "OsmDroid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid tile source specified in layout attributes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1327
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "tileSourceAttr":Ljava/lang/String;
    .restart local v2    # "style":Ljava/lang/String;
    :cond_2
    const-string v5, "OsmDroid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using style specified in layout attributes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v3

    .line 1328
    check-cast v5, Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;

    invoke-interface {v5, v2}, Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;->setStyle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private invalidateMapCoordinates(IIIIZ)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "post"    # Z

    .prologue
    .line 756
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 757
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 759
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 760
    .local v0, "centerX":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 762
    .local v1, "centerY":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 763
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    .line 764
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    .line 763
    invoke-static {v2, v0, v1, v3, v4}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 766
    :cond_0
    if-eqz p5, :cond_1

    .line 767
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, v2, v3, v4, v5}, Landroid/view/ViewGroup;->postInvalidate(IIII)V

    .line 771
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private rotateTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1025
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 1054
    .end local p1    # "ev":Landroid/view/MotionEvent;
    :goto_0
    return-object p1

    .line 1028
    .restart local p1    # "ev":Landroid/view/MotionEvent;
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1029
    .local v1, "rotatedEvent":Landroid/view/MotionEvent;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_1

    .line 1030
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    invoke-virtual {v2, v3, v4, v5}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 1032
    iget-object v2, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    :goto_1
    move-object p1, v1

    .line 1054
    goto :goto_0

    .line 1036
    :cond_1
    :try_start_0
    sget-object v2, Lorg/osmdroid/views/MapView;->sMotionEventTransformMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    .line 1037
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "transform"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Matrix;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/osmdroid/views/MapView;->sMotionEventTransformMethod:Ljava/lang/reflect/Method;

    .line 1040
    :cond_2
    sget-object v2, Lorg/osmdroid/views/MapView;->sMotionEventTransformMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    .line 1041
    invoke-virtual {v5}, Lorg/osmdroid/views/Projection;->getInvertedScaleRotateCanvasMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1040
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_1

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 1044
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 1046
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 1048
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 1050
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 1051
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateTileSizeForDensity(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 6
    .param p1, "aTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 380
    invoke-interface {p1}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileSizePixels()I

    move-result v2

    .line 381
    .local v2, "tile_size":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x43800000    # 256.0f

    mul-float/2addr v3, v4

    int-to-float v4, v2

    div-float v0, v3, v4

    .line 382
    .local v0, "density":F
    int-to-float v3, v2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isTilesScaledToDpi()Z

    move-result v4

    if-eqz v4, :cond_1

    .end local v0    # "density":F
    :goto_0
    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 383
    .local v1, "size":I
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 384
    const-string v3, "OsmDroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scaling tiles to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    invoke-static {v1}, Lorg/osmdroid/util/TileSystem;->setTileSize(I)V

    .line 386
    return-void

    .line 382
    .end local v1    # "size":I
    .restart local v0    # "density":F
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method


# virtual methods
.method public addOnFirstLayoutListener(Lorg/osmdroid/views/MapView$OnFirstLayoutListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/osmdroid/views/MapView$OnFirstLayoutListener;

    .prologue
    .line 903
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOnFirstLayoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 905
    :cond_0
    return-void
.end method

.method public addOnTapListener(Lorg/osmdroid/views/MapView$OnTapListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/osmdroid/views/MapView$OnTapListener;

    .prologue
    .line 916
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOnTapListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    return-void
.end method

.method public canZoomIn()Z
    .locals 6

    .prologue
    .line 572
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v0

    .line 573
    .local v0, "maxZoomLevel":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_0
    int-to-double v4, v0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 574
    const/4 v1, 0x0

    .line 576
    :goto_1
    return v1

    .line 573
    :cond_0
    iget-wide v2, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    goto :goto_0

    .line 576
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public canZoomOut()Z
    .locals 6

    .prologue
    .line 580
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()I

    move-result v0

    .line 581
    .local v0, "minZoomLevel":I
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_0
    int-to-double v4, v0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    .line 582
    const/4 v1, 0x0

    .line 584
    :goto_1
    return v1

    .line 581
    :cond_0
    iget-wide v2, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    goto :goto_0

    .line 584
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 793
    instance-of v0, p1, Lorg/osmdroid/views/MapView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    .line 1065
    iget-wide v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapView;->setZoomLevel(D)D

    .line 1066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    .line 1071
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 1073
    :cond_0
    return-void

    .line 1068
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1152
    .local v4, "startMs":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1154
    const/4 v3, 0x0

    .line 1156
    .local v3, "previousAngle":F
    iget-object v6, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 1159
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1162
    iget-object v6, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    iget v8, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    iget-object v9, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    .line 1166
    iget-object v6, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 1169
    iget-object v6, p0, Lorg/osmdroid/views/MapView;->mRotateScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1172
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lorg/osmdroid/views/MapView;->setProjection(Lorg/osmdroid/views/Projection;)V

    .line 1178
    :try_start_0
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v6

    invoke-interface {v6, p1, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V

    .line 1181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1182
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :goto_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1189
    .local v0, "endMs":J
    const-string v6, "OsmDroid"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rendering overall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    .end local v0    # "endMs":J
    :cond_0
    return-void

    .line 1183
    :catch_0
    move-exception v2

    .line 1185
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "OsmDroid"

    const-string v7, "error dispatchDraw, probably in edit mode"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 968
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 969
    const-string v3, "OsmDroid"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchTouchEvent("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_0
    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v3}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v3, p0, p1}, Landroid/widget/ZoomButtonsController;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1016
    :cond_1
    :goto_0
    return v2

    .line 977
    :cond_2
    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView;->rotateTouchEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 980
    .local v1, "rotatedEvent":Landroid/view/MotionEvent;
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 981
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 982
    const-string v3, "OsmDroid"

    const-string v4, "super handled onTouchEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1009
    :cond_3
    if-eq v1, p1, :cond_1

    .line 1010
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 987
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v3

    invoke-interface {v3, v1, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_5

    .line 1009
    if-eq v1, p1, :cond_1

    .line 1010
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 991
    :cond_5
    const/4 v0, 0x0

    .line 992
    .local v0, "handled":Z
    :try_start_2
    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    invoke-virtual {v3, p1}, Lorg/metalev/multitouch/controller/MultiTouchController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 993
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 994
    const-string v3, "OsmDroid"

    const-string v4, "mMultiTouchController handled onTouchEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_6
    const/4 v0, 0x1

    .line 999
    :cond_7
    iget-object v3, p0, Lorg/osmdroid/views/MapView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1000
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1001
    const-string v3, "OsmDroid"

    const-string v4, "mGestureDetector handled onTouchEvent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1003
    :cond_8
    const/4 v0, 0x1

    .line 1006
    :cond_9
    if-eqz v0, :cond_a

    .line 1009
    if-eq v1, p1, :cond_1

    .line 1010
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 1009
    :cond_a
    if-eq v1, p1, :cond_b

    .line 1010
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1013
    :cond_b
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1014
    const-string v2, "OsmDroid"

    const-string v3, "no-one handled onTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1009
    .end local v0    # "handled":Z
    :catchall_0
    move-exception v2

    if-eq v1, p1, :cond_d

    .line 1010
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_d
    throw v2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v1, -0x2

    .line 781
    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    const/4 v3, 0x0

    const/16 v4, 0x8

    move v2, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(IILorg/osmdroid/api/IGeoPoint;III)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 787
    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 798
    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    invoke-direct {v0, p1}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getBoundingBoxE6()Lorg/osmdroid/util/BoundingBoxE6;
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getBoundingBoxE6()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    return-object v0
.end method

.method public getController()Lorg/osmdroid/api/IMapController;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mController:Lorg/osmdroid/views/MapController;

    return-object v0
.end method

.method public getDraggableObjectAtPoint(Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Ljava/lang/Object;
    .locals 2
    .param p1, "pt"    # Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .prologue
    .line 1220
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    const/4 p0, 0x0

    .line 1227
    .end local p0    # "this":Lorg/osmdroid/views/MapView;
    :goto_0
    return-object p0

    .line 1225
    .restart local p0    # "this":Lorg/osmdroid/views/MapView;
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getX()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 1226
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "reuse"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 331
    if-nez p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 332
    .local v0, "out":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 333
    return-object v0

    .end local v0    # "out":Landroid/graphics/Rect;
    :cond_0
    move-object v0, p1

    .line 331
    goto :goto_0
.end method

.method public getLatitudeSpan()I
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getBoundingBoxE6()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBoxE6;->getLatitudeSpanE6()I

    move-result v0

    return v0
.end method

.method public getLatitudeSpanDouble()D
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitudeSpan()I
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getBoundingBoxE6()Lorg/osmdroid/util/BoundingBoxE6;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBoxE6;->getLongitudeSpanE6()I

    move-result v0

    return v0
.end method

.method public getLongitudeSpanDouble()D
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMapCenter()Lorg/osmdroid/api/IGeoPoint;
    .locals 4

    .prologue
    .line 630
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getMapOrientation()F
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    return v0
.end method

.method public getMaxZoomLevel()I
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMaximumZoomLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getMaximumZoomLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMaximumZoomLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getMinZoomLevel()I
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMinimumZoomLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->getMinimumZoomLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMinimumZoomLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    return-object v0
.end method

.method public getOverlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/OverlayManager;->overlays()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPositionAndScale(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;)V
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "objPosAndScaleOut"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1233
    const/4 v3, 0x1

    iget v4, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    move-object v0, p2

    move v2, v1

    move v6, v1

    move v7, v1

    move v8, v5

    move v9, v1

    invoke-virtual/range {v0 .. v9}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->set(FFZFZFFZF)V

    .line 1234
    return-void
.end method

.method public bridge synthetic getProjection()Lorg/osmdroid/api/IProjection;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    return-object v0
.end method

.method public getProjection()Lorg/osmdroid/views/Projection;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lorg/osmdroid/views/Projection;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/Projection;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    .line 349
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    return-object v0
.end method

.method public getScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "reuse"    # Landroid/graphics/Rect;

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/MapView;->getIntrinsicScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 323
    .local v0, "out":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v1

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 325
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v3

    .line 324
    invoke-static {v0, v1, v2, v3, v0}, Lorg/osmdroid/util/GeometryMath;->getBoundingBoxForRotatatedRectangle(Landroid/graphics/Rect;IIFLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 327
    :cond_0
    return-object v0
.end method

.method public getScrollableAreaLimit()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaBoundingBox:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getScroller()Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method public getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    return-object v0
.end method

.method public getTileRequestCompleteHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getZoomLevel(Z)D
    .locals 2
    .param p1, "aPending"    # Z

    .prologue
    .line 533
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTargetZoomLevel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 536
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    goto :goto_0
.end method

.method public getZoomLevel()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getZoomLevelDouble()D
    .locals 2

    .prologue
    .line 520
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v0

    return-wide v0
.end method

.method public invalidateMapCoordinates(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 748
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapView;->invalidateMapCoordinates(IIIIZ)V

    .line 749
    return-void
.end method

.method public invalidateMapCoordinates(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 744
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapView;->invalidateMapCoordinates(IIIIZ)V

    .line 745
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mIsAnimating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isFlingEnabled()Z
    .locals 1

    .prologue
    .line 1343
    iget-boolean v0, p0, Lorg/osmdroid/views/MapView;->enableFling:Z

    return v0
.end method

.method public isLayoutOccurred()Z
    .locals 1

    .prologue
    .line 912
    iget-boolean v0, p0, Lorg/osmdroid/views/MapView;->mLayoutOccurred:Z

    return v0
.end method

.method public isTilesScaledToDpi()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lorg/osmdroid/views/MapView;->mTilesScaledToDpi:Z

    return v0
.end method

.method protected myOnLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 822
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapView;->initCenter:Lorg/osmdroid/api/IGeoPoint;

    if-eqz v3, :cond_0

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapView;->initCenter:Lorg/osmdroid/api/IGeoPoint;

    invoke-interface {v3}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->initCenter:Lorg/osmdroid/api/IGeoPoint;

    invoke-interface {v4}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v18

    .line 824
    .local v18, "scroll":Landroid/graphics/Point;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/osmdroid/views/MapView;->initCenter:Lorg/osmdroid/api/IGeoPoint;

    .line 825
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, v18

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    .line 827
    .end local v18    # "scroll":Landroid/graphics/Point;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getChildCount()I

    move-result v14

    .line 829
    .local v14, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v14, :cond_3

    .line 830
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/osmdroid/views/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 831
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 833
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lorg/osmdroid/views/MapView$LayoutParams;

    .line 834
    .local v16, "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 835
    .local v10, "childHeight":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 836
    .local v13, "childWidth":I
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/osmdroid/views/MapView$LayoutParams;->geoPoint:Lorg/osmdroid/api/IGeoPoint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v4, v5}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 838
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 839
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/osmdroid/views/Projection;->rotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v17

    .line 841
    .local v17, "p":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Point;->y:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 844
    .end local v17    # "p":Landroid/graphics/Point;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    invoke-virtual {v3, v4, v5, v6}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 845
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v0, v3, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    .line 846
    .local v19, "x":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapView;->mLayoutPoint:Landroid/graphics/Point;

    iget v0, v3, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    .line 847
    .local v20, "y":I
    move/from16 v11, v19

    .line 848
    .local v11, "childLeft":I
    move/from16 v12, v20

    .line 849
    .local v12, "childTop":I
    move-object/from16 v0, v16

    iget v3, v0, Lorg/osmdroid/views/MapView$LayoutParams;->alignment:I

    packed-switch v3, :pswitch_data_0

    .line 887
    :goto_1
    move-object/from16 v0, v16

    iget v3, v0, Lorg/osmdroid/views/MapView$LayoutParams;->offsetX:I

    add-int/2addr v11, v3

    .line 888
    move-object/from16 v0, v16

    iget v3, v0, Lorg/osmdroid/views/MapView$LayoutParams;->offsetY:I

    add-int/2addr v12, v3

    .line 889
    add-int v3, v11, v13

    add-int v4, v12, v10

    invoke-virtual {v9, v11, v12, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 829
    .end local v10    # "childHeight":I
    .end local v11    # "childLeft":I
    .end local v12    # "childTop":I
    .end local v13    # "childWidth":I
    .end local v16    # "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    .end local v19    # "x":I
    .end local v20    # "y":I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 851
    .restart local v10    # "childHeight":I
    .restart local v11    # "childLeft":I
    .restart local v12    # "childTop":I
    .restart local v13    # "childWidth":I
    .restart local v16    # "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    .restart local v19    # "x":I
    .restart local v20    # "y":I
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v3

    add-int v11, v3, v19

    .line 852
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v3

    add-int v12, v3, v20

    .line 853
    goto :goto_1

    .line 855
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, v19

    div-int/lit8 v4, v13, 0x2

    sub-int v11, v3, v4

    .line 856
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v3

    add-int v12, v3, v20

    .line 857
    goto :goto_1

    .line 859
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, v19

    sub-int v11, v3, v13

    .line 860
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v3

    add-int v12, v3, v20

    .line 861
    goto :goto_1

    .line 863
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v3

    add-int v11, v3, v19

    .line 864
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v3

    add-int v3, v3, v20

    div-int/lit8 v4, v10, 0x2

    sub-int v12, v3, v4

    .line 865
    goto :goto_1

    .line 867
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, v19

    div-int/lit8 v4, v13, 0x2

    sub-int v11, v3, v4

    .line 868
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v3

    add-int v3, v3, v20

    div-int/lit8 v4, v10, 0x2

    sub-int v12, v3, v4

    .line 869
    goto :goto_1

    .line 871
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, v19

    sub-int v11, v3, v13

    .line 872
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v3

    add-int v3, v3, v20

    div-int/lit8 v4, v10, 0x2

    sub-int v12, v3, v4

    .line 873
    goto :goto_1

    .line 875
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v3

    add-int v11, v3, v19

    .line 876
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v3

    add-int v3, v3, v20

    sub-int v12, v3, v10

    .line 877
    goto/16 :goto_1

    .line 879
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, v19

    div-int/lit8 v4, v13, 0x2

    sub-int v11, v3, v4

    .line 880
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v3

    add-int v3, v3, v20

    sub-int v12, v3, v10

    .line 881
    goto/16 :goto_1

    .line 883
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, v19

    sub-int v11, v3, v13

    .line 884
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getPaddingTop()I

    move-result v3

    add-int v3, v3, v20

    sub-int v12, v3, v10

    goto/16 :goto_1

    .line 892
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "childHeight":I
    .end local v11    # "childLeft":I
    .end local v12    # "childTop":I
    .end local v13    # "childWidth":I
    .end local v16    # "lp":Lorg/osmdroid/views/MapView$LayoutParams;
    .end local v19    # "x":I
    .end local v20    # "y":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v3

    if-nez v3, :cond_5

    .line 893
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/osmdroid/views/MapView;->mLayoutOccurred:Z

    .line 894
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapView;->mOnFirstLayoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/MapView$OnFirstLayoutListener;

    .local v2, "listener":Lorg/osmdroid/views/MapView$OnFirstLayoutListener;
    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 895
    invoke-interface/range {v2 .. v7}, Lorg/osmdroid/views/MapView$OnFirstLayoutListener;->onFirstLayout(Landroid/view/View;IIII)V

    goto :goto_2

    .line 896
    .end local v2    # "listener":Lorg/osmdroid/views/MapView$OnFirstLayoutListener;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/MapView;->mOnFirstLayoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 898
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/MapView;->setProjection(Lorg/osmdroid/views/Projection;)V

    .line 899
    return-void

    .line 849
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onDetach()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 924
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 925
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    .line 926
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    .line 927
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 930
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    instance-of v0, v0, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    check-cast v0, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/util/SimpleInvalidationHandler;->destroy()V

    .line 933
    :cond_0
    iput-object v2, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    .line 934
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->detach()V

    .line 936
    :cond_1
    iput-object v2, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    .line 937
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mZoomController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 1196
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->onDetach()V

    .line 1197
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1198
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 941
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onKeyDown(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 943
    .local v0, "result":Z
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 948
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onKeyUp(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 950
    .local v0, "result":Z
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 812
    invoke-virtual/range {p0 .. p5}, Lorg/osmdroid/views/MapView;->myOnLayout(ZIIII)V

    .line 813
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 804
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/MapView;->measureChildren(II)V

    .line 806
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 807
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1021
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, 0x41c80000    # 25.0f

    .line 956
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lorg/osmdroid/views/overlay/OverlayManager;->onTrackballEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    const/4 v0, 0x1

    .line 962
    :goto_0
    return v0

    .line 960
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapView;->scrollBy(II)V

    .line 962
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public postInvalidateMapCoordinates(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 752
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/MapView;->invalidateMapCoordinates(IIIIZ)V

    .line 753
    return-void
.end method

.method public removeOnFirstLayoutListener(Lorg/osmdroid/views/MapView$OnFirstLayoutListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/osmdroid/views/MapView$OnFirstLayoutListener;

    .prologue
    .line 908
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOnFirstLayoutListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 909
    return-void
.end method

.method public removeOnTapListener(Lorg/osmdroid/views/MapView$OnTapListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/osmdroid/views/MapView$OnTapListener;

    .prologue
    .line 920
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOnTapListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 921
    return-void
.end method

.method public scrollTo(II)V
    .locals 28
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1077
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/osmdroid/views/MapView;->getZoomLevel(Z)D

    move-result-wide v10

    .line 1078
    .local v10, "currentZoomLevel":D
    invoke-static {v10, v11}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v24

    .line 1079
    .local v24, "worldSize":D
    :goto_0
    if-gez p1, :cond_0

    .line 1080
    move/from16 v0, p1

    int-to-double v4, v0

    add-double v4, v4, v24

    double-to-int v0, v4

    move/from16 p1, v0

    goto :goto_0

    .line 1082
    :cond_0
    :goto_1
    move/from16 v0, p1

    int-to-double v4, v0

    cmpl-double v4, v4, v24

    if-ltz v4, :cond_1

    .line 1083
    move/from16 v0, p1

    int-to-double v4, v0

    sub-double v4, v4, v24

    double-to-int v0, v4

    move/from16 p1, v0

    goto :goto_1

    .line 1085
    :cond_1
    :goto_2
    if-gez p2, :cond_2

    .line 1086
    move/from16 v0, p2

    int-to-double v4, v0

    add-double v4, v4, v24

    double-to-int v0, v4

    move/from16 p2, v0

    goto :goto_2

    .line 1088
    :cond_2
    :goto_3
    move/from16 v0, p2

    int-to-double v4, v0

    cmpl-double v4, v4, v24

    if-ltz v4, :cond_3

    .line 1089
    move/from16 v0, p2

    int-to-double v4, v0

    sub-double v4, v4, v24

    double-to-int v0, v4

    move/from16 p2, v0

    goto :goto_3

    .line 1092
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    if-eqz v4, :cond_5

    .line 1093
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v4

    int-to-double v4, v4

    sub-double v26, v4, v10

    .line 1095
    .local v26, "zoomDiff":D
    invoke-static/range {v26 .. v27}, Lorg/osmdroid/util/TileSystem;->getFactor(D)D

    move-result-wide v18

    .line 1096
    .local v18, "power":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-double v4, v4

    div-double v4, v4, v18

    double-to-int v0, v4

    move/from16 v16, v0

    .line 1097
    .local v16, "minX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-double v4, v4

    div-double v4, v4, v18

    double-to-int v0, v4

    move/from16 v17, v0

    .line 1098
    .local v17, "minY":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-double v4, v4

    div-double v4, v4, v18

    double-to-int v14, v4

    .line 1099
    .local v14, "maxX":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-double v4, v4

    div-double v4, v4, v18

    double-to-int v15, v4

    .line 1101
    .local v15, "maxY":I
    sub-int v21, v14, v16

    .line 1102
    .local v21, "scrollableWidth":I
    sub-int v20, v15, v17

    .line 1103
    .local v20, "scrollableHeight":I
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v22

    .line 1104
    .local v22, "width":I
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v13

    .line 1107
    .local v13, "height":I
    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_9

    .line 1108
    move/from16 v0, p1

    move/from16 v1, v16

    if-le v0, v1, :cond_8

    .line 1109
    move/from16 p1, v16

    .line 1117
    :cond_4
    :goto_4
    move/from16 v0, v20

    if-gt v0, v13, :cond_c

    .line 1118
    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_b

    .line 1119
    move/from16 p2, v17

    .line 1127
    .end local v13    # "height":I
    .end local v14    # "maxX":I
    .end local v15    # "maxY":I
    .end local v16    # "minX":I
    .end local v17    # "minY":I
    .end local v18    # "power":D
    .end local v20    # "scrollableHeight":I
    .end local v21    # "scrollableWidth":I
    .end local v22    # "width":I
    .end local v26    # "zoomDiff":D
    :cond_5
    :goto_5
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1128
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/osmdroid/views/MapView;->setProjection(Lorg/osmdroid/views/Projection;)V

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    .line 1132
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getTop()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getRight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getBottom()I

    move-result v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/osmdroid/views/MapView;->myOnLayout(ZIIII)V

    .line 1135
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    if-eqz v4, :cond_7

    .line 1136
    new-instance v12, Lorg/osmdroid/events/ScrollEvent;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v12, v0, v1, v2}, Lorg/osmdroid/events/ScrollEvent;-><init>(Lorg/osmdroid/views/MapView;II)V

    .line 1137
    .local v12, "event":Lorg/osmdroid/events/ScrollEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    invoke-interface {v4, v12}, Lorg/osmdroid/events/MapListener;->onScroll(Lorg/osmdroid/events/ScrollEvent;)Z

    .line 1139
    .end local v12    # "event":Lorg/osmdroid/events/ScrollEvent;
    :cond_7
    return-void

    .line 1110
    .restart local v13    # "height":I
    .restart local v14    # "maxX":I
    .restart local v15    # "maxY":I
    .restart local v16    # "minX":I
    .restart local v17    # "minY":I
    .restart local v18    # "power":D
    .restart local v20    # "scrollableHeight":I
    .restart local v21    # "scrollableWidth":I
    .restart local v22    # "width":I
    .restart local v26    # "zoomDiff":D
    :cond_8
    add-int v4, p1, v22

    if-ge v4, v14, :cond_4

    .line 1111
    sub-int p1, v14, v22

    goto :goto_4

    .line 1112
    :cond_9
    move/from16 v0, p1

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    .line 1113
    move/from16 p1, v16

    goto :goto_4

    .line 1114
    :cond_a
    add-int v4, p1, v22

    if-le v4, v14, :cond_4

    .line 1115
    sub-int p1, v14, v22

    goto :goto_4

    .line 1120
    :cond_b
    add-int v4, p2, v13

    if-ge v4, v15, :cond_5

    .line 1121
    sub-int p2, v15, v13

    goto :goto_5

    .line 1122
    :cond_c
    add-int/lit8 v4, p2, 0x0

    move/from16 v0, v17

    if-ge v4, v0, :cond_d

    .line 1123
    add-int/lit8 p2, v17, 0x0

    goto :goto_5

    .line 1124
    :cond_d
    add-int v4, p2, v13

    if-le v4, v15, :cond_5

    .line 1125
    sub-int p2, v15, v13

    goto :goto_5
.end method

.method public selectObject(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "pt"    # Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1240
    if-nez p1, :cond_1

    iget v4, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_1

    .line 1241
    iget v4, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    sget-wide v6, Lorg/osmdroid/views/MapView;->ZOOM_LOG_BASE_INV:D

    mul-double/2addr v4, v6

    double-to-float v1, v4

    .line 1242
    .local v1, "scaleDiffFloat":F
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1245
    .local v2, "scaleDiffInt":I
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    .line 1246
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/views/Projection;->getScreenRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1247
    .local v3, "screenRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget-object v7, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    invoke-virtual {v4, v5, v6, v7}, Lorg/osmdroid/views/Projection;->unrotateAndScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    .line 1249
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    iget-object v5, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lorg/osmdroid/views/MapView;->mRotateScalePoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/osmdroid/views/Projection;->toMercatorPixels(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 1251
    .local v0, "p":Landroid/graphics/Point;
    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lorg/osmdroid/views/MapView;->scrollTo(II)V

    .line 1255
    .end local v0    # "p":Landroid/graphics/Point;
    .end local v3    # "screenRect":Landroid/graphics/Rect;
    :cond_0
    iget-wide v4, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    float-to-double v6, v1

    add-double/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lorg/osmdroid/views/MapView;->setZoomLevel(D)D

    .line 1259
    .end local v1    # "scaleDiffFloat":F
    .end local v2    # "scaleDiffInt":I
    :cond_1
    iput v8, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    .line 1260
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "pColor"    # I

    .prologue
    .line 1143
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;->setLoadingBackgroundColor(I)V

    .line 1144
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1145
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1297
    iput-boolean p1, p0, Lorg/osmdroid/views/MapView;->mEnableZoomController:Z

    .line 1298
    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->checkZoomButtons()V

    .line 1299
    return-void
.end method

.method public setFlingEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1340
    iput-boolean p1, p0, Lorg/osmdroid/views/MapView;->enableFling:Z

    .line 1341
    return-void
.end method

.method public setInitCenter(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 0
    .param p1, "geoPoint"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 1637
    iput-object p1, p0, Lorg/osmdroid/views/MapView;->initCenter:Lorg/osmdroid/api/IGeoPoint;

    .line 1638
    return-void
.end method

.method setMapCenter(DD)V
    .locals 1
    .param p1, "aLatitude"    # D
    .param p3, "aLongitude"    # D

    .prologue
    .line 367
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->setMapCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 368
    return-void
.end method

.method setMapCenter(II)V
    .locals 1
    .param p1, "aLatitudeE6"    # I
    .param p2, "aLongitudeE6"    # I

    .prologue
    .line 364
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/MapView;->setMapCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 365
    return-void
.end method

.method setMapCenter(Lorg/osmdroid/api/IGeoPoint;)V
    .locals 1
    .param p1, "aCenter"    # Lorg/osmdroid/api/IGeoPoint;

    .prologue
    .line 357
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 358
    return-void
.end method

.method public setMapListener(Lorg/osmdroid/events/MapListener;)V
    .locals 0
    .param p1, "ml"    # Lorg/osmdroid/events/MapListener;

    .prologue
    .line 1284
    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    .line 1285
    return-void
.end method

.method public setMapOrientation(F)V
    .locals 1
    .param p1, "degrees"    # F

    .prologue
    .line 639
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/views/MapView;->setMapOrientation(FZ)V

    .line 640
    return-void
.end method

.method public setMapOrientation(FZ)V
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "forceRedraw"    # Z

    .prologue
    .line 647
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float v0, p1, v0

    iput v0, p0, Lorg/osmdroid/views/MapView;->mapOrientation:F

    .line 648
    if-eqz p2, :cond_0

    .line 650
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->requestLayout()V

    .line 651
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 653
    :cond_0
    return-void
.end method

.method public setMaxZoomLevel(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "zoomLevel"    # Ljava/lang/Integer;

    .prologue
    .line 568
    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mMaximumZoomLevel:Ljava/lang/Integer;

    .line 569
    return-void
.end method

.method public setMinZoomLevel(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "zoomLevel"    # Ljava/lang/Integer;

    .prologue
    .line 560
    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mMinimumZoomLevel:Ljava/lang/Integer;

    .line 561
    return-void
.end method

.method public setMultiTouchControls(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1302
    if-eqz p1, :cond_0

    new-instance v0, Lorg/metalev/multitouch/controller/MultiTouchController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/metalev/multitouch/controller/MultiTouchController;-><init>(Lorg/metalev/multitouch/controller/MultiTouchController$MultiTouchObjectCanvas;Z)V

    :goto_0
    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchController:Lorg/metalev/multitouch/controller/MultiTouchController;

    .line 1303
    return-void

    .line 1302
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOverlayManager(Lorg/osmdroid/views/overlay/OverlayManager;)V
    .locals 0
    .param p1, "overlayManager"    # Lorg/osmdroid/views/overlay/OverlayManager;

    .prologue
    .line 280
    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    .line 281
    return-void
.end method

.method public setPositionAndScale(Ljava/lang/Object;Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "aNewObjPosAndScale"    # Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;
    .param p3, "aTouchPoint"    # Lorg/metalev/multitouch/controller/MultiTouchController$PointInfo;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1265
    invoke-virtual {p2}, Lorg/metalev/multitouch/controller/MultiTouchController$PositionAndScale;->getScale()F

    move-result v0

    .line 1267
    .local v0, "multiTouchScale":F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1268
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1270
    :cond_0
    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1271
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1273
    :cond_1
    iput v0, p0, Lorg/osmdroid/views/MapView;->mMultiTouchScale:F

    .line 1275
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->requestLayout()V

    .line 1276
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1277
    const/4 v1, 0x1

    return v1
.end method

.method protected setProjection(Lorg/osmdroid/views/Projection;)V
    .locals 0
    .param p1, "p"    # Lorg/osmdroid/views/Projection;

    .prologue
    .line 353
    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mProjection:Lorg/osmdroid/views/Projection;

    .line 354
    return-void
.end method

.method public setScrollableAreaLimit(Lorg/osmdroid/util/BoundingBoxE6;)V
    .locals 14
    .param p1, "boundingBox"    # Lorg/osmdroid/util/BoundingBoxE6;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 688
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatNorthE6()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    .line 689
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonEastE6()I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v6

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatSouthE6()I

    move-result v0

    int-to-double v6, v0

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v8

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonWestE6()I

    move-result v0

    int-to-double v8, v0

    const-wide v12, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v12

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v1, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 692
    if-nez p1, :cond_0

    .line 693
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    .line 707
    :goto_0
    return-void

    .line 698
    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatNorthE6()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 699
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonWestE6()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    .line 700
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v4

    const/4 v5, 0x0

    .line 698
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v11

    .line 703
    .local v11, "upperLeft":Landroid/graphics/Point;
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatSouthE6()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    .line 704
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonEastE6()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    .line 705
    invoke-static {}, Lmicrosoft/mappoint/TileSystem;->getMaximumZoomLevel()I

    move-result v4

    const/4 v5, 0x0

    .line 703
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v10

    .line 706
    .local v10, "lowerRight":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Rect;

    iget v1, v11, Landroid/graphics/Point;->x:I

    iget v2, v11, Landroid/graphics/Point;->y:I

    iget v3, v10, Landroid/graphics/Point;->x:I

    iget v4, v10, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setScrollableAreaLimitDouble(Lorg/osmdroid/util/BoundingBox;)V
    .locals 8
    .param p1, "boundingBox"    # Lorg/osmdroid/util/BoundingBox;

    .prologue
    const/16 v4, 0x17

    const/4 v5, 0x0

    .line 719
    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 722
    if-nez p1, :cond_0

    .line 723
    iput-object v5, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    .line 735
    :goto_0
    return-void

    .line 728
    :cond_0
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v0

    .line 729
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v2

    .line 728
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v7

    .line 732
    .local v7, "upperLeft":Landroid/graphics/Point;
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v0

    .line 733
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v2

    .line 732
    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 734
    .local v6, "lowerRight":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Rect;

    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    iget v3, v6, Landroid/graphics/Point;->x:I

    iget v4, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mScrollableAreaLimit:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setTileProvider(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 3
    .param p1, "base"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .prologue
    .line 1621
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->detach()V

    .line 1622
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->clearTileCache()V

    .line 1623
    iput-object p1, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 1624
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mTileRequestCompleteHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileRequestCompleteHandler(Landroid/os/Handler;)V

    .line 1625
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/osmdroid/views/MapView;->updateTileSizeForDensity(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 1627
    new-instance v0, Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 1629
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    iget-object v1, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->setTilesOverlay(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    .line 1630
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 1631
    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 2
    .param p1, "aTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .prologue
    .line 389
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 390
    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView;->updateTileSizeForDensity(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 391
    invoke-direct {p0}, Lorg/osmdroid/views/MapView;->checkZoomButtons()V

    .line 392
    iget-wide v0, p0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/MapView;->setZoomLevel(D)D

    .line 393
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 394
    return-void
.end method

.method public setTilesScaledToDpi(Z)V
    .locals 1
    .param p1, "tilesScaledToDpi"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lorg/osmdroid/views/MapView;->mTilesScaledToDpi:Z

    .line 376
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getTileProvider()Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/osmdroid/views/MapView;->updateTileSizeForDensity(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 377
    return-void
.end method

.method public setUseDataConnection(Z)V
    .locals 1
    .param p1, "aMode"    # Z

    .prologue
    .line 674
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;->setUseDataConnection(Z)V

    .line 675
    return-void
.end method

.method setZoomLevel(D)D
    .locals 23
    .param p1, "aZoomLevel"    # D

    .prologue
    .line 402
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMinZoomLevel()I

    move-result v15

    .line 403
    .local v15, "minZoomLevel":I
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v14

    .line 405
    .local v14, "maxZoomLevel":I
    int-to-double v0, v15

    move-wide/from16 v18, v0

    int-to-double v0, v14

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 406
    .local v6, "newZoomLevel":D
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    .line 408
    .local v8, "curZoomLevel":D
    cmpl-double v4, v6, v8

    if-eqz v4, :cond_1

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_0

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mScroller:Landroid/widget/Scroller;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 411
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/osmdroid/views/MapView;->mIsFlinging:Z

    .line 415
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v11

    .line 417
    .local v11, "centerGeoPoint":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    .line 418
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/osmdroid/views/MapView;->setProjection(Lorg/osmdroid/views/Projection;)V

    .line 419
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->checkZoomButtons()V

    .line 421
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->isLayoutOccurred()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 422
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v4

    invoke-interface {v4, v11}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 425
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 426
    .local v16, "snapPoint":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v5

    .line 427
    .local v5, "pj":Lorg/osmdroid/views/Projection;
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->x:F

    float-to-int v10, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/MapView;->mMultiTouchScalePoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    invoke-interface {v4, v10, v0, v1, v2}, Lorg/osmdroid/views/overlay/OverlayManager;->onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 429
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Point;->y:I

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v4, v10, v0}, Lorg/osmdroid/views/Projection;->fromPixels(IILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v13

    .line 430
    .local v13, "geoPoint":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v4

    invoke-interface {v4, v13}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    .line 433
    .end local v13    # "geoPoint":Lorg/osmdroid/api/IGeoPoint;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/osmdroid/views/MapView;->getScreenRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual/range {v4 .. v10}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->rescaleCache(Lorg/osmdroid/views/Projection;DDLandroid/graphics/Rect;)V

    .line 434
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/osmdroid/views/MapView;->pauseFling:Z

    .line 438
    .end local v5    # "pj":Lorg/osmdroid/views/Projection;
    .end local v16    # "snapPoint":Landroid/graphics/Point;
    :cond_3
    cmpl-double v4, v6, v8

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    if-eqz v4, :cond_4

    .line 439
    new-instance v12, Lorg/osmdroid/events/ZoomEvent;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v6, v7}, Lorg/osmdroid/events/ZoomEvent;-><init>(Lorg/osmdroid/views/MapView;D)V

    .line 440
    .local v12, "event":Lorg/osmdroid/events/ZoomEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/MapView;->mListener:Lorg/osmdroid/events/MapListener;

    invoke-interface {v4, v12}, Lorg/osmdroid/events/MapListener;->onZoom(Lorg/osmdroid/events/ZoomEvent;)Z

    .line 444
    .end local v12    # "event":Lorg/osmdroid/events/ZoomEvent;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->requestLayout()V

    .line 445
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    move-wide/from16 v18, v0

    return-wide v18
.end method

.method public useDataConnection()Z
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lorg/osmdroid/views/MapView;->mMapOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->useDataConnection()Z

    move-result v0

    return v0
.end method

.method zoomIn()Z
    .locals 1

    .prologue
    .line 591
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomIn()Z

    move-result v0

    return v0
.end method

.method zoomInFixing(II)Z
    .locals 1
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 602
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/api/IMapController;->zoomInFixing(II)Z

    move-result v0

    return v0
.end method

.method zoomInFixing(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 4
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 596
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 597
    .local v0, "coords":Landroid/graphics/Point;
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Lorg/osmdroid/api/IMapController;->zoomInFixing(II)Z

    move-result v1

    return v1
.end method

.method zoomOut()Z
    .locals 1

    .prologue
    .line 609
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IMapController;->zoomOut()Z

    move-result v0

    return v0
.end method

.method zoomOutFixing(II)Z
    .locals 1
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 620
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/api/IMapController;->zoomOutFixing(II)Z

    move-result v0

    return v0
.end method

.method zoomOutFixing(Lorg/osmdroid/api/IGeoPoint;)Z
    .locals 3
    .param p1, "point"    # Lorg/osmdroid/api/IGeoPoint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 614
    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 615
    .local v0, "coords":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lorg/osmdroid/views/MapView;->zoomOutFixing(II)Z

    move-result v1

    return v1
.end method

.method public zoomToBoundingBox(Lorg/osmdroid/util/BoundingBox;Z)V
    .locals 20
    .param p1, "boundingBox"    # Lorg/osmdroid/util/BoundingBox;
    .param p2, "animated"    # Z

    .prologue
    .line 461
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v2

    .line 464
    .local v2, "currentBox":Lorg/osmdroid/util/BoundingBox;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v3

    int-to-double v14, v3

    cmpl-double v3, v12, v14

    if-nez v3, :cond_1

    .line 465
    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v4

    .line 469
    .local v4, "maxZoomLatitudeSpan":D
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v3

    int-to-double v12, v3

    .line 470
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v14

    div-double/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    sub-double v8, v12, v14

    .line 474
    .local v8, "requiredLatitudeZoom":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v3

    int-to-double v14, v3

    cmpl-double v3, v12, v14

    if-nez v3, :cond_2

    .line 475
    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v6

    .line 479
    .local v6, "maxZoomLongitudeSpan":D
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v3

    int-to-double v12, v3

    .line 480
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v14

    div-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    sub-double v10, v12, v14

    .line 482
    .local v10, "requiredLongitudeZoom":D
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    const-string v3, "OsmDroid"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "current bounds "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v3, "OsmDroid"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ZoomToBoundingBox calculations: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    if-eqz p2, :cond_4

    .line 489
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v3

    cmpg-double v12, v8, v10

    if-gez v12, :cond_3

    .end local v8    # "requiredLatitudeZoom":D
    :goto_2
    double-to-int v12, v8

    invoke-interface {v3, v12}, Lorg/osmdroid/api/IMapController;->zoomTo(I)Z

    .line 498
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v3

    new-instance v12, Lorg/osmdroid/util/GeoPoint;

    .line 499
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v13

    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/BoundingBox;->getCenter()Lorg/osmdroid/util/GeoPoint;

    move-result-object v13

    .line 500
    invoke-virtual {v13}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v12, v14, v15, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 498
    invoke-interface {v3, v12}, Lorg/osmdroid/api/IMapController;->setCenter(Lorg/osmdroid/api/IGeoPoint;)V

    .line 501
    return-void

    .line 466
    .end local v4    # "maxZoomLatitudeSpan":D
    .end local v6    # "maxZoomLongitudeSpan":D
    .end local v10    # "requiredLongitudeZoom":D
    :cond_1
    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatitudeSpan()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double v4, v12, v14

    goto/16 :goto_0

    .line 476
    .restart local v4    # "maxZoomLatitudeSpan":D
    .restart local v8    # "requiredLatitudeZoom":D
    :cond_2
    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLongitudeSpan()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getMaxZoomLevel()I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/osmdroid/views/MapView;->mZoomLevel:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double v6, v12, v14

    goto/16 :goto_1

    .restart local v6    # "maxZoomLongitudeSpan":D
    .restart local v10    # "requiredLongitudeZoom":D
    :cond_3
    move-wide v8, v10

    .line 489
    goto :goto_2

    .line 493
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v3

    cmpg-double v12, v8, v10

    if-gez v12, :cond_5

    .end local v8    # "requiredLatitudeZoom":D
    :goto_4
    double-to-int v12, v8

    invoke-interface {v3, v12}, Lorg/osmdroid/api/IMapController;->setZoom(I)I

    goto :goto_3

    .restart local v8    # "requiredLatitudeZoom":D
    :cond_5
    move-wide v8, v10

    goto :goto_4
.end method

.method public zoomToBoundingBox(Lorg/osmdroid/util/BoundingBoxE6;)V
    .locals 12
    .param p1, "boundingBox"    # Lorg/osmdroid/util/BoundingBoxE6;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide v10, 0x412e848000000000L    # 1000000.0

    .line 450
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatNorthE6()I

    move-result v0

    int-to-double v2, v0

    div-double/2addr v2, v10

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonEastE6()I

    move-result v0

    int-to-double v4, v0

    div-double/2addr v4, v10

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLatSouthE6()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v6, v10

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBoxE6;->getLonWestE6()I

    move-result v0

    int-to-double v8, v0

    div-double/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    .line 451
    .local v1, "box":Lorg/osmdroid/util/BoundingBox;
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/osmdroid/views/MapView;->zoomToBoundingBox(Lorg/osmdroid/util/BoundingBox;Z)V

    .line 452
    return-void
.end method
