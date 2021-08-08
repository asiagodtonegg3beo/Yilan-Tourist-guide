.class public final Lcom/google/appinventor/components/runtime/Canvas;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "Canvas.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ANIMATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A two-dimensional touch-sensitive rectangular panel on which drawing can be done and sprites can be moved.</p> <p>The <code>BackgroundColor</code>, <code>PaintColor</code>, <code>BackgroundImage</code>, <code>Width</code>, and <code>Height</code> of the Canvas can be set in either the Designer or in the Blocks Editor.  The <code>Width</code> and <code>Height</code> are measured in pixels and must be positive.</p><p>Any location on the Canvas can be specified as a pair of (X, Y) values, where <ul> <li>X is the number of pixels away from the left edge of the Canvas</li><li>Y is the number of pixels away from the top edge of the Canvas</li></ul>.</p> <p>There are events to tell when and where a Canvas has been touched or a <code>Sprite</code> (<code>ImageSprite</code> or <code>Ball</code>) has been dragged.  There are also methods for drawing points, lines, and circles.</p>"
    version = 0xd
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;,
        Lcom/google/appinventor/components/runtime/Canvas$CanvasView;,
        Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;,
        Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1

.field private static final DEFAULT_LINE_WIDTH:F = 2.0f

.field private static final DEFAULT_PAINT_COLOR:I = -0x1000000

.field private static final DEFAULT_TEXTALIGNMENT:I = 0x1

.field private static final FLING_INTERVAL:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "Canvas"

.field private static final MIN_WIDTH_HEIGHT:I = 0x1


# instance fields
.field private backgroundColor:I

.field private backgroundImagePath:Ljava/lang/String;

.field private final context:Landroid/app/Activity;

.field private drawn:Z

.field private extendMovesOutsideCanvas:Z

.field private final extensionGestureDetectors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;",
            ">;"
        }
    .end annotation
.end field

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private havePermission:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

.field private final paint:Landroid/graphics/Paint;

.field private paintColor:I

.field private final sprites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field private textAlignment:I

