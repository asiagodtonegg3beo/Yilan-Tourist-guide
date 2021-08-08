.class public Lcom/google/appinventor/components/runtime/util/JavaStringUtils;
.super Ljava/lang/Object;
.source "JavaStringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;,
        Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final LOG_TAG_JOIN_STRINGS:Ljava/lang/String; = "JavaJoinListOfStrings"

.field private static final mappingOrderDictionary:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

.field private static final mappingOrderEarliestOccurrence:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

.field private static final mappingOrderLongestStringFirst:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

.field private static final rangeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderDictionary:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    .line 166
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingLongestStringFirstOrder;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderLongestStringFirst:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    .line 167
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingEarliestOccurrenceFirstOrder;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderEarliestOccurrence:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    .line 168
    new-instance v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$RangeComparator;-><init>(Lcom/google/appinventor/components/runtime/util/JavaStringUtils$1;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->rangeComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyMappings(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/TreeSet;

    sget-object v11, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->rangeComparator:Ljava/util/Comparator;

    invoke-direct {v8, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 339
    .local v8, "ranges":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 342
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 343
    .local v3, "keyPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 346
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 349
    .local v9, "replacement":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 351
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    .line 352
    .local v10, "startId":I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 358
    .local v1, "endId":I
    new-instance v7, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;

    invoke-direct {v7, v10, v1, v9}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;-><init>(IILjava/lang/String;)V

    .line 359
    .local v7, "range":Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;
    invoke-virtual {v8, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    .end local v1    # "endId":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyPattern":Ljava/util/regex/Pattern;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v7    # "range":Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;
    .end local v9    # "replacement":Ljava/lang/String;
    .end local v10    # "startId":I
    :cond_1
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;

    .line 375
    .restart local v7    # "range":Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;
    const/4 v12, 0x0

    iget v13, v7, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->start:I

    invoke-virtual {p0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "left":Ljava/lang/String;
    iget-object v6, v7, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->text:Ljava/lang/String;

    .line 377
    .local v6, "middle":Ljava/lang/String;
    iget v12, v7, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;->end:I

    invoke-virtual {p0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "end":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 379
    goto :goto_1

    .line 381
    .end local v0    # "end":Ljava/lang/String;
    .end local v4    # "left":Ljava/lang/String;
    .end local v6    # "middle":Ljava/lang/String;
    .end local v7    # "range":Lcom/google/appinventor/components/runtime/util/JavaStringUtils$Range;
    :cond_2
    return-object p0
.end method

.method private static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 201
    .local v0, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 203
    .local v1, "item":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 207
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 209
    .end local v1    # "item":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static joinStrings(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "listOfStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "order"    # Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 271
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v4, "stringMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    .local v0, "current":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, "value":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 288
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    :cond_0
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 299
    .end local v0    # "current":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, v3, p0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;->changeOrder(Ljava/util/List;Ljava/lang/String;)V

    .line 302
    invoke-static {p0, v4, v3}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->applyMappings(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static replaceAllMappingsDictionaryOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderDictionary:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceAllMappingsEarliestOccurrenceOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderEarliestOccurrence:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceAllMappingsLongestStringOrder(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->mappingOrderLongestStringFirst:Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/JavaStringUtils;->replaceAllMappings(Ljava/lang/String;Ljava/util/Map;Lcom/google/appinventor/components/runtime/util/JavaStringUtils$MappingOrder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
