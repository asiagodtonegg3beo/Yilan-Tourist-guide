.class public final enum Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;
.super Ljava/lang/Enum;
.source "AppInventorCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Theme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

.field public static final enum BLACK_TITLE_TEXT:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

.field public static final enum CLASSIC:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

.field public static final enum DARK:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

.field public static final enum DEVICE_DEFAULT:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

.field public static final enum PACKAGED:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    const-string v1, "PACKAGED"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->PACKAGED:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 44
    new-instance v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    const-string v1, "CLASSIC"

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->CLASSIC:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 45
    new-instance v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    const-string v1, "DEVICE_DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->DEVICE_DEFAULT:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 46
    new-instance v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    const-string v1, "BLACK_TITLE_TEXT"

    invoke-direct {v0, v1, v5}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->BLACK_TITLE_TEXT:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 47
    new-instance v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    const-string v1, "DARK"

    invoke-direct {v0, v1, v6}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->DARK:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->PACKAGED:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->CLASSIC:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->DEVICE_DEFAULT:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->BLACK_TITLE_TEXT:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->DARK:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->$VALUES:[Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->$VALUES:[Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/AppInventorCompatActivity$Theme;

    return-object v0
.end method
