.class public Lcom/google/appinventor/components/common/ComponentConstants;
.super Ljava/lang/Object;
.source "ComponentConstants.java"


# static fields
.field public static final APP_INVENTOR_MIN_SDK:I = 0x7

.field public static final CANVAS_PREFERRED_HEIGHT:I = 0x30

.field public static final CANVAS_PREFERRED_WIDTH:I = 0x20

.field public static final CIRCLE_PREFERRED_RADIUS:I = 0x1e

.field public static final DEFAULT_ACCENT_COLOR:Ljava/lang/String; = "&HFFFF4081"

.field public static final DEFAULT_PRIMARY_COLOR:Ljava/lang/String; = "&HFF3F51B5"

.field public static final DEFAULT_PRIMARY_DARK_COLOR:Ljava/lang/String; = "&HFF303F9F"

.field public static final DEFAULT_ROW_COLUMN:I = -0x1

.field public static final DEFAULT_THEME:Ljava/lang/String; = "Classic"

.field public static final EMPTY_HV_ARRANGEMENT_HEIGHT:I = 0x64

.field public static final EMPTY_HV_ARRANGEMENT_WIDTH:I = 0x64

.field public static final GRAVITY_BOTTOM:I = 0x3

.field public static final GRAVITY_CENTER_HORIZONTAL:I = 0x3

.field public static final GRAVITY_CENTER_VERTICAL:I = 0x2

.field public static final GRAVITY_LEFT:I = 0x1

.field public static final GRAVITY_RIGHT:I = 0x2

.field public static final GRAVITY_TOP:I = 0x1

.field public static final HORIZONTAL_ALIGNMENT_DEFAULT:I = 0x1

.field public static final LAYOUT_ORIENTATION_HORIZONTAL:I = 0x0

.field public static final LAYOUT_ORIENTATION_VERTICAL:I = 0x1

.field public static final LINESTRING_PREFERRED_LENGTH:I = 0x3c

.field public static final LISTVIEW_FILTER_PREFERRED_HEIGHT:I = 0x1e

.field public static final LISTVIEW_PREFERRED_HEIGHT:I = 0x28

.field public static final LISTVIEW_PREFERRED_WIDTH:I = 0x13b

.field public static final MAP_PREFERRED_HEIGHT:I = 0x90

.field public static final MAP_PREFERRED_WIDTH:I = 0xb0

.field public static final MARKER_PREFERRED_HEIGHT:I = 0x32

.field public static final MARKER_PREFERRED_WIDTH:I = 0x1e

.field public static NONSCROLLABLE_ARRANGEMENT:Z = false

.field public static final POLYGON_PREFERRED_HEIGHT:I = 0x1e

.field public static final POLYGON_PREFERRED_WIDTH:I = 0x32

.field public static final RECTANGLE_PREFERRED_HEIGHT:I = 0x1e

.field public static final RECTANGLE_PREFERRED_WIDTH:I = 0x32

.field public static SCROLLABLE_ARRANGEMENT:Z = false

.field public static final TEXTBOX_PREFERRED_WIDTH:I = 0xa0

.field public static final TEXT_RECEIVING_ALWAYS:I = 0x3

.field public static final TEXT_RECEIVING_FOREGROUND:I = 0x2

.field public static final TEXT_RECEIVING_OFF:I = 0x1

.field public static final VERTICAL_ALIGNMENT_DEFAULT:I = 0x1

.field public static final VIDEOPLAYER_PREFERRED_HEIGHT:I = 0x90

.field public static final VIDEOPLAYER_PREFERRED_WIDTH:I = 0xb0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/appinventor/components/common/ComponentConstants;->SCROLLABLE_ARRANGEMENT:Z

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/appinventor/components/common/ComponentConstants;->NONSCROLLABLE_ARRANGEMENT:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method
