.class Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;
.super Ljava/lang/Object;
.source "JavaStringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MappingOrder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;-><init>()V

    return-void
.end method


# virtual methods
.method public changeOrder(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
