.class public Lcom/google/appinventor/components/runtime/util/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# static fields
.field private static final BINFILE_DIR:Ljava/lang/String; = "/AppInventorBinaries"

.field private static final LOG_TAG:Ljava/lang/String; = "JsonUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static convertJsonItem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "useDicts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 209
    if-nez p0, :cond_1

    .line 210
    const-string v0, "null"

    .line 243
    .end local p0    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 213
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 214
    if-eqz p1, :cond_2

    .line 215
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getDictionaryFromJsonObject(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v0

    goto :goto_0

    .line 217
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 221
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_4

    .line 222
    check-cast p0, Lorg/json/JSONArray;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 224
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    goto :goto_0

    .line 230
    .end local v0    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_6

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    const-string v2, "false"

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 232
    :cond_5
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 236
    :cond_7
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 239
    :cond_8
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_9

    move-object v0, p0

    .line 240
    goto :goto_0

    .line 243
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encodeJsonObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "jsonObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 495
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "jsonObject is not a legal JSON object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDictionaryFromJsonObject(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 149
    .local v3, "result":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 150
    .local v2, "keys":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 160
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 247
    if-eqz p0, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 248
    :cond_0
    const-string v6, "null"

    .line 301
    .end local p0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 250
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v6, p0, Lgnu/lists/FString;

    if-eqz v6, :cond_2

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 253
    :cond_2
    instance-of v6, p0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v6, :cond_3

    .line 254
    check-cast p0, Lcom/google/appinventor/components/runtime/util/YailList;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->toJSONString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 263
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v6, p0, Lgnu/math/IntFraction;

    if-eqz v6, :cond_4

    .line 264
    check-cast p0, Lgnu/math/IntFraction;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/math/IntFraction;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v6}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 266
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v6, p0, Ljava/lang/Number;

    if-eqz v6, :cond_5

    .line 267
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lorg/json/JSONObject;->numberToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 269
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v6, p0, Ljava/lang/Boolean;

    if-eqz v6, :cond_6

    .line 270
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 272
    :cond_6
    instance-of v6, p0, Ljava/util/List;

    if-eqz v6, :cond_7

    .line 273
    check-cast p0, Ljava/util/List;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 275
    :cond_7
    instance-of v6, p0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v6, :cond_9

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .line 277
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 278
    .local v0, "dict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v4, ""

    .line 279
    .local v4, "sep":Ljava/lang/String;
    const/16 v6, 0x7b

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 281
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const/16 v7, 0x3a

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v4, ","

    .line 286
    goto :goto_1

    .line 287
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_8
    const/16 v6, 0x7d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 290
    .end local v0    # "dict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "sep":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    const-string v6, "["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v5, ""

    .line 294
    .local v5, "separator":Ljava/lang/String;
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    array-length v7, p0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_a

    aget-object v2, p0, v6

    .line 295
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v5, ","

    .line 294
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 298
    .end local v2    # "o":Ljava/lang/Object;
    :cond_a
    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 301
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "separator":Ljava/lang/String;
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static getJsonRepresentationIfValueFileName(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 406
    :try_start_0
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 407
    new-instance v3, Lorg/json/JSONArray;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 408
    .local v3, "valueJsonList":Lorg/json/JSONArray;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 415
    .end local v3    # "valueJsonList":Lorg/json/JSONArray;
    .local v4, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 416
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 417
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    .local v2, "filename":Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Filename Written: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    const-string v5, "file:/"

    const-string v6, "file:///"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 429
    .end local v2    # "filename":Ljava/lang/String;
    .end local v4    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v5

    .line 409
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v5, p1, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 410
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v4, v0

    .restart local v4    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 412
    .end local v4    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v5, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v6, "getJsonRepresentationIfValueFileName called on unknown type"

    .line 413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    .end local p1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "JsonUtil"

    const-string v6, "JSONException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v7

    .line 429
    goto :goto_1

    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v4    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object v5, v7

    .line 422
    goto :goto_1

    :cond_3
    move-object v5, v7

    .line 425
    goto :goto_1
.end method

.method public static getJsonRepresentationIfValueFileName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    const-string v0, "JsonUtil"

    const-string v1, "Calling deprecated function getJsonRepresentationIfValueFileName"

    new-instance v2, Ljava/lang/IllegalAccessException;

    invoke-direct {v2}, Ljava/lang/IllegalAccessException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentationIfValueFileName(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 1
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "useDicts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v1, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-object v1
.end method

.method public static getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 8
    .param p0, "jObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v4, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, "keysList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 122
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "key":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v3, "nestedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->convertJsonItem(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "nestedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    return-object v4
.end method

.method public static getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 3
    .param p0, "jsonString"    # Ljava/lang/String;
    .param p1, "useDicts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 333
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    :cond_0
    const-string v0, ""

    .line 354
    :cond_1
    :goto_0
    return-object v0

    .line 340
    :cond_2
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 342
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_3

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 343
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :cond_4
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 348
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_5

    .line 349
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonArray(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 350
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_7

    .line 351
    if-eqz p1, :cond_6

    .line 352
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getDictionaryFromJsonObject(Lorg/json/JSONObject;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v0

    goto :goto_0

    .line 354
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_6
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getListFromJsonObject(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 357
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_7
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "Invalid JSON string."

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getStringListFromJsonArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p0, "jArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, "returnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 69
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "val":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "val":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private static trimDirectory(ILjava/io/File;)V
    .locals 4
    .param p0, "maxSavedFiles"    # I
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 472
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 474
    .local v1, "files":[Ljava/io/File;
    new-instance v3, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil$1;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 480
    array-length v3, v1

    sub-int v0, v3, p0

    .line 481
    .local v0, "excess":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 482
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 484
    :cond_0
    return-void
.end method

.method private static writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "fileExtension"    # Ljava/lang/String;

    .prologue
    .line 446
    const/4 v5, 0x0

    .line 448
    .local v5, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    .line 449
    new-instance v8, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v9, "File Extension must be three or four characters"

    const-string v10, "Write Error"

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :catch_0
    move-exception v3

    .line 462
    .local v3, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    new-instance v8, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Write"

    invoke-direct {v8, v9, v10}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 464
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_1
    const-string v9, "JsonUtil"

    invoke-static {v9, v5}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    throw v8

    .line 451
    :cond_0
    const/4 v8, 0x0

    :try_start_2
    invoke-static {p1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 452
    .local v0, "content":[B
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/AppInventorBinaries"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, "fullDirName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v2, "destDirectory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 455
    const-string v8, "BinFile"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 456
    .local v1, "dest":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 457
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .local v6, "outStream":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 458
    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v7

    .line 459
    .local v7, "retval":Ljava/lang/String;
    const/16 v8, 0x14

    invoke-static {v8, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->trimDirectory(ILjava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 464
    const-string v8, "JsonUtil"

    invoke-static {v8, v6}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 460
    return-object v7

    .line 464
    .end local v7    # "retval":Ljava/lang/String;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 461
    .end local v5    # "outStream":Ljava/io/FileOutputStream;
    .restart local v6    # "outStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
