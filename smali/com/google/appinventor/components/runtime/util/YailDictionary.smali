.class public Lcom/google/appinventor/components/runtime/util/YailDictionary;
.super Ljava/util/LinkedHashMap;
.source "YailDictionary.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/YailObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/google/appinventor/components/runtime/util/YailObject",
        "<",
        "Lcom/google/appinventor/components/runtime/util/YailList;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL:Ljava/lang/Object;

.field private static final LOG_TAG:Ljava/lang/String; = "YailDictionary"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "prevMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 52
    return-void
.end method

.method private static alistLookup(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "alist"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-virtual {v2}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 313
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 314
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 315
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v1    # "o":Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 322
    .end local v0    # "key":Ljava/lang/Object;
    :goto_0
    return-object v2

    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    move-object v2, v3

    .line 319
    goto :goto_0

    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    move-object v2, v3

    .line 322
    goto :goto_0
.end method

.method public static alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 7
    .param p0, "alist"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 160
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 162
    .local v3, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/lists/LList;

    invoke-virtual {v5}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "o":Ljava/lang/Object;
    move-object v1, v4

    .line 163
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 165
    .local v1, "currentPair":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 166
    .local v0, "currentKey":Ljava/lang/Object;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 168
    .local v2, "currentValue":Ljava/lang/Object;
    instance-of v5, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v2    # "currentValue":Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 171
    .restart local v2    # "currentValue":Ljava/lang/Object;
    :cond_0
    instance-of v5, v2, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_1

    .line 172
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v2    # "currentValue":Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->checkList(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    .restart local v2    # "currentValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 179
    .end local v0    # "currentKey":Ljava/lang/Object;
    .end local v1    # "currentPair":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v2    # "currentValue":Ljava/lang/Object;
    .end local v4    # "o":Ljava/lang/Object;
    :cond_2
    new-instance v5, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v5, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;)V

    return-object v5
.end method

