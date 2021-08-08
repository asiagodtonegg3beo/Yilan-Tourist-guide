.class public final enum Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
.super Ljava/lang/Enum;
.source "MapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapScaleUnits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

.field public static final enum IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

.field public static final enum METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

.field public static final enum UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1572
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    .line 1577
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    const-string v1, "METRIC"

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    .line 1582
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    const-string v1, "IMPERIAL"

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    .line 1567
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->METRIC:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->IMPERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->$VALUES:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1567
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1567
    const-class v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;
    .locals 1

    .prologue
    .line 1567
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->$VALUES:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapScaleUnits;

    return-object v0
.end method
