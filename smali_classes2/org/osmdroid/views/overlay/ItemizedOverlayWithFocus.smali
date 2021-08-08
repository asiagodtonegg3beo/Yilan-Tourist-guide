.class public Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;
.super Lorg/osmdroid/views/overlay/ItemizedIconOverlay;
.source "ItemizedOverlayWithFocus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">",
        "Lorg/osmdroid/views/overlay/ItemizedIconOverlay",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field private final DEFAULTMARKER_BACKGROUNDCOLOR:I

.field private DESCRIPTION_BOX_CORNERWIDTH:I

.field private DESCRIPTION_BOX_PADDING:I

.field private DESCRIPTION_LINE_HEIGHT:I

.field private DESCRIPTION_MAXWIDTH:I

.field private DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

.field private FONT_SIZE_DP:I

.field private UNKNOWN:Ljava/lang/String;

.field private fontSizePixels:I

.field private mContext:Landroid/content/Context;

.field protected mDescriptionPaint:Landroid/graphics/Paint;

.field protected mFocusItemsOnTap:Z

.field protected mFocusedItemIndex:I

.field private final mFocusedScreenCoords:Landroid/graphics/Point;

.field protected mMarkerBackgroundPaint:Landroid/graphics/Paint;

.field protected mMarkerFocusedBackgroundColor:I

.field protected mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

.field private final mRect:Landroid/graphics/Rect;