.field private final view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 751
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 146
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    .line 148
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->extendMovesOutsideCanvas:Z

    .line 173
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extensionGestureDetectors:Ljava/util/Set;

    .line 175
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 178
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    .line 752
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    .line 755
    new-instance v0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;-><init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    .line 756
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 758
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    .line 759
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 762
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 763
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas;->PaintColor(I)V

    .line 764
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas;->BackgroundColor(I)V

    .line 765
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Canvas;->TextAlignment(I)V

    .line 766
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas;->FontSize(F)V

    .line 768
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    .line 769
    new-instance v0, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    .line 770
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    new-instance v2, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Canvas$FlingGestureListener;-><init>(Lcom/google/appinventor/components/runtime/Canvas;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->mGestureDetector:Landroid/view/GestureDetector;

    .line 771
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Canvas;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas;

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extendMovesOutsideCanvas:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/Canvas;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->drawn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->motionEventParser:Lcom/google/appinventor/components/runtime/Canvas$MotionEventParser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extensionGestureDetectors:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Canvas;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas;

    .prologue
    .line 132
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return v0
.end method

.method static synthetic access$702(Lcom/google/appinventor/components/runtime/Canvas;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas;
    .param p1, "x1"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/appinventor/components/runtime/Canvas;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Canvas;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    return p1
.end method

.method private changePaint(Landroid/graphics/Paint;I)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "argb"    # I

    .prologue
    .line 1122
    if-nez p2, :cond_0

    .line 1124
    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1130
    :goto_0
    return-void

    .line 1125
    :cond_0
    const v0, 0xffffff

    if-ne p2, v0, :cond_1

    .line 1126
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaintTransparent(Landroid/graphics/Paint;)V

    goto :goto_0

    .line 1128
    :cond_1
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method private parsePath([[F)Landroid/graphics/Path;
    .locals 7
    .param p1, "points"    # [[F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1431
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 1432
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1434
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    .line 1436
    .local v2, "scalingFactor":F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1437
    .local v1, "path":Landroid/graphics/Path;
    aget-object v3, p1, v5

    aget v3, v3, v5

    mul-float/2addr v3, v2

    aget-object v4, p1, v5

    aget v4, v4, v6

    mul-float/2addr v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1438
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 1439
    aget-object v3, p1, v0

    aget v3, v3, v5

    mul-float/2addr v3, v2

    aget-object v4, p1, v0

    aget v4, v4, v6

    mul-float/2addr v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1442
    :cond_2
    return-object v1
.end method

.method private parsePointList(Lcom/google/appinventor/components/runtime/util/YailList;)[[F
    .locals 12
    .param p1, "pointList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x0

    .line 1446
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1447
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 1449
    :cond_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    filled-new-array {v6, v11}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    .line 1450
    .local v4, "points":[[F
    const/4 v1, 0x0

    .line 1452
    .local v1, "index":I
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_4

    aget-object v2, v6, v5

    .line 1453
    .local v2, "pointObject":Ljava/lang/Object;
    instance-of v8, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v8, :cond_3

    move-object v3, v2

    .line 1454
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1455
    .local v3, "pointYailList":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 1457
    :try_start_0
    aget-object v8, v4, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9

    .line 1458
    aget-object v8, v4, v1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    aput v10, v8, v9
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1459
    add-int/lit8 v1, v1, 0x1

    .line 1452
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1460
    :catch_0
    move-exception v0

    .line 1461
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1462
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1463
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1466
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length of item YailList("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is not 2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1469
    .end local v3    # "pointYailList":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "item("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") in YailList is not a YailList"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1472
    .end local v2    # "pointObject":Ljava/lang/Object;
    :cond_4
    return-object v4
.end method

.method private saveFile(Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "format"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1670
    const/4 v3, 0x0

    .line 1671
    .local v3, "success":Z
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1673
    .local v2, "fos":Ljava/io/FileOutputStream;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1500(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1600(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1675
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    const/16 v4, 0x64

    :try_start_1
    invoke-virtual {v0, p2, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 1679
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1681
    if-eqz v3, :cond_1

    .line 1682
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1694
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    return-object v4

    .line 1673
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1500(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1679
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1687
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1688
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    const/16 v5, 0x2c3

    new-array v6, v7, [Ljava/lang/Object;

    .line 1689
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1688
    invoke-virtual {v4, p0, p3, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1694
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    const-string v4, ""

    goto :goto_1

    .line 1684
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    const/16 v5, 0x3e9

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, p0, p3, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1690
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 1691
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    const/16 v5, 0x2c4

    new-array v6, v7, [Ljava/lang/Object;

    .line 1692
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1691
    invoke-virtual {v4, p0, p3, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .prologue
    .line 883
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canvas.$add() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public $context()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the canvas background."
    .end annotation

    .prologue
    .line 1022
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1038
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundColor(I)V

    .line 1039
    return-void
.end method

.method public BackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The name of a file containing the background image for the canvas"
    .end annotation

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundImage(Ljava/lang/String;)V

    .line 1067
    return-void
.end method

.method public BackgroundImageinBase64(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x8
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the background image in Base64 format. This requires API level >= 8. For devices with API level less than 8, setting this will end up with an empty background."
    .end annotation

    .prologue
    .line 1081
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundImageBase64(Ljava/lang/String;)V

    .line 1087
    :goto_0
    return-void

    .line 1084
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundImageBase64(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public Clear()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears anything drawn on this Canvas but not any background color or image."
    .end annotation

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1000(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)V

    .line 1346
    return-void
.end method

.method public Dragged(FFFFFFZ)V
    .locals 4
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "prevX"    # F
    .param p4, "prevY"    # F
    .param p5, "currentX"    # F
    .param p6, "currentY"    # F
    .param p7, "draggedAnySprite"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1332
    const-string v0, "Dragged"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 1333
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1332
    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1334
    return-void
.end method

.method public DrawArc(IIIIFFZZ)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "fill"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw an arc on Canvas, by drawing an arc from a specified oval (specified by left, top, right & bottom). Start angle is 0 when heading to the right, and increase when rotate clockwise. When useCenter is true, a sector will be drawed instead of an arc. When fill is true, a filled arc (or sector) will be drawed instead of just an outline."
    .end annotation

    .prologue
    .line 1497
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v6

    .line 1498
    .local v6, "scalingFactor":F
    new-instance v5, Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1499
    .local v5, "p":Landroid/graphics/Paint;
    if-eqz p8, :cond_0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1500
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1100(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    mul-float/2addr v2, v6

    int-to-float v3, p2

    mul-float/2addr v3, v6

    int-to-float v4, p3

    mul-float/2addr v4, v6

    int-to-float v7, p4

    mul-float/2addr v7, v6

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v2, p5

    move v3, p6

    move v4, p7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 1504
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1505
    return-void

    .line 1499
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0
.end method

.method public DrawCircle(IIFZ)V
    .locals 6
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I
    .param p3, "radius"    # F
    .param p4, "fill"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 1373
    int-to-float v4, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    mul-float v1, v4, v5

    .line 1374
    .local v1, "correctedX":F
    int-to-float v4, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    mul-float v2, v4, v5

    .line 1375
    .local v2, "correctedY":F
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v4

    mul-float v0, p3, v4

    .line 1376
    .local v0, "correctedR":F
    new-instance v3, Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1377
    .local v3, "p":Landroid/graphics/Paint;
    if-eqz p4, :cond_0

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1378
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1100(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1379
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1380
    return-void

    .line 1377
    :cond_0
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0
.end method

.method public DrawLine(IIII)V
    .locals 6
    .param p1, "x1"    # I
    .param p2, "y1"    # I
    .param p3, "x2"    # I
    .param p4, "y2"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 1392
    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    mul-float v1, v0, v5

    .line 1393
    .local v1, "correctedX1":F
    int-to-float v0, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    mul-float v2, v0, v5

    .line 1394
    .local v2, "correctedY1":F
    int-to-float v0, p3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    mul-float v3, v0, v5

    .line 1395
    .local v3, "correctedX2":F
    int-to-float v0, p4

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v5

    mul-float v4, v0, v5

    .line 1396
    .local v4, "correctedY2":F
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1100(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1398
    return-void
.end method

.method public DrawPoint(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 1356
    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float v0, v2, v3

    .line 1357
    .local v0, "correctedX":F
    int-to-float v2, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float v1, v2, v3

    .line 1358
    .local v1, "correctedY":F
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1100(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1359
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1360
    return-void
.end method

.method public DrawShape(Lcom/google/appinventor/components/runtime/util/YailList;Z)V
    .locals 7
    .param p1, "pointList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "fill"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws a shape on the canvas. pointList should be a list contains sub-lists with two number which represents a coordinate. The first point and last point does not need to be the same. e.g. ((x1 y1) (x2 y2) (x3 y3)) When fill is true, the shape will be filled."
    .end annotation

    .prologue
    .line 1418
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->parsePointList(Lcom/google/appinventor/components/runtime/util/YailList;)[[F

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/Canvas;->parsePath([[F)Landroid/graphics/Path;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1423
    .local v2, "path":Landroid/graphics/Path;
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1424
    new-instance v1, Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 1425
    .local v1, "p":Landroid/graphics/Paint;
    if-eqz p2, :cond_0

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1426
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1100(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1427
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1428
    .end local v1    # "p":Landroid/graphics/Paint;
    .end local v2    # "path":Landroid/graphics/Path;
    :goto_1
    return-void

    .line 1419
    :catch_0
    move-exception v0

    .line 1420
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "DrawShape"

    const/16 v5, 0x3ec

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1425
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "p":Landroid/graphics/Paint;
    .restart local v2    # "path":Landroid/graphics/Path;
    :cond_0
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0
.end method

.method public DrawText(Ljava/lang/String;II)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the specified text relative to the specified coordinates using the values of the FontSize and TextAlignment properties."
    .end annotation

    .prologue
    .line 1519
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    .line 1520
    .local v2, "fontScalingFactor":F
    int-to-float v3, p2

    mul-float v0, v3, v2

    .line 1521
    .local v0, "correctedX":F
    int-to-float v3, p3

    mul-float v1, v3, v2

    .line 1522
    .local v1, "correctedY":F
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1100(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v0, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1523
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1524
    return-void
.end method

.method public DrawTextAtAngle(Ljava/lang/String;IIF)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "angle"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the specified text starting at the specified coordinates at the specified angle using the values of the FontSize and TextAlignment properties."
    .end annotation

    .prologue
    .line 1539
    int-to-float v2, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 1540
    .local v0, "correctedX":I
    int-to-float v2, p3

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 1541
    .local v1, "correctedY":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v2, p1, v0, v1, p4}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1200(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;Ljava/lang/String;IIF)V

    .line 1542
    return-void
.end method

.method public ExtendMovesOutsideCanvas(Z)V
    .locals 0
    .param p1, "extend"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 1242
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->extendMovesOutsideCanvas:Z

    .line 1243
    return-void
.end method

.method public ExtendMovesOutsideCanvas()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines whether moves can extend beyond the canvas borders.   Default is false. This should normally be false, and the property is provided for backwards compatibility."
        userVisible = true
    .end annotation

    .prologue
    .line 1232
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extendMovesOutsideCanvas:Z

    return v0
.end method

.method public Flung(FFFFFFZ)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "speed"    # F
    .param p4, "heading"    # F
    .param p5, "xvel"    # F
    .param p6, "yvel"    # F
    .param p7, "flungSprite"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1309
    const-string v0, "Flung"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1310
    return-void
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size of text drawn on the canvas."
    .end annotation

    .prologue
    .line 1136
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1137
    .local v0, "scale":F
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public FontSize(F)V
    .locals 3
    .param p1, "size"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1148
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v0

    .line 1149
    .local v0, "scale":F
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    mul-float v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1150
    return-void
.end method

.method public GetBackgroundPixelColor(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the color of the specified point. This includes the background and any drawn points, lines, or circles but not sprites."
    .end annotation

    .prologue
    .line 1557
    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 1558
    .local v0, "correctedX":I
    int-to-float v2, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 1559
    .local v1, "correctedY":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v2, v0, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1300(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I

    move-result v2

    return v2
.end method

.method public GetPixelColor(II)I
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the color of the specified point."
    .end annotation

    .prologue
    .line 1592
    int-to-float v2, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 1593
    .local v0, "correctedX":I
    int-to-float v2, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 1594
    .local v1, "correctedY":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v2, v0, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1400(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I

    move-result v2

    return v2
.end method

.method public Height(I)V
    .locals 4
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 998
    if-gtz p1, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_1

    .line 1000
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 1006
    :goto_0
    return-void

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "Height"

    const/16 v2, 0x3eb

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Initialize()V
    .locals 7

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->havePermission:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->doesAppDeclarePermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    move-object v5, p0

    .line 781
    .local v5, "me":Lcom/google/appinventor/components/runtime/Canvas;
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/Canvas;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v0, Lcom/google/appinventor/components/runtime/Canvas$1;

    const-string v3, "Canvas"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v4, v1

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Canvas$1;-><init>(Lcom/google/appinventor/components/runtime/Canvas;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Lcom/google/appinventor/components/runtime/Canvas;)V

    invoke-virtual {v6, v0}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 789
    .end local v5    # "me":Lcom/google/appinventor/components/runtime/Canvas;
    :cond_0
    return-void
.end method

.method public LineWidth()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The width of lines drawn on the canvas."
    .end annotation

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public LineWidth(F)V
    .locals 2
    .param p1, "width"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1173
    return-void
.end method

.method public PaintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color in which lines are drawn"
    .end annotation

    .prologue
    .line 1102
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paintColor:I

    return v0
.end method

.method public PaintColor(I)V
    .locals 1
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 1117
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->paintColor:I

    .line 1118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->changePaint(Landroid/graphics/Paint;I)V

    .line 1119
    return-void
.end method

.method public Save()Ljava/lang/String;
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves a picture of this Canvas to the device\'s external storage. If an error occurs, the Screen\'s ErrorOccurred event will be called."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1610
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "png"

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getPictureFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1611
    .local v1, "file":Ljava/io/File;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v3, "Save"

    invoke-direct {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Canvas;->saveFile(Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 1621
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .line 1612
    :catch_0
    move-exception v0

    .line 1613
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "Save"

    invoke-virtual {v2, p0, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 1621
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 1614
    :catch_1
    move-exception v0

    .line 1615
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "Save"

    const/16 v4, 0x2c4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 1616
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1615
    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 1617
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1618
    .local v0, "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    const-string v3, "Save"

    .line 1619
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 1618
    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public SaveAs(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves a picture of this Canvas to the device\'s external storage in the file named fileName. fileName must end with one of .jpg, .jpeg, or .png, which determines the file type."
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1640
    const-string v3, ".jpg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ".jpeg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1641
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1653
    .local v2, "format":Landroid/graphics/Bitmap$CompressFormat;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1654
    .local v1, "file":Ljava/io/File;
    const-string v3, "SaveAs"

    invoke-direct {p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Canvas;->saveFile(Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/appinventor/components/runtime/util/FileUtil$FileException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 1664
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :goto_1
    return-object v3

    .line 1642
    :cond_1
    const-string v3, ".png"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1643
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_0

    .line 1644
    .end local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_2
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1645
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1646
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_0

    .line 1648
    .end local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "SaveAs"

    const/16 v5, 0x2c2

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1650
    const-string v3, ""

    goto :goto_1

    .line 1655
    .restart local v2    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :catch_0
    move-exception v0

    .line 1656
    .local v0, "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "SaveAs"

    invoke-virtual {v3, p0, v4, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    .line 1664
    .end local v0    # "e":Lcom/google/appinventor/components/runtime/errors/PermissionException;
    :goto_2
    const-string v3, ""

    goto :goto_1

    .line 1657
    :catch_1
    move-exception v0

    .line 1658
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "SaveAs"

    const/16 v5, 0x2c4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 1659
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1658
    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2

    .line 1660
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1661
    .local v0, "e":Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    const-string v4, "SaveAs"

    .line 1662
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->getErrorMessageNumber()I

    move-result v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 1661
    invoke-virtual {v3, p0, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public SetBackgroundPixelColor(III)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the color of the specified point. This differs from DrawPoint by having an argument for color."
    .end annotation

    .prologue
    .line 1573
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1574
    .local v2, "pixelPaint":Landroid/graphics/Paint;
    invoke-static {v2, p3}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->changePaint(Landroid/graphics/Paint;I)V

    .line 1575
    int-to-float v3, p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 1576
    .local v0, "correctedX":I
    int-to-float v3, p2

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 1577
    .local v1, "correctedY":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->access$1100(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;

    move-result-object v3

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1578
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 1579
    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the alignment of the text drawn by DrawText() or DrawAngle() with respect to the point specified by that command: point at the left of the text, point at the center of the text, or point at the right of the text."
        userVisible = true
    .end annotation

    .prologue
    .line 1192
    iget v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->textAlignment:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .param p1, "alignment"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 1211
    iput p1, p0, Lcom/google/appinventor/components/runtime/Canvas;->textAlignment:I

    .line 1212
    packed-switch p1, :pswitch_data_0

    .line 1223
    :goto_0
    return-void

    .line 1214
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 1217
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 1220
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 1212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public TouchDown(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1272
    const-string v0, "TouchDown"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1273
    return-void
.end method

.method public TouchUp(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1285
    const-string v0, "TouchUp"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1286
    return-void
.end method

.method public Touched(FFZ)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "touchedAnySprite"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 1259
    const-string v0, "Touched"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1260
    return-void
.end method

.method public Width(I)V
    .locals 4
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 974
    if-gtz p1, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3e8

    if-gt p1, v0, :cond_1

    .line 976
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 982
    :goto_0
    return-void

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "Width"

    const/16 v2, 0x3ea

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method addSprite(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 6
    .param p1, "sprite"    # Lcom/google/appinventor/components/runtime/Sprite;

    .prologue
    .line 839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 840
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Sprite;->Z()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Z()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 841
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 848
    :goto_1
    return-void

    .line 839
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 847
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method changeSpriteLayer(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1
    .param p1, "sprite"    # Lcom/google/appinventor/components/runtime/Sprite;

    .prologue
    .line 866
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->removeSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 867
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->addSprite(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 868
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 869
    return-void
.end method

.method protected findSpriteCollisions(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 3
    .param p1, "movedSprite"    # Lcom/google/appinventor/components/runtime/Sprite;

    .prologue
    .line 928
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Sprite;

    .line 929
    .local v0, "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    if-eq v0, p1, :cond_0

    .line 931
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 933
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 934
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 935
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 936
    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 937
    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_0

    .line 943
    :cond_2
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 944
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 945
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 947
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 948
    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V

    goto :goto_0

    .line 955
    .end local v0    # "sprite":Lcom/google/appinventor/components/runtime/Sprite;
    :cond_3
    return-void
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->context:Landroid/app/Activity;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    return-object v0
.end method

.method public ready()Z
    .locals 1

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->drawn:Z

    return v0
.end method

.method registerChange(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1
    .param p1, "sprite"    # Lcom/google/appinventor/components/runtime/Sprite;

    .prologue
    .line 905
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->view:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    .line 906
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->findSpriteCollisions(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 907
    return-void
.end method

.method public registerCustomGestureDetector(Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extensionGestureDetectors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 804
    return-void
.end method

.method public removeCustomGestureDetector(Ljava/lang/Object;)V
    .locals 1
    .param p1, "detector"    # Ljava/lang/Object;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->extensionGestureDetectors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 808
    return-void
.end method

.method removeSprite(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 1
    .param p1, "sprite"    # Lcom/google/appinventor/components/runtime/Sprite;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas;->sprites:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 857
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "height"    # I

    .prologue
    .line 893
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canvas.setChildHeight() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 2
    .param p1, "component"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;
    .param p2, "width"    # I

    .prologue
    .line 888
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Canvas.setChildWidth() called"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
