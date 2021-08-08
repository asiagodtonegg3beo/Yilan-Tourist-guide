.class public final enum Lcom/google/appinventor/components/runtime/Player$State;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/Player$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/runtime/Player$State;

.field public static final enum INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

.field public static final enum PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

.field public static final enum PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

.field public static final enum PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

.field public static final enum PREPARED:Lcom/google/appinventor/components/runtime/Player$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v0, Lcom/google/appinventor/components/runtime/Player$State;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    new-instance v0, Lcom/google/appinventor/components/runtime/Player$State;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v3}, Lcom/google/appinventor/components/runtime/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    new-instance v0, Lcom/google/appinventor/components/runtime/Player$State;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v4}, Lcom/google/appinventor/components/runtime/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    new-instance v0, Lcom/google/appinventor/components/runtime/Player$State;

    const-string v1, "PAUSED_BY_USER"

    invoke-direct {v0, v1, v5}, Lcom/google/appinventor/components/runtime/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    new-instance v0, Lcom/google/appinventor/components/runtime/Player$State;

    const-string v1, "PAUSED_BY_EVENT"

    invoke-direct {v0, v1, v6}, Lcom/google/appinventor/components/runtime/Player$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/Player$State;

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->INITIAL:Lcom/google/appinventor/components/runtime/Player$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PREPARED:Lcom/google/appinventor/components/runtime/Player$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PLAYING:Lcom/google/appinventor/components/runtime/Player$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_USER:Lcom/google/appinventor/components/runtime/Player$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/runtime/Player$State;->PAUSED_BY_EVENT:Lcom/google/appinventor/components/runtime/Player$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/appinventor/components/runtime/Player$State;->$VALUES:[Lcom/google/appinventor/components/runtime/Player$State;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Player$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    const-class v0, Lcom/google/appinventor/components/runtime/Player$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Player$State;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/Player$State;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/google/appinventor/components/runtime/Player$State;->$VALUES:[Lcom/google/appinventor/components/runtime/Player$State;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/Player$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/Player$State;

    return-object v0
.end method
