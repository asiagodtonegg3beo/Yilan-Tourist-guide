.class final enum Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;
.super Ljava/lang/Enum;
.source "Navigation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Navigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TransportMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

.field public static final enum CYCLING:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

.field public static final enum DEFAULT:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

.field public static final enum DRIVING:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

.field public static final enum WALKING:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

.field public static final enum WHEELCHAIR:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;


# instance fields
.field private final method:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    const-string v1, "DEFAULT"

    const-string v2, "foot-walking"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->DEFAULT:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    .line 72
    new-instance v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    const-string v1, "DRIVING"

    const-string v2, "driving-car"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->DRIVING:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    .line 73
    new-instance v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    const-string v1, "CYCLING"

    const-string v2, "cycling-regular"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->CYCLING:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    .line 74
    new-instance v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    const-string v1, "WALKING"

    const-string v2, "foot-walking"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->WALKING:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    .line 75
    new-instance v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    const-string v1, "WHEELCHAIR"

    const-string v2, "wheelchair"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->WHEELCHAIR:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    sget-object v1, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->DEFAULT:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->DRIVING:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->CYCLING:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->WALKING:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->WHEELCHAIR:Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->$VALUES:[Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->method:Ljava/lang/String;

    .line 81
    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->method()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->method:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    return-object v0
.end method

.method public static values()[Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->$VALUES:[Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/runtime/Navigation$TransportMethod;

    return-object v0
.end method
