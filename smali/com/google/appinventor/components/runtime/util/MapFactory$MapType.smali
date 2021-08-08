.class public final enum Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
.super Ljava/lang/Enum;
.source "MapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

.field public static final enum AERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

.field public static final enum ROADS:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

.field public static final enum TERRAIN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

.field public static final enum UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1546
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 1551
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    const-string v1, "ROADS"

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ROADS:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 1556
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    const-string v1, "AERIAL"

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->AERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 1561
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    const-string v1, "TERRAIN"

    invoke-direct {v0, v1, v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->TERRAIN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    .line 1541
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->UNKNOWN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->ROADS:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->AERIAL:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->TERRAIN:Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->$VALUES:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

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
    .line 1541
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1541
    const-class v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;
    .locals 1

    .prologue
    .line 1541
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->$VALUES:[Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/util/MapFactory$MapType;

    return-object v0
.end method
