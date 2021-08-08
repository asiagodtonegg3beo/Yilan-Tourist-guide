.class public Lgnu/kawa/util/PreProcess;
.super Ljava/lang/Object;
.source "PreProcess.java"


# static fields
.field static final JAVA4_FEATURES:Ljava/lang/String; = "+JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio"

.field static final JAVA5_FEATURES:Ljava/lang/String; = "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName"

.field static final NO_JAVA4_FEATURES:Ljava/lang/String; = "-JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android"

.field static final NO_JAVA6_FEATURES:Ljava/lang/String; = "-JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

.field static version_features:[Ljava/lang/String;


# instance fields
.field filename:Ljava/lang/String;

.field keywords:Ljava/util/Hashtable;

.field lineno:I

.field resultBuffer:[B

.field resultLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "java1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-JAVA2 -JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "java2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "+JAVA2 -JAVA5 -use:java.util.IdentityHashMap -use:java.lang.CharSequence -use:java.lang.Throwable.getCause -use:java.net.URI -use:java.util.regex -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAVA5 -JAVA6 -JAVA6COMPAT5 -JAXP-QName -use:java.text.Normalizer -SAX2 -use:java.nio -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "java4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio -use:org.w3c.dom.Node -JAXP-1.3 -use:javax.xml.transform -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "java4x"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 +use:javax.xml.transform -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "java5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName -JAVA6COMPAT5 -Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "java6compat5"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName -JAVA6 -JAVA7 +JAVA6COMPAT5 +use:java.text.Normalizer -use:java.dyn -Android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "java6"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName +JAVA6 -JAVA7 -JAVA6COMPAT5 +use:java.text.Normalizer -use:java.dyn -Android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "java7"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +use:javax.xml.transform +JAXP-1.3 -JAXP-QName +JAVA6 +JAVA7 -JAVA6COMPAT5 +use:java.text.Normalizer +use:java.dyn -Android"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "android"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "+JAVA5 +JAVA2 +use:java.util.IdentityHashMap +use:java.lang.CharSequence +use:java.lang.Throwable.getCause +use:java.net.URI +use:java.util.regex +SAX2 +use:java.nio +use:org.w3c.dom.Node +JAXP-1.3 -JAXP-QName -use:javax.xml.transform -JAVA6 -JAVA6COMPAT5 +Android -JAVA6 -JAVA7 -use:java.dyn -use:java.text.Normalizer"

    aput-object v2, v0, v1

    sput-object v0, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 341
    new-instance v1, Lgnu/kawa/util/PreProcess;

    invoke-direct {v1}, Lgnu/kawa/util/PreProcess;-><init>()V

    .line 343
    .local v1, "pp":Lgnu/kawa/util/PreProcess;
    iget-object v2, v1, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    const-string v3, "true"

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v2, v1, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    const-string v3, "false"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 347
    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Lgnu/kawa/util/PreProcess;->handleArg(Ljava/lang/String;)V

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    return-void
.end method


# virtual methods
.method error(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgnu/kawa/util/PreProcess;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/kawa/util/PreProcess;->lineno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 42
    return-void
.end method

.method public filter(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, p1, v1}, Lgnu/kawa/util/PreProcess;->filter(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "out":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lgnu/kawa/util/PreProcess;->resultBuffer:[B

    const/4 v2, 0x0

    iget v3, p0, Lgnu/kawa/util/PreProcess;->resultLength:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 53
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 54
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pre-processed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    .end local v0    # "out":Ljava/io/FileOutputStream;
    :cond_0
    return-void
.end method

.method public filter(Ljava/lang/String;Ljava/io/BufferedInputStream;)Z
    .locals 31
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/util/PreProcess;->filename:Ljava/lang/String;

    .line 61
    const/4 v7, 0x0

    .line 63
    .local v7, "changed":Z
    const/16 v28, 0x7d0

    move/from16 v0, v28

    new-array v5, v0, [B

    .line 64
    .local v5, "buf":[B
    const/16 v20, 0x0

    .line 65
    .local v20, "len":I
    const/16 v22, 0x0

    .line 66
    .local v22, "lineStart":I
    const/4 v15, -0x1

    .line 67
    .local v15, "dataStart":I
    const/4 v10, 0x0

    .line 68
    .local v10, "cmdLine":I
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 70
    const/4 v12, -0x1

    .line 71
    .local v12, "commentAt":I
    const/4 v13, 0x0

    .line 72
    .local v13, "curIndent":I
    const/16 v24, 0x0

    .line 75
    .local v24, "nesting":I
    const/16 v26, 0x0

    .line 76
    .local v26, "skipNesting":I
    const/4 v9, 0x0

    .line 77
    .local v9, "cmd":Ljava/lang/String;
    const/4 v8, 0x0

    .line 80
    .local v8, "changedLine":I
    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    .line 81
    .local v6, "c":I
    if-gez v6, :cond_2

    .line 268
    :goto_1
    if-eqz v24, :cond_1

    .line 270
    move-object/from16 v0, p0

    iput v10, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 271
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "unterminated "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    .line 273
    :cond_1
    move-object/from16 v0, p0

    iput-object v5, v0, Lgnu/kawa/util/PreProcess;->resultBuffer:[B

    .line 274
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/kawa/util/PreProcess;->resultLength:I

    .line 275
    return v7

    .line 83
    :cond_2
    add-int/lit8 v28, v20, 0xa

    array-length v0, v5

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_3

    .line 85
    mul-int/lit8 v28, v20, 0x2

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 86
    .local v23, "nbuf":[B
    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v23

    move/from16 v2, v29

    move/from16 v3, v20

    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    move-object/from16 v5, v23

    .line 89
    .end local v23    # "nbuf":[B
    :cond_3
    const/16 v28, 0xa

    move/from16 v0, v28

    if-ne v6, v0, :cond_4

    if-lez v20, :cond_4

    add-int/lit8 v28, v20, -0x1

    aget-byte v28, v5, v28

    const/16 v29, 0xd

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 91
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "len":I
    .local v21, "len":I
    int-to-byte v0, v6

    move/from16 v28, v0

    aput-byte v28, v5, v20

    move/from16 v20, v21

    .line 92
    .end local v21    # "len":I
    .restart local v20    # "len":I
    goto :goto_0

    .line 94
    :cond_4
    if-ltz v12, :cond_26

    if-gez v15, :cond_26

    if-gtz v8, :cond_26

    const/16 v28, 0xd

    move/from16 v0, v28

    if-eq v6, v0, :cond_26

    const/16 v28, 0xa

    move/from16 v0, v28

    if-eq v6, v0, :cond_26

    if-eq v12, v13, :cond_5

    const/16 v28, 0x20

    move/from16 v0, v28

    if-eq v6, v0, :cond_26

    const/16 v28, 0x9

    move/from16 v0, v28

    if-eq v6, v0, :cond_26

    .line 100
    :cond_5
    const/16 v28, 0x2f

    move/from16 v0, v28

    if-ne v6, v0, :cond_a

    .line 107
    const/16 v28, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v14

    .line 109
    .local v14, "d":I
    const/16 v28, 0x2f

    move/from16 v0, v28

    if-ne v14, v0, :cond_6

    .line 110
    const/16 v16, 0x0

    .line 118
    .local v16, "doComment":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->reset()V

    .line 122
    .end local v14    # "d":I
    :goto_3
    if-eqz v16, :cond_26

    .line 124
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "len":I
    .restart local v21    # "len":I
    const/16 v28, 0x2f

    aput-byte v28, v5, v20

    .line 125
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "len":I
    .restart local v20    # "len":I
    const/16 v28, 0x2f

    aput-byte v28, v5, v21

    .line 126
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "len":I
    .restart local v21    # "len":I
    const/16 v28, 0x20

    aput-byte v28, v5, v20

    .line 127
    const/4 v8, 0x1

    .line 128
    const/4 v7, 0x1

    .line 131
    .end local v16    # "doComment":Z
    :goto_4
    const/16 v28, 0x20

    move/from16 v0, v28

    if-eq v6, v0, :cond_25

    const/16 v28, 0x9

    move/from16 v0, v28

    if-eq v6, v0, :cond_25

    if-gez v15, :cond_25

    .line 134
    move/from16 v15, v21

    .line 135
    if-lez v24, :cond_25

    if-eq v12, v13, :cond_25

    const/16 v28, 0x2f

    move/from16 v0, v28

    if-ne v6, v0, :cond_25

    .line 137
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    .line 138
    if-gez v6, :cond_b

    move/from16 v20, v21

    .line 139
    .end local v21    # "len":I
    .restart local v20    # "len":I
    goto/16 :goto_1

    .line 111
    .restart local v14    # "d":I
    :cond_6
    const/16 v28, 0x2a

    move/from16 v0, v28

    if-ne v14, v0, :cond_9

    .line 113
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v14

    const/16 v28, 0x20

    move/from16 v0, v28

    if-eq v14, v0, :cond_7

    const/16 v28, 0x9

    move/from16 v0, v28

    if-eq v14, v0, :cond_7

    .line 114
    const/16 v28, 0x23

    move/from16 v0, v28

    if-eq v14, v0, :cond_8

    const/16 v16, 0x1

    .restart local v16    # "doComment":Z
    :goto_5
    goto :goto_2

    .end local v16    # "doComment":Z
    :cond_8
    const/16 v16, 0x0

    goto :goto_5

    .line 117
    :cond_9
    const/16 v16, 0x1

    .restart local v16    # "doComment":Z
    goto :goto_2

    .line 121
    .end local v14    # "d":I
    .end local v16    # "doComment":Z
    :cond_a
    const/16 v16, 0x1

    .restart local v16    # "doComment":Z
    goto :goto_3

    .line 140
    .end local v16    # "doComment":Z
    .end local v20    # "len":I
    .restart local v21    # "len":I
    :cond_b
    const/16 v28, 0x2f

    move/from16 v0, v28

    if-eq v6, v0, :cond_e

    .line 141
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "len":I
    .restart local v20    # "len":I
    const/16 v28, 0x2f

    aput-byte v28, v5, v21

    .line 158
    :goto_6
    int-to-byte v0, v6

    move/from16 v28, v0

    aput-byte v28, v5, v20

    .line 159
    add-int/lit8 v20, v20, 0x1

    .line 160
    const/16 v28, 0xd

    move/from16 v0, v28

    if-eq v6, v0, :cond_c

    const/16 v28, 0xa

    move/from16 v0, v28

    if-ne v6, v0, :cond_23

    .line 162
    :cond_c
    const/16 v17, -0x1

    .line 163
    .local v17, "firstNonSpace":I
    const/16 v19, 0x0

    .line 164
    .local v19, "lastNonSpace":I
    move/from16 v18, v22

    .local v18, "i":I
    :goto_7
    add-int/lit8 v28, v20, -0x1

    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_11

    .line 166
    aget-byte v28, v5, v18

    const/16 v29, 0x20

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_d

    aget-byte v28, v5, v18

    const/16 v29, 0x9

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_d

    .line 168
    move/from16 v19, v18

    .line 169
    if-gez v17, :cond_d

    .line 170
    move/from16 v17, v18

    .line 164
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 144
    .end local v17    # "firstNonSpace":I
    .end local v18    # "i":I
    .end local v19    # "lastNonSpace":I
    .end local v20    # "len":I
    .restart local v21    # "len":I
    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    .line 145
    if-gez v6, :cond_f

    move/from16 v20, v21

    .line 146
    .end local v21    # "len":I
    .restart local v20    # "len":I
    goto/16 :goto_1

    .line 147
    .end local v20    # "len":I
    .restart local v21    # "len":I
    :cond_f
    const/4 v8, -0x1

    .line 148
    const/4 v7, 0x1

    .line 149
    const/16 v28, 0x20

    move/from16 v0, v28

    if-ne v6, v0, :cond_25

    .line 151
    invoke-virtual/range {p2 .. p2}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    .line 152
    const/16 v28, 0x20

    move/from16 v0, v28

    if-eq v6, v0, :cond_10

    const/16 v28, 0x9

    move/from16 v0, v28

    if-ne v6, v0, :cond_25

    .line 153
    :cond_10
    const/4 v15, -0x1

    move/from16 v20, v21

    .end local v21    # "len":I
    .restart local v20    # "len":I
    goto :goto_6

    .line 173
    .restart local v17    # "firstNonSpace":I
    .restart local v18    # "i":I
    .restart local v19    # "lastNonSpace":I
    :cond_11
    sub-int v28, v19, v17

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_16

    aget-byte v28, v5, v17

    const/16 v29, 0x2f

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    add-int/lit8 v28, v17, 0x1

    aget-byte v28, v5, v28

    const/16 v29, 0x2a

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    add-int/lit8 v28, v19, -0x1

    aget-byte v28, v5, v28

    const/16 v29, 0x2a

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    aget-byte v28, v5, v19

    const/16 v29, 0x2f

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 179
    add-int/lit8 v17, v17, 0x2

    .line 181
    :goto_8
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    aget-byte v28, v5, v17

    const/16 v29, 0x20

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 182
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 183
    :cond_12
    add-int/lit8 v19, v19, -0x2

    .line 185
    :goto_9
    move/from16 v0, v19

    move/from16 v1, v17

    if-le v0, v1, :cond_13

    aget-byte v28, v5, v19

    const/16 v29, 0x20

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    .line 186
    add-int/lit8 v19, v19, -0x1

    goto :goto_9

    .line 187
    :cond_13
    aget-byte v28, v5, v17

    const/16 v29, 0x23

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 189
    new-instance v11, Ljava/lang/String;

    sub-int v28, v19, v17

    add-int/lit8 v28, v28, 0x1

    const-string v29, "ISO-8859-1"

    move/from16 v0, v17

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v11, v5, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 192
    .local v11, "cmnt":Ljava/lang/String;
    const/16 v28, 0x20

    move/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v27

    .line 195
    .local v27, "sp":I
    move-object/from16 v0, p0

    iget v10, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 196
    if-lez v27, :cond_17

    .line 198
    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 199
    move/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    .line 200
    .local v25, "rest":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 208
    :goto_a
    const-string v28, "#ifdef"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_14

    const-string v28, "#ifndef"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1b

    .line 210
    :cond_14
    if-nez v4, :cond_15

    .line 212
    sget-object v28, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ":"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ": warning - undefined keyword: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 214
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 216
    :cond_15
    add-int/lit8 v24, v24, 0x1

    .line 217
    if-lez v26, :cond_18

    .line 218
    move v12, v13

    .line 259
    .end local v11    # "cmnt":Ljava/lang/String;
    .end local v25    # "rest":Ljava/lang/String;
    .end local v27    # "sp":I
    :cond_16
    :goto_b
    move/from16 v22, v20

    .line 260
    const/4 v15, -0x1

    .line 261
    const/4 v13, 0x0

    .line 262
    move-object/from16 v0, p0

    iget v0, v0, Lgnu/kawa/util/PreProcess;->lineno:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lgnu/kawa/util/PreProcess;->lineno:I

    .line 263
    const/4 v8, 0x0

    .line 264
    goto/16 :goto_0

    .line 204
    .restart local v11    # "cmnt":Ljava/lang/String;
    .restart local v27    # "sp":I
    :cond_17
    move-object v9, v11

    .line 205
    const-string v25, ""

    .line 206
    .restart local v25    # "rest":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "binding":Ljava/lang/Object;
    goto :goto_a

    .line 219
    .end local v4    # "binding":Ljava/lang/Object;
    :cond_18
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x6e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_19

    const/16 v28, 0x1

    :goto_c
    sget-object v29, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v29

    if-ne v4, v0, :cond_1a

    const/16 v29, 0x1

    :goto_d
    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_16

    .line 222
    move v12, v13

    .line 223
    move/from16 v26, v24

    goto :goto_b

    .line 219
    :cond_19
    const/16 v28, 0x0

    goto :goto_c

    :cond_1a
    const/16 v29, 0x0

    goto :goto_d

    .line 226
    :cond_1b
    const-string v28, "#else"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1e

    .line 228
    if-nez v24, :cond_1c

    .line 229
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "unexpected "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    goto :goto_b

    .line 230
    :cond_1c
    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d

    .line 232
    const/4 v12, -0x1

    .line 233
    const/16 v26, 0x0

    goto :goto_b

    .line 237
    :cond_1d
    move v12, v13

    .line 238
    if-nez v26, :cond_16

    .line 239
    move/from16 v26, v24

    goto :goto_b

    .line 242
    :cond_1e
    const-string v28, "#endif"

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 244
    if-nez v24, :cond_1f

    .line 245
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "unexpected "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    .line 246
    :cond_1f
    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_21

    .line 248
    const/16 v26, 0x0

    .line 249
    const/4 v12, -0x1

    .line 253
    :cond_20
    :goto_e
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_b

    .line 251
    :cond_21
    if-lez v26, :cond_20

    .line 252
    move v12, v13

    goto :goto_e

    .line 256
    :cond_22
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "unknown command: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lgnu/kawa/util/PreProcess;->error(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 265
    .end local v11    # "cmnt":Ljava/lang/String;
    .end local v17    # "firstNonSpace":I
    .end local v18    # "i":I
    .end local v19    # "lastNonSpace":I
    .end local v25    # "rest":Ljava/lang/String;
    .end local v27    # "sp":I
    :cond_23
    if-gez v15, :cond_0

    .line 266
    const/16 v28, 0x9

    move/from16 v0, v28

    if-ne v6, v0, :cond_24

    add-int/lit8 v28, v13, 0x8

    and-int/lit8 v13, v28, -0x8

    :goto_f
    goto/16 :goto_0

    :cond_24
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    .end local v20    # "len":I
    .restart local v21    # "len":I
    :cond_25
    move/from16 v20, v21

    .end local v21    # "len":I
    .restart local v20    # "len":I
    goto/16 :goto_6

    :cond_26
    move/from16 v21, v20

    .end local v20    # "len":I
    .restart local v21    # "len":I
    goto/16 :goto_4
.end method

.method handleArg(Ljava/lang/String;)V
    .locals 14
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x2d

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v8, 0x1

    .line 280
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x25

    if-ne v9, v10, :cond_2

    .line 282
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 283
    const/4 v4, 0x0

    .line 285
    .local v4, "i":I
    :goto_0
    sget-object v8, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    array-length v8, v8

    if-lt v4, v8, :cond_0

    .line 287
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    .line 290
    :cond_0
    sget-object v8, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 292
    sget-object v8, Lgnu/kawa/util/PreProcess;->version_features:[Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    aget-object v3, v8, v9

    .line 293
    .local v3, "features":Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(variant "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " maps to: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 294
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 295
    .local v6, "tokenizer":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 296
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgnu/kawa/util/PreProcess;->handleArg(Ljava/lang/String;)V

    goto :goto_1

    .line 283
    .end local v3    # "features":Ljava/lang/String;
    .end local v6    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 301
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2b

    if-ne v9, v10, :cond_4

    .line 302
    iget-object v9, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_3
    :goto_2
    return-void

    .line 303
    :cond_4
    invoke-virtual {p1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_9

    .line 305
    const/16 v9, 0x3d

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 306
    .local v1, "eq":I
    if-le v1, v8, :cond_8

    .line 308
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v13, :cond_5

    const/4 v8, 0x2

    :cond_5
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "keyword":Ljava/lang/String;
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 311
    .local v7, "value":Ljava/lang/String;
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 312
    .local v0, "b":Ljava/lang/Boolean;
    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 313
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 319
    :cond_6
    :goto_3
    iget-object v8, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {v8, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 314
    :cond_7
    const-string v8, "false"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 316
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid value "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto :goto_3

    .line 322
    .end local v0    # "b":Ljava/lang/Boolean;
    .end local v5    # "keyword":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_8
    iget-object v9, p0, Lgnu/kawa/util/PreProcess;->keywords:Ljava/util/Hashtable;

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 328
    .end local v1    # "eq":I
    :cond_9
    :try_start_0
    invoke-virtual {p0, p1}, Lgnu/kawa/util/PreProcess;->filter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 330
    :catch_0
    move-exception v2

    .line 332
    .local v2, "ex":Ljava/lang/Throwable;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "caught "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 334
    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_2
.end method
