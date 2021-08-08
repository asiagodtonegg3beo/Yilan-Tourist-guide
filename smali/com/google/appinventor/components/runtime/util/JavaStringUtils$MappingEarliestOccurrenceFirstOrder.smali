.class Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;
.super Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;
.source "JavaStringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MappingEarliestOccurrenceFirstOrder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;-><init>()V

    return-void
.end method


# virtual methods
.method public changeOrder(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
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
    .line 74
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v2, "occurrenceIndices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, "firstIndex":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 84
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    add-int v0, v4, v5

    .line 88
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    .end local v0    # "firstIndex":I
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder$1;

    invoke-direct {v3, p0, v2}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder$1;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;Ljava/util/Map;)V

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    return-void
.end method
