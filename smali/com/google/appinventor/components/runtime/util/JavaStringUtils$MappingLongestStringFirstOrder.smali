.class Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;
.super Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;
.source "JavaStringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MappingLongestStringFirstOrder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;-><init>()V

    return-void
.end method


# virtual methods
.method public changeOrder(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
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
    .line 51
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder$1;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 58
    return-void
.end method
