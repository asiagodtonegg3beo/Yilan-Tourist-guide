.class public final enum Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;
.super Ljava/lang/Enum;
.source "Form.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Dim"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

.field public static final enum HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

.field public static final enum WIDTH:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    new-instance v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    const-string v1, "HEIGHT"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    new-instance v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    const-string v1, "WIDTH"

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->WIDTH:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    .line 265
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->HEIGHT:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->WIDTH:Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->$VALUES:[Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

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
    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 265
    const-class v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->$VALUES:[Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/Form$PercentStorageRecord$Dim;

    return-object v0
.end method
