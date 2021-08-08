.class public Lgnu/xquery/util/NodeUtils;
.super Ljava/lang/Object;
.source "NodeUtils.java"


# static fields
.field static collectionNamespace:Ljava/lang/String;

.field public static final collectionResolverSymbol:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 329
    const-string v0, "http://gnu.org/kawa/cached-collections"

    sput-object v0, Lgnu/xquery/util/NodeUtils;->collectionNamespace:Ljava/lang/String;

    .line 370
    const-string v0, "http://www.w3.org/2005/xquery-local-functions"

    const-string v1, "collection-resolver"

    const-string v2, "qexo"

    invoke-static {v0, v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/NodeUtils;->collectionResolverSymbol:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static availableCached(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "base"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 456
    const-string v2, "doc-available"

    invoke-static {p0, p1, v2}, Lgnu/xquery/util/NodeUtils;->resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 457
    if-nez p0, :cond_0

    .line 466
    :goto_0
    return v1

    .line 461
    :cond_0
    :try_start_0
    invoke-static {p0}, Lgnu/kawa/xml/Document;->parseCached(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    const/4 v1, 0x1

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 466
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public static baseUri(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 201
    if-eqz p0, :cond_0

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v1, :cond_2

    :cond_0
    move-object v0, p0

    .line 209
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 203
    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Lgnu/kawa/xml/KNode;

    if-nez v1, :cond_3

    .line 204
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "base-uri"

    const/4 v3, 0x1

    const-string v4, "node()?"

    invoke-direct {v1, v2, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_3
    check-cast p0, Lgnu/kawa/xml/KNode;

    .end local p0    # "arg":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->baseURI()Lgnu/text/Path;

    move-result-object v0

    .line 206
    .local v0, "uri":Lgnu/text/Path;
    if-nez v0, :cond_1

    .line 207
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0
.end method

.method public static collection(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "base"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 376
    const-string v10, "collection"

    invoke-static {p0, p1, v10}, Lgnu/xquery/util/NodeUtils;->resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 377
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v2

    .line 378
    .local v2, "env":Lgnu/mapping/Environment;
    sget-object v7, Lgnu/xquery/util/NodeUtils;->collectionResolverSymbol:Lgnu/mapping/Symbol;

    .line 379
    .local v7, "rsym":Lgnu/mapping/Symbol;
    invoke-virtual {v2, v7, v12, v12}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 380
    .local v8, "rvalue":Ljava/lang/Object;
    if-nez v8, :cond_0

    .line 382
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v10

    invoke-virtual {v2, v10, v12, v12}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 388
    :cond_0
    if-nez v8, :cond_1

    .line 390
    invoke-static {p0}, Lgnu/xquery/util/NodeUtils;->getSavedCollection(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 417
    .end local v8    # "rvalue":Ljava/lang/Object;
    :goto_0
    return-object v10

    .line 392
    .restart local v8    # "rvalue":Ljava/lang/Object;
    :cond_1
    instance-of v10, v8, Ljava/lang/String;

    if-nez v10, :cond_2

    instance-of v10, v8, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v10, :cond_3

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, "str":Ljava/lang/String;
    const/16 v10, 0x3a

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "colon":I
    if-lez v1, :cond_3

    .line 395
    invoke-virtual {v9, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "cname":Ljava/lang/String;
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, "mname":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 410
    .local v5, "rclass":Ljava/lang/Class;
    invoke-static {v5}, Lgnu/bytecode/ClassType;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/ClassType;

    .line 411
    .local v6, "rclassType":Lgnu/bytecode/ClassType;
    sget-object v10, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-static {v6, v4, v13, v10}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v8

    .line 412
    .local v8, "rvalue":Lgnu/mapping/MethodProc;
    if-nez v8, :cond_3

    .line 413
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid collection-resolver: no method "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 402
    .end local v5    # "rclass":Ljava/lang/Class;
    .end local v6    # "rclassType":Lgnu/bytecode/ClassType;
    .local v8, "rvalue":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 404
    .local v3, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid collection-resolver: class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 406
    .end local v3    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 408
    .local v3, "ex":Ljava/lang/Throwable;
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid collection-resolver: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 415
    .end local v0    # "cname":Ljava/lang/String;
    .end local v1    # "colon":I
    .end local v3    # "ex":Ljava/lang/Throwable;
    .end local v4    # "mname":Ljava/lang/String;
    .end local v8    # "rvalue":Ljava/lang/Object;
    .end local v9    # "str":Ljava/lang/String;
    :cond_3
    instance-of v10, v8, Lgnu/mapping/Procedure;

    if-nez v10, :cond_4

    .line 416
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid collection-resolver: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 417
    :cond_4
    check-cast v8, Lgnu/mapping/Procedure;

    invoke-virtual {v8, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public static data$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 4
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 111
    iget-object v1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 112
    .local v1, "out":Lgnu/lists/Consumer;
    instance-of v3, p0, Lgnu/mapping/Values;

    if-eqz v3, :cond_0

    move-object v2, p0

    .line 114
    check-cast v2, Lgnu/mapping/Values;

    .line 115
    .local v2, "vals":Lgnu/mapping/Values;
    invoke-virtual {v2}, Lgnu/mapping/Values;->startPos()I

    move-result v0

    .line 116
    .local v0, "ipos":I
    :goto_0
    invoke-virtual {v2, v0}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v2, v0}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    .end local v0    # "ipos":I
    .end local v2    # "vals":Lgnu/mapping/Values;
    :cond_0
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 121
    :cond_1
    return-void
.end method

.method public static docCached(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "base"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 442
    const-string v0, "doc"

    invoke-static {p0, p1, v0}, Lgnu/xquery/util/NodeUtils;->resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 443
    if-nez p0, :cond_0

    .line 444
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 445
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lgnu/kawa/xml/Document;->parseCached(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v0

    goto :goto_0
.end method

.method public static documentUri(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 179
    if-eqz p0, :cond_0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v2, :cond_2

    :cond_0
    move-object v1, p0

    .line 185
    :cond_1
    :goto_0
    return-object v1

    .line 181
    :cond_2
    instance-of v2, p0, Lgnu/kawa/xml/KNode;

    if-nez v2, :cond_3

    .line 182
    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "xs:document-uri"

    const/4 v4, 0x1

    const-string v5, "node()?"

    invoke-direct {v2, v3, v4, p0, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v0, p0

    .line 183
    check-cast v0, Lgnu/kawa/xml/KNode;

    .line 184
    .local v0, "node":Lgnu/kawa/xml/KNode;
    iget-object v2, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    iget v3, v0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v2, v3}, Lgnu/xml/NodeTree;->documentUriOfPos(I)Ljava/lang/Object;

    move-result-object v1

    .line 185
    .local v1, "uri":Ljava/lang/Object;
    if-nez v1, :cond_1

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0
.end method

.method static getIDs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "collector"    # Ljava/lang/Object;

    .prologue
    .line 222
    instance-of v9, p0, Lgnu/kawa/xml/KNode;

    if-eqz v9, :cond_0

    .line 223
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 224
    :cond_0
    instance-of v9, p0, Lgnu/mapping/Values;

    if-eqz v9, :cond_1

    .line 226
    check-cast p0, Lgnu/mapping/Values;

    .end local p0    # "arg":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, "ar":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_b

    .line 228
    aget-object v9, v0, v2

    invoke-static {v9, p1}, Lgnu/xquery/util/NodeUtils;->getIDs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 232
    .end local v0    # "ar":[Ljava/lang/Object;
    .end local v2    # "i":I
    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string v9, "fn:id"

    const/4 v10, 0x1

    const-string v11, ""

    invoke-static {p0, v9, v10, v11}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 233
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    .line 234
    .local v4, "len":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    move-object v9, p1

    .line 235
    .end local p1    # "collector":Ljava/lang/Object;
    :goto_1
    if-ge v3, v4, :cond_a

    .line 237
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 238
    .local v1, "ch":C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_2

    move v3, v2

    .line 239
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 240
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_2
    invoke-static {v1}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v10

    if-eqz v10, :cond_6

    add-int/lit8 v7, v2, -0x1

    .line 241
    .local v7, "start":I
    :cond_3
    :goto_2
    if-ge v2, v4, :cond_4

    .line 243
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 244
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 250
    :cond_4
    if-ge v7, v4, :cond_5

    .line 252
    invoke-virtual {v8, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "ref":Ljava/lang/String;
    if-nez v9, :cond_8

    .line 254
    move-object p1, v5

    .local p1, "collector":Ljava/lang/String;
    move-object v9, p1

    .line 269
    .end local v5    # "ref":Ljava/lang/String;
    .end local p1    # "collector":Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 270
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .end local v3    # "i":I
    .end local v7    # "start":I
    .restart local v2    # "i":I
    :cond_6
    move v7, v4

    .line 240
    goto :goto_2

    .line 246
    .restart local v7    # "start":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 247
    if-ge v7, v4, :cond_3

    invoke-static {v1}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 248
    move v7, v4

    goto :goto_2

    .line 258
    .restart local v5    # "ref":Ljava/lang/String;
    :cond_8
    instance-of v10, v9, Ljava/util/Stack;

    if-eqz v10, :cond_9

    move-object v6, v9

    .line 259
    check-cast v6, Ljava/util/Stack;

    .line 266
    .local v6, "st":Ljava/util/Stack;
    :goto_4
    invoke-virtual {v6, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 262
    .end local v6    # "st":Ljava/util/Stack;
    :cond_9
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 263
    .restart local v6    # "st":Ljava/util/Stack;
    invoke-virtual {v6, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    move-object p1, v6

    .local p1, "collector":Ljava/util/Stack;
    move-object v9, p1

    goto :goto_4

    .end local v1    # "ch":C
    .end local v2    # "i":I
    .end local v5    # "ref":Ljava/lang/String;
    .end local v6    # "st":Ljava/util/Stack;
    .end local v7    # "start":I
    .end local p1    # "collector":Ljava/util/Stack;
    .restart local v3    # "i":I
    :cond_a
    move-object p1, v9

    .line 272
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v8    # "str":Ljava/lang/String;
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_b
    return-object p1
.end method

.method public static getLang(Lgnu/kawa/xml/KNode;)Ljava/lang/String;
    .locals 5
    .param p0, "node"    # Lgnu/kawa/xml/KNode;

    .prologue
    .line 150
    iget-object v1, p0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    .line 151
    .local v1, "seq":Lgnu/xml/NodeTree;
    iget v2, p0, Lgnu/kawa/xml/KNode;->ipos:I

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    const-string v4, "lang"

    invoke-virtual {v1, v2, v3, v4}, Lgnu/xml/NodeTree;->ancestorAttribute(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "attr":I
    if-nez v0, :cond_0

    .line 155
    const/4 v2, 0x0

    .line 157
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v1, v0}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getSavedCollection(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "uri"    # Ljava/lang/Object;

    .prologue
    .line 366
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, v0}, Lgnu/xquery/util/NodeUtils;->getSavedCollection(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedCollection(Ljava/lang/Object;Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 5
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "env"    # Lgnu/mapping/Environment;

    .prologue
    const/4 v4, 0x0

    .line 352
    if-nez p0, :cond_0

    .line 353
    const-string p0, "#default"

    .line 354
    .end local p0    # "uri":Ljava/lang/Object;
    :cond_0
    sget-object v2, Lgnu/xquery/util/NodeUtils;->collectionNamespace:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 355
    .local v1, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {p1, v1, v4, v4}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 356
    .local v0, "coll":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 357
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "collection \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 358
    :cond_1
    return-object v0
.end method

.method public static id$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 8
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 277
    move-object v1, p1

    check-cast v1, Lgnu/kawa/xml/KNode;

    .line 278
    .local v1, "node":Lgnu/kawa/xml/KNode;
    iget-object v3, v1, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    .line 279
    .local v3, "ntree":Lgnu/xml/NodeTree;
    iget v7, v1, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-static {v3, v7}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v6

    check-cast v6, Lgnu/kawa/xml/KDocument;

    .line 281
    .local v6, "root":Lgnu/kawa/xml/KDocument;
    iget-object v4, p2, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 282
    .local v4, "out":Lgnu/lists/Consumer;
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lgnu/xquery/util/NodeUtils;->getIDs(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "idrefs":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 301
    .end local v0    # "idrefs":Ljava/lang/Object;
    .end local v4    # "out":Lgnu/lists/Consumer;
    :cond_0
    :goto_0
    return-void

    .line 285
    .restart local v0    # "idrefs":Ljava/lang/Object;
    .restart local v4    # "out":Lgnu/lists/Consumer;
    :cond_1
    invoke-virtual {v3}, Lgnu/xml/NodeTree;->makeIDtableIfNeeded()V

    .line 286
    instance-of v7, v4, Lgnu/lists/PositionConsumer;

    if-eqz v7, :cond_3

    instance-of v7, v0, Ljava/lang/String;

    if-nez v7, :cond_2

    instance-of v7, v4, Lgnu/kawa/xml/SortedNodes;

    if-eqz v7, :cond_3

    .line 288
    :cond_2
    check-cast v4, Lgnu/lists/PositionConsumer;

    .end local v4    # "out":Lgnu/lists/Consumer;
    invoke-static {v0, v3, v4}, Lgnu/xquery/util/NodeUtils;->idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V

    goto :goto_0

    .line 289
    .restart local v4    # "out":Lgnu/lists/Consumer;
    :cond_3
    instance-of v7, v0, Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 291
    check-cast v0, Ljava/lang/String;

    .end local v0    # "idrefs":Ljava/lang/Object;
    invoke-virtual {v3, v0}, Lgnu/xml/NodeTree;->lookupID(Ljava/lang/String;)I

    move-result v5

    .line 292
    .local v5, "pos":I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 293
    invoke-static {v3, v5}, Lgnu/kawa/xml/KNode;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v7

    invoke-interface {v4, v7}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 297
    .end local v5    # "pos":I
    .restart local v0    # "idrefs":Ljava/lang/Object;
    :cond_4
    new-instance v2, Lgnu/kawa/xml/SortedNodes;

    invoke-direct {v2}, Lgnu/kawa/xml/SortedNodes;-><init>()V

    .line 298
    .local v2, "nodes":Lgnu/kawa/xml/SortedNodes;
    invoke-static {v0, v3, v2}, Lgnu/xquery/util/NodeUtils;->idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V

    .line 299
    invoke-static {v2, v4}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_0
.end method

.method private static idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V
    .locals 5
    .param p0, "ids"    # Ljava/lang/Object;
    .param p1, "seq"    # Lgnu/xml/NodeTree;
    .param p2, "out"    # Lgnu/lists/PositionConsumer;

    .prologue
    .line 305
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 307
    check-cast p0, Ljava/lang/String;

    .end local p0    # "ids":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lgnu/xml/NodeTree;->lookupID(Ljava/lang/String;)I

    move-result v2

    .line 308
    .local v2, "pos":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 309
    invoke-interface {p2, p1, v2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 318
    .end local v2    # "pos":I
    :cond_0
    return-void

    .line 311
    .restart local p0    # "ids":Ljava/lang/Object;
    :cond_1
    instance-of v4, p0, Ljava/util/Stack;

    if-eqz v4, :cond_0

    move-object v3, p0

    .line 313
    check-cast v3, Ljava/util/Stack;

    .line 314
    .local v3, "st":Ljava/util/Stack;
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v1

    .line 315
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 316
    invoke-virtual {v3, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lgnu/xquery/util/NodeUtils;->idScan(Ljava/lang/Object;Lgnu/xml/NodeTree;Lgnu/lists/PositionConsumer;)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idref(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 322
    move-object v0, p1

    check-cast v0, Lgnu/kawa/xml/KNode;

    .line 323
    .local v0, "node":Lgnu/kawa/xml/KNode;
    iget-object v2, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v2, Lgnu/xml/NodeTree;

    invoke-virtual {v0}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v3

    invoke-static {v2, v3}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v1

    check-cast v1, Lgnu/kawa/xml/KDocument;

    .line 325
    .local v1, "root":Lgnu/kawa/xml/KDocument;
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v2
.end method

.method public static inScopePrefixes$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 4
    .param p0, "node"    # Ljava/lang/Object;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .prologue
    .line 100
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KElement;

    .line 101
    .local v0, "element":Lgnu/kawa/xml/KElement;
    invoke-virtual {v0}, Lgnu/kawa/xml/KElement;->getNodeNameObject()Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "type":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/xml/XName;

    if-eqz v2, :cond_0

    .line 103
    check-cast v1, Lgnu/xml/XName;

    .end local v1    # "type":Ljava/lang/Object;
    iget-object v2, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-static {v1, v2}, Lgnu/xquery/util/NodeUtils;->prefixesFromNodetype(Lgnu/xml/XName;Lgnu/lists/Consumer;)V

    .line 107
    :goto_0
    return-void

    .line 105
    .restart local v1    # "type":Ljava/lang/Object;
    :cond_0
    iget-object v2, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    const-string v3, "xml"

    invoke-interface {v2, v3}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static lang(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p0, "testlang"    # Ljava/lang/Object;
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 163
    if-eqz p0, :cond_0

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v5, :cond_1

    .line 164
    :cond_0
    const-string v3, ""

    .line 167
    .local v3, "teststr":Ljava/lang/String;
    :goto_0
    check-cast p1, Lgnu/kawa/xml/KNode;

    .end local p1    # "node":Ljava/lang/Object;
    invoke-static {p1}, Lgnu/xquery/util/NodeUtils;->getLang(Lgnu/kawa/xml/KNode;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "lang":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 174
    :goto_1
    return v4

    .line 166
    .end local v0    # "lang":Ljava/lang/String;
    .end local v3    # "teststr":Ljava/lang/String;
    .restart local p1    # "node":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "teststr":Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local p1    # "node":Ljava/lang/Object;
    .restart local v0    # "lang":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 171
    .local v1, "langlen":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 172
    .local v2, "testlen":I
    if-le v1, v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3

    .line 173
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    goto :goto_1
.end method

.method public static localName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "node"    # Ljava/lang/Object;

    .prologue
    .line 42
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_1

    .line 43
    :cond_0
    const-string v1, ""

    .line 51
    .end local p0    # "node":Ljava/lang/Object;
    .local v0, "name":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 44
    .end local v0    # "name":Ljava/lang/Object;
    .restart local p0    # "node":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Lgnu/kawa/xml/KNode;

    if-nez v1, :cond_2

    .line 45
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "local-name"

    const/4 v3, 0x1

    const-string v4, "node()?"

    invoke-direct {v1, v2, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_2
    check-cast p0, Lgnu/kawa/xml/KNode;

    .end local p0    # "node":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->getNodeNameObject()Ljava/lang/Object;

    move-result-object v0

    .line 47
    .restart local v0    # "name":Ljava/lang/Object;
    if-eqz v0, :cond_3

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v1, :cond_4

    .line 48
    :cond_3
    const-string v1, ""

    goto :goto_0

    .line 49
    :cond_4
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_5

    .line 50
    check-cast v0, Lgnu/mapping/Symbol;

    .end local v0    # "name":Ljava/lang/Object;
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 51
    .restart local v0    # "name":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static name(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "node"    # Ljava/lang/Object;

    .prologue
    .line 32
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_1

    .line 33
    :cond_0
    const-string v1, ""

    .line 37
    .end local p0    # "node":Ljava/lang/Object;
    .local v0, "name":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 34
    .end local v0    # "name":Ljava/lang/Object;
    .restart local p0    # "node":Ljava/lang/Object;
    :cond_1
    check-cast p0, Lgnu/kawa/xml/KNode;

    .end local p0    # "node":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->getNodeNameObject()Ljava/lang/Object;

    move-result-object v0

    .line 35
    .restart local v0    # "name":Ljava/lang/Object;
    if-eqz v0, :cond_2

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v1, :cond_3

    .line 36
    :cond_2
    const-string v1, ""

    goto :goto_0

    .line 37
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static namespaceURI(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "node"    # Ljava/lang/Object;

    .prologue
    .line 56
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_1

    .line 58
    instance-of v1, p0, Lgnu/kawa/xml/KNode;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "namespace-uri"

    const/4 v3, 0x1

    const-string v4, "node()?"

    invoke-direct {v1, v2, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_0
    check-cast p0, Lgnu/kawa/xml/KNode;

    .end local p0    # "node":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->getNodeNameObject()Ljava/lang/Object;

    move-result-object v0

    .line 61
    .local v0, "name":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    .line 62
    invoke-static {v0}, Lgnu/xquery/util/QNameUtils;->namespaceURIFromQName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    .end local v0    # "name":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static nilled(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 190
    if-eqz p0, :cond_0

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_1

    .line 196
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 192
    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-nez v0, :cond_2

    .line 193
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "nilled"

    const/4 v2, 0x1

    const-string v3, "node()?"

    invoke-direct {v0, v1, v2, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_2
    instance-of v0, p0, Lgnu/kawa/xml/KElement;

    if-nez v0, :cond_3

    .line 195
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 196
    :cond_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public static nodeName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "node"    # Ljava/lang/Object;

    .prologue
    .line 19
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v0, p0

    .line 27
    .end local p0    # "node":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v0

    .line 21
    .restart local p0    # "node":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Lgnu/kawa/xml/KNode;

    if-nez v1, :cond_3

    .line 22
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "node-name"

    const/4 v3, 0x1

    const-string v4, "node()?"

    invoke-direct {v1, v2, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_3
    check-cast p0, Lgnu/kawa/xml/KNode;

    .end local p0    # "node":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/kawa/xml/KNode;->getNodeSymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    .line 24
    .local v0, "sym":Lgnu/mapping/Symbol;
    if-nez v0, :cond_1

    .line 25
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0
.end method

.method public static prefixesFromNodetype(Lgnu/xml/XName;Lgnu/lists/Consumer;)V
    .locals 6
    .param p0, "name"    # Lgnu/xml/XName;
    .param p1, "out"    # Lgnu/lists/Consumer;

    .prologue
    .line 69
    invoke-virtual {p0}, Lgnu/xml/XName;->getNamespaceNodes()Lgnu/xml/NamespaceBinding;

    move-result-object v0

    .line 70
    .local v0, "bindings":Lgnu/xml/NamespaceBinding;
    move-object v1, v0

    .line 71
    .local v1, "ns":Lgnu/xml/NamespaceBinding;
    :goto_0
    if-eqz v1, :cond_4

    .line 74
    invoke-virtual {v1}, Lgnu/xml/NamespaceBinding;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "uri":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 72
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "prefix":Ljava/lang/String;
    move-object v2, v0

    .line 82
    .local v2, "ns2":Lgnu/xml/NamespaceBinding;
    :goto_2
    if-ne v2, v1, :cond_3

    .line 84
    if-nez v3, :cond_2

    const-string v3, ""

    .end local v3    # "prefix":Ljava/lang/String;
    :cond_2
    invoke-interface {p1, v3}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 87
    .restart local v3    # "prefix":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-eq v5, v3, :cond_0

    .line 80
    invoke-virtual {v2}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v2

    goto :goto_2

    .line 94
    .end local v2    # "ns2":Lgnu/xml/NamespaceBinding;
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method static resolve(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "base"    # Ljava/lang/Object;
    .param p2, "fname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 423
    instance-of v1, p0, Ljava/io/File;

    if-nez v1, :cond_0

    instance-of v1, p0, Lgnu/text/Path;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/net/URI;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/net/URL;

    if-nez v1, :cond_0

    .line 429
    const/4 v1, 0x1

    invoke-static {p0, p2, v1, v0}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 430
    .end local p0    # "uri":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v1, :cond_1

    if-nez p0, :cond_2

    .line 432
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v0

    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v0

    goto :goto_0
.end method

.method public static root(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 126
    if-eqz p0, :cond_0

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v1, :cond_1

    .line 131
    .end local p0    # "arg":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 128
    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Lgnu/kawa/xml/KNode;

    if-nez v1, :cond_2

    .line 129
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "root"

    const/4 v3, 0x1

    const-string v4, "node()?"

    invoke-direct {v1, v2, v3, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v0, p0

    .line 130
    check-cast v0, Lgnu/kawa/xml/KNode;

    .line 131
    .local v0, "node":Lgnu/kawa/xml/KNode;
    iget-object v1, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    invoke-virtual {v0}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v2

    invoke-static {v1, v2}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object p0

    goto :goto_0
.end method

.method public static rootDocument(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .locals 5
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 139
    instance-of v1, p0, Lgnu/kawa/xml/KNode;

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "root-document"

    const-string v3, "node()?"

    invoke-direct {v1, v2, v4, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p0

    .line 141
    check-cast v0, Lgnu/kawa/xml/KNode;

    .line 142
    .local v0, "node":Lgnu/kawa/xml/KNode;
    iget-object v1, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    invoke-virtual {v0}, Lgnu/kawa/xml/KNode;->getPos()I

    move-result v2

    invoke-static {v1, v2}, Lgnu/kawa/xml/Nodes;->root(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    .line 143
    instance-of v1, v0, Lgnu/kawa/xml/KDocument;

    if-nez v1, :cond_1

    .line 144
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "root-document"

    const-string v3, "document()"

    invoke-direct {v1, v2, v4, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_1
    check-cast v0, Lgnu/kawa/xml/KDocument;

    .end local v0    # "node":Lgnu/kawa/xml/KNode;
    return-object v0
.end method

.method public static setSavedCollection(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 344
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/xquery/util/NodeUtils;->setSavedCollection(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V

    .line 345
    return-void
.end method

.method public static setSavedCollection(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/Environment;)V
    .locals 3
    .param p0, "uri"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "env"    # Lgnu/mapping/Environment;

    .prologue
    .line 335
    if-nez p0, :cond_0

    .line 336
    const-string p0, "#default"

    .line 337
    .end local p0    # "uri":Ljava/lang/Object;
    :cond_0
    sget-object v1, Lgnu/xquery/util/NodeUtils;->collectionNamespace:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 338
    .local v0, "sym":Lgnu/mapping/Symbol;
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    return-void
.end method