.method private static allOf(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 303
    check-cast p0, Ljava/util/Map;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->allOf(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    .line 307
    .restart local p0    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 304
    :cond_0
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 305
    check-cast p0, Ljava/util/List;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->allOf(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 307
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static allOf(Ljava/util/List;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v2, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v2, :cond_2

    move-object v2, p0

    .line 287
    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    check-cast p0, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-virtual {v2}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 290
    .local v0, "o":Ljava/lang/Object;
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v0    # "o":Ljava/lang/Object;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    .end local v1    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    check-cast p0, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    move-object v1, v2

    .line 297
    :cond_1
    :goto_1
    return-object v1

    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    move-object v1, p0

    goto :goto_1
.end method

.method private static allOf(Ljava/util/Map;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static checkList(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 6
    .param p0, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/Object;

    .line 184
    .local v0, "checked":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 185
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 186
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    const/4 v4, 0x0

    .line 188
    .local v4, "processed":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 190
    .local v3, "o":Ljava/lang/Object;
    instance-of v5, v3, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_2

    move-object v5, v3

    .line 191
    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v3    # "o":Ljava/lang/Object;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v5

    aput-object v5, v0, v1

    .line 193
    const/4 v4, 0x1

    .line 203
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 204
    goto :goto_0

    .restart local v3    # "o":Ljava/lang/Object;
    :cond_1
    move-object v5, v3

    .line 195
    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->checkList(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    aput-object v5, v0, v1

    .line 196
    aget-object v5, v0, v1

    if-eq v5, v3, :cond_0

    .line 197
    const/4 v4, 0x1

    goto :goto_1

    .line 201
    :cond_2
    aput-object v3, v0, v1

    goto :goto_1

    .line 205
    .end local v3    # "o":Ljava/lang/Object;
    :cond_3
    if-eqz v4, :cond_4

    .line 206
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p0

    .line 208
    .end local p0    # "list":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_4
    return-object p0
.end method

.method private static checkListForDicts(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .param p0, "list"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-virtual {v2}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 215
    .local v1, "o":Ljava/lang/Object;
    instance-of v3, v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v3, :cond_0

    .line 216
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->dictToAlist(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v3, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_1

    .line 218
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->checkListForDicts(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    .end local v1    # "o":Ljava/lang/Object;
    :cond_2
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method public static dictToAlist(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 6
    .param p0, "dict"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .prologue
    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method private getFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p2, "currentKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    instance-of v3, p1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .line 242
    .local v2, "offset":I
    :goto_0
    :try_start_0
    instance-of v3, p2, Lgnu/lists/FString;

    if-eqz v3, :cond_1

    .line 243
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 258
    :goto_1
    return-object v3

    .line 240
    .end local v2    # "offset":I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 244
    .restart local v2    # "offset":I
    :cond_1
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 245
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 246
    :cond_2
    instance-of v3, p2, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 247
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v3, "YailDictionary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse key as integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse key as integer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NumberParseException"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 253
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "YailDictionary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested too large of an index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested too large of an index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IndexOutOfBoundsException"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 258
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private static isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;
    .locals 6
    .param p0, "yailList"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    const/4 v5, 0x0

    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "hadPair":Z
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/lists/LList;

    invoke-virtual {v2}, Lgnu/lists/LList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 144
    .local v0, "currentPair":Ljava/lang/Object;
    instance-of v3, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-nez v3, :cond_0

    .line 145
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 155
    .end local v0    # "currentPair":Ljava/lang/Object;
    :goto_1
    return-object v2

    .line 148
    .restart local v0    # "currentPair":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v0    # "currentPair":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 149
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    .line 152
    :cond_1
    const/4 v1, 0x1

    .line 153
    goto :goto_0

    .line 155
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1
.end method

.method private static keyToIndex(Ljava/util/List;Ljava/lang/Object;)I
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 366
    instance-of v5, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_1

    move v2, v3

    .line 368
    .local v2, "offset":I
    :goto_0
    instance-of v5, p1, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 369
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 378
    .local v1, "index":I
    :goto_1
    sub-int/2addr v1, v2

    .line 379
    if-ltz v1, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v3, v2

    if-lt v1, v3, :cond_3

    .line 381
    :cond_0
    :try_start_0
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v4, 0xc81

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int v7, v1, v2

    .line 382
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "YailDictionary"

    const-string v4, "Unable to serialize object as JSON"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    new-instance v3, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JSON Error"

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "index":I
    .end local v2    # "offset":I
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_1
    move v2, v4

    .line 366
    goto :goto_0

    .line 372
    .restart local v2    # "offset":I
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .restart local v1    # "index":I
    goto :goto_1

    .line 373
    .end local v1    # "index":I
    :catch_1
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v6, 0xc82

    new-array v4, v4, [Ljava/lang/Object;

    .line 375
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-direct {v5, v6, v4}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v5

    .line 389
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local p1    # "key":Ljava/lang/Object;
    .restart local v1    # "index":I
    :cond_3
    return v1
.end method

.method private lookupTargetForKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 393
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v0, :cond_0

    .line 394
    check-cast p1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    .line 395
    .restart local p1    # "target":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 396
    check-cast v0, Ljava/util/List;

    check-cast p1, Ljava/util/List;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyToIndex(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 398
    .restart local p1    # "target":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v2, 0xc83

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_2

    const-string v0, "null"

    .line 399
    :goto_1
    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static makeDictionary()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    return-object v0
.end method

.method public static makeDictionary(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 122
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 123
    .local v2, "currentYailList":Lcom/google/appinventor/components/runtime/util/YailList;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, "currentKey":Ljava/lang/Object;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    .line 126
    .local v1, "currentValue":Ljava/lang/Object;
    instance-of v4, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 127
    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v1    # "currentValue":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    .restart local v1    # "currentValue":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local v1    # "currentValue":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->checkList(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    .restart local v1    # "currentValue":Ljava/lang/Object;
    :cond_1
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 137
    .end local v0    # "currentKey":Ljava/lang/Object;
    .end local v1    # "currentValue":Ljava/lang/Object;
    .end local v2    # "currentYailList":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_2
    new-instance v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v4, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;)V

    return-object v4
.end method

.method public static makeDictionary(Ljava/util/Map;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "prevMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static varargs makeDictionary([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 4
    .param p0, "keysAndValues"    # [Ljava/lang/Object;

    .prologue
    .line 101
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected an even number of key-value entries."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 105
    .local v0, "dict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 106
    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 108
    :cond_1
    return-object v0
.end method

.method public static walkKeyPath(Lcom/google/appinventor/components/runtime/util/YailObject;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/YailObject",
            "<*>;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "object":Lcom/google/appinventor/components/runtime/util/YailObject;, "Lcom/google/appinventor/components/runtime/util/YailObject<*>;"
    .local p1, "keysOrIndices":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0, "root"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "keysOrIndices":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 328
    if-eqz p0, :cond_0

    .line 329
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    .end local p0    # "root":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p2

    .line 332
    .restart local p0    # "root":Ljava/lang/Object;
    :cond_1
    if-eqz p0, :cond_0

    .line 336
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 337
    .local v2, "currentKey":Ljava/lang/Object;
    const/4 v5, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 338
    .local v1, "childKeys":Ljava/util/List;, "Ljava/util/List<TT;>;"
    sget-object v5, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    if-ne v2, v5, :cond_2

    .line 339
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->allOf(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 340
    .local v0, "child":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    .line 342
    .end local v0    # "child":Ljava/lang/Object;
    :cond_2
    instance-of v5, p0, Ljava/util/Map;

    if-eqz v5, :cond_3

    .line 343
    check-cast p0, Ljava/util/Map;

    .end local p0    # "root":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 344
    .restart local p0    # "root":Ljava/lang/Object;
    :cond_3
    instance-of v5, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v5, :cond_4

    move-object v5, p0

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 345
    check-cast p0, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local p0    # "root":Ljava/lang/Object;
    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistLookup(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 346
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 347
    invoke-static {v4, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 349
    .end local v4    # "value":Ljava/lang/Object;
    .restart local p0    # "root":Ljava/lang/Object;
    :cond_4
    instance-of v5, p0, Ljava/util/List;

    if-eqz v5, :cond_0

    move-object v5, p0

    .line 350
    check-cast v5, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyToIndex(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    .line 352
    .local v3, "index":I
    :try_start_0
    check-cast p0, Ljava/util/List;

    .end local p0    # "root":Ljava/lang/Object;
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 501
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 504
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 509
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 512
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 517
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 520
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 553
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 554
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 556
    :cond_1
    move v1, p1

    .line 557
    .local v1, "i":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 558
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v1, :cond_2

    .line 559
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 561
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 562
    goto :goto_0

    .line 565
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_3
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "keysOrIndices":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v1, p0

    .line 265
    .local v1, "target":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "target":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 266
    .local v0, "currentKey":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 267
    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "target":Ljava/lang/Object;
    goto :goto_0

    .line 268
    .end local v1    # "target":Ljava/lang/Object;
    :cond_0
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->isAlist(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->alistToDict(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "target":Ljava/lang/Object;
    goto :goto_0

    .line 270
    .end local v1    # "target":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 271
    check-cast v1, Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "target":Ljava/lang/Object;
    goto :goto_0

    .line 273
    .end local v1    # "target":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .line 277
    .end local v0    # "currentKey":Ljava/lang/Object;
    :cond_3
    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary$DictIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 525
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 528
    .end local p1    # "key":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Lgnu/lists/FString;

    if-eqz v0, :cond_1

    .line 529
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 531
    .end local p2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 536
    instance-of v0, p1, Lgnu/lists/FString;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 539
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public setPair(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .param p1, "pair"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method

.method public setValueForKeyPath(Ljava/util/List;Ljava/lang/Object;)V
    .locals 7
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v3, p0

    .line 471
    .local v3, "target":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 474
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 497
    .end local v3    # "target":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_0
    return-void

    .line 478
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 479
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 480
    .local v1, "key":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 482
    invoke-direct {p0, v5, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->lookupTargetForKey(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "target":Ljava/lang/Object;
    move-object v5, v3

    goto :goto_0

    .line 484
    .end local v3    # "target":Ljava/lang/Object;
    :cond_1
    instance-of v4, v5, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v4, :cond_2

    move-object v4, v5

    .line 485
    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-virtual {v4, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 486
    :cond_2
    instance-of v4, v5, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v4, :cond_3

    move-object v2, v5

    .line 487
    check-cast v2, Lgnu/lists/LList;

    .local v2, "l":Lgnu/lists/LList;
    move-object v4, v5

    .line 488
    check-cast v4, Ljava/util/List;

    invoke-static {v4, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyToIndex(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Lgnu/lists/LList;->getIterator(I)Lgnu/lists/SeqPosition;

    move-result-object v4

    invoke-virtual {v4, p2}, Lgnu/lists/SeqPosition;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 489
    .end local v2    # "l":Lgnu/lists/LList;
    :cond_3
    instance-of v4, v5, Ljava/util/List;

    if-eqz v4, :cond_4

    move-object v4, v5

    .line 491
    check-cast v4, Ljava/util/List;

    move-object v6, v5

    check-cast v6, Ljava/util/List;

    invoke-static {v6, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->keyToIndex(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v4, v6, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 493
    :cond_4
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v5, 0xc83

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I)V

    throw v4

    .end local v1    # "key":Ljava/lang/Object;
    .local v3, "target":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_5
    move-object v5, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 545
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JSON Error"

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