.field protected mTitlePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;)V
    .locals 0
    .param p1, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p2, "aList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p3, "aOnItemTapListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    invoke-direct {p0, p2, p3, p1}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 4
    .param p2, "pMarker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "pMarkerFocused"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pFocusedBackgroundColor"    # I
    .param p6, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p5, "aOnItemTapListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    const/4 v3, 0x3

    .line 78
    invoke-direct {p0, p1, p2, p5, p6}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    .line 26
    const/16 v0, 0x65

    const/16 v1, 0xb9

    const/16 v2, 0x4a

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DEFAULTMARKER_BACKGROUNDCOLOR:I

    .line 33
    iput v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    .line 34
    iput v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    .line 39
    const/16 v0, 0xe

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->FONT_SIZE_DP:I

    .line 40
    const/16 v0, 0x258

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    .line 41
    const/16 v0, 0x1e

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    .line 51
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    .line 228
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    .line 79
    iput-object p6, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    .line 80
    if-nez p3, :cond_0

    .line 82
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->marker_default_focused_base:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .line 81
    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    .line 88
    :goto_0
    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_1

    .end local p4    # "pFocusedBackgroundColor":I
    :goto_1
    iput p4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    .line 91
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    .line 93
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->unSetFocusedItem()V

    .line 94
    return-void

    .line 86
    .restart local p4    # "pFocusedBackgroundColor":I
    :cond_0
    iput-object p3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 88
    :cond_1
    iget p4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DEFAULTMARKER_BACKGROUNDCOLOR:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 7
    .param p3, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
            "<TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .line 69
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "aOnItemTapListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->marker_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 68
    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ILorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method private calculateDrawSettings()V
    .locals 5

    .prologue
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    const/4 v4, 0x1

    .line 98
    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->FONT_SIZE_DP:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 98
    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    .line 100
    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    .line 103
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    .line 104
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$string;->unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    .line 112
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->fontSizePixels:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 114
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 32
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "osmv"    # Lorg/osmdroid/views/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 233
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    invoke-super/range {p0 .. p3}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    .line 235
    if-eqz p3, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/osmdroid/views/overlay/OverlayItem;

    .line 248
    .local v18, "focusedItem":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 249
    .local v26, "markerFocusedBase":Landroid/graphics/drawable/Drawable;
    if-nez v26, :cond_2

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBase:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 254
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    invoke-virtual {v3, v4, v5}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 256
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 260
    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/overlay/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 262
    .local v21, "itemTitle":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/overlay/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->UNKNOWN:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 269
    .local v20, "itemDescription":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [F

    move-object/from16 v31, v0

    .line 270
    .local v31, "widths":[F
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 272
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v29, "sb":Ljava/lang/StringBuilder;
    const/16 v27, 0x0

    .line 274
    .local v27, "maxWidth":I
    const/4 v10, 0x0

    .line 275
    .local v10, "curLineWidth":I
    const/16 v23, 0x0

    .line 277
    .local v23, "lastStop":I
    const/16 v24, 0x0

    .line 282
    .local v24, "lastwhitespace":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move-object/from16 v0, v31

    array-length v3, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_8

    .line 283
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 284
    move/from16 v24, v19

    .line 287
    :cond_3
    aget v9, v31, v19

    .line 289
    .local v9, "charwidth":F
    int-to-float v3, v10

    add-float/2addr v3, v9

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 290
    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 291
    add-int/lit8 v19, v19, -0x1

    .line 296
    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 297
    const/16 v3, 0xa

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    move/from16 v23, v19

    .line 300
    move/from16 v0, v27

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 301
    const/4 v10, 0x0

    .line 304
    :cond_4
    int-to-float v3, v10

    add-float/2addr v3, v9

    float-to-int v10, v3

    .line 282
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 261
    .end local v9    # "charwidth":F
    .end local v10    # "curLineWidth":I
    .end local v19    # "i":I
    .end local v20    # "itemDescription":Ljava/lang/String;
    .end local v21    # "itemTitle":Ljava/lang/String;
    .end local v23    # "lastStop":I
    .end local v24    # "lastwhitespace":I
    .end local v27    # "maxWidth":I
    .end local v29    # "sb":Ljava/lang/StringBuilder;
    .end local v31    # "widths":[F
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/overlay/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 263
    .restart local v21    # "itemTitle":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lorg/osmdroid/views/overlay/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    .line 293
    .restart local v9    # "charwidth":F
    .restart local v10    # "curLineWidth":I
    .restart local v19    # "i":I
    .restart local v20    # "itemDescription":Ljava/lang/String;
    .restart local v23    # "lastStop":I
    .restart local v24    # "lastwhitespace":I
    .restart local v27    # "maxWidth":I
    .restart local v29    # "sb":Ljava/lang/StringBuilder;
    .restart local v31    # "widths":[F
    :cond_7
    move/from16 v19, v24

    goto :goto_4

    .line 307
    .end local v9    # "charwidth":F
    :cond_8
    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    .line 308
    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 309
    .local v28, "rest":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 310
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .end local v28    # "rest":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 317
    .local v25, "lines":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v0, v3

    move/from16 v30, v0

    .line 319
    .local v30, "titleWidth":I
    move/from16 v0, v27

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 320
    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 323
    .local v17, "descWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v17, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    .line 324
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v12, v3, v4

    .line 325
    .local v12, "descBoxLeft":I
    add-int v3, v12, v17

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v13, v3, v4

    .line 326
    .local v13, "descBoxRight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mRect:Landroid/graphics/Rect;

    iget v11, v3, Landroid/graphics/Rect;->top:I

    .line 327
    .local v11, "descBoxBottom":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    sub-int v3, v11, v3

    move-object/from16 v0, v25

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v14, v3, v4

    .line 332
    .local v14, "descBoxTop":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    new-instance v3, Landroid/graphics/RectF;

    add-int/lit8 v4, v12, -0x1

    int-to-float v4, v4

    add-int/lit8 v5, v14, -0x1

    int-to-float v5, v5

    add-int/lit8 v6, v13, 0x1

    int-to-float v6, v6

    add-int/lit8 v7, v11, 0x1

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 337
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v12

    int-to-float v5, v14

    int-to-float v6, v13

    int-to-float v7, v11

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 341
    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    add-int v15, v12, v3

    .line 342
    .local v15, "descLeft":I
    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    sub-int v16, v11, v3

    .line 345
    .local v16, "descTextLineBottom":I
    move-object/from16 v0, v25

    array-length v3, v0

    add-int/lit8 v22, v3, -0x1

    .local v22, "j":I
    :goto_5
    if-ltz v22, :cond_a

    .line 346
    aget-object v3, v25, v22

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v15

    move/from16 v0, v16

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 347
    move-object/from16 v0, p0

    iget v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    sub-int v16, v16, v3

    .line 345
    add-int/lit8 v22, v22, -0x1

    goto :goto_5

    .line 350
    :cond_a
    int-to-float v3, v15

    move-object/from16 v0, p0

    iget v4, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    sub-int v4, v16, v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 352
    int-to-float v4, v12

    move/from16 v0, v16

    int-to-float v5, v0

    int-to-float v6, v13

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedScreenCoords:Landroid/graphics/Point;

    iget v6, v3, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v8

    move-object/from16 v3, p1

    move-object/from16 v4, v26

    invoke-static/range {v3 .. v8}, Lorg/osmdroid/views/overlay/Overlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZF)V

    goto/16 :goto_0
.end method

.method public getFocusedItem()Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mItemList:Ljava/util/List;

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    goto :goto_0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .prologue
    .line 363
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 364
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mContext:Landroid/content/Context;

    .line 365
    return-void
.end method

.method protected onSingleTapUpHelper(ILorg/osmdroid/views/overlay/OverlayItem;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "index"    # I
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;",
            "Lorg/osmdroid/views/MapView;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusItemsOnTap:Z

    if-eqz v0, :cond_0

    .line 222
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    .line 223
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;->onItemSingleTapUp(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setDescriptionBoxCornerWidth(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 135
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_CORNERWIDTH:I

    .line 136
    return-void
.end method

.method public setDescriptionBoxPadding(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 127
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_BOX_PADDING:I

    .line 128
    return-void
.end method

.method public setDescriptionLineHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 183
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_LINE_HEIGHT:I

    .line 184
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    .line 185
    return-void
.end method

.method public setDescriptionMaxWidth(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 174
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_MAXWIDTH:I

    .line 175
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    .line 176
    return-void
.end method

.method public setDescriptionTitleExtraLineHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 143
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->DESCRIPTION_TITLE_EXTRA_LINE_HEIGHT:I

    .line 144
    return-void
.end method

.method public setFocusItemsOnTap(Z)V
    .locals 0
    .param p1, "doit"    # Z

    .prologue
    .line 212
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusItemsOnTap:Z

    .line 213
    return-void
.end method

.method public setFocusedItem(I)V
    .locals 0
    .param p1, "pIndex"    # I

    .prologue
    .line 195
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    .line 196
    return-void
.end method

.method public setFocusedItem(Lorg/osmdroid/views/overlay/OverlayItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    .local p1, "pItem":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 204
    .local v0, "indexFound":I
    if-gez v0, :cond_0

    .line 205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 208
    :cond_0
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->setFocusedItem(I)V

    .line 209
    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 165
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->FONT_SIZE_DP:I

    .line 166
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->calculateDrawSettings()V

    .line 167
    return-void
.end method

.method public setMarkerBackgroundColor(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 151
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mMarkerFocusedBackgroundColor:I

    .line 152
    return-void
.end method

.method public setMarkerDescriptionForegroundColor(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 157
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mDescriptionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    return-void
.end method

.method public setMarkerTitleForegroundColor(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 154
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    return-void
.end method

.method public unSetFocusedItem()V
    .locals 1

    .prologue
    .line 199
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;, "Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus<TItem;>;"
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlayWithFocus;->mFocusedItemIndex:I

    .line 200
    return-void
.end method
