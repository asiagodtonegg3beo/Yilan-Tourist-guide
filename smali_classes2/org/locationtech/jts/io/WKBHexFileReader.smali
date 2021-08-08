.class public Lorg/locationtech/jts/io/WKBHexFileReader;
.super Ljava/lang/Object;
.source "WKBHexFileReader.java"


# static fields
.field private static final MAX_LOOKAHEAD:I = 0x3e8


# instance fields
.field private count:I

.field private file:Ljava/io/File;

.field private limit:I

.field private offset:I

.field private reader:Ljava/io/Reader;

.field private wkbReader:Lorg/locationtech/jts/io/WKBReader;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/locationtech/jts/io/WKBReader;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "wkbReader"    # Lorg/locationtech/jts/io/WKBReader;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->file:Ljava/io/File;

    .line 41
    iput v1, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->count:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->limit:I

    .line 43
    iput v1, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->offset:I

    .line 54
    iput-object p1, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->file:Ljava/io/File;

    .line 55
    iput-object p2, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->wkbReader:Lorg/locationtech/jts/io/WKBReader;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/locationtech/jts/io/WKBReader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "wkbReader"    # Lorg/locationtech/jts/io/WKBReader;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->file:Ljava/io/File;

    .line 41
    iput v1, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->count:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->limit:I

    .line 43
    iput v1, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->offset:I

    .line 77
    iput-object p1, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->reader:Ljava/io/Reader;

    .line 78
    iput-object p2, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->wkbReader:Lorg/locationtech/jts/io/WKBReader;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/locationtech/jts/io/WKBReader;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "wkbReader"    # Lorg/locationtech/jts/io/WKBReader;

    .prologue
    .line 66
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/locationtech/jts/io/WKBHexFileReader;-><init>(Ljava/io/File;Lorg/locationtech/jts/io/WKBReader;)V

    .line 67
    return-void
.end method

.method private isAtEndOfFile(Ljava/io/BufferedReader;)Z
    .locals 3
    .param p1, "bufferedReader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    const/16 v2, 0x3e8

    invoke-virtual {p1, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 162
    new-instance v0, Ljava/io/StreamTokenizer;

    invoke-direct {v0, p1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 163
    .local v0, "tokenizer":Ljava/io/StreamTokenizer;
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    .line 165
    .local v1, "type":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 166
    const/4 v2, 0x1

    .line 169
    :goto_0
    return v2

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 169
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isAtLimit(Ljava/util/List;)Z
    .locals 3
    .param p1, "geoms"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    .line 147
    iget v1, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->limit:I

    if-gez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->limit:I

    if-lt v1, v2, :cond_0

    .line 149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private read(Ljava/io/BufferedReader;)Ljava/util/List;
    .locals 5
    .param p1, "bufferedReader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "geoms":Ljava/util/List;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/locationtech/jts/io/WKBHexFileReader;->isAtEndOfFile(Ljava/io/BufferedReader;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v1}, Lorg/locationtech/jts/io/WKBHexFileReader;->isAtLimit(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 134
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    iget-object v3, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->wkbReader:Lorg/locationtech/jts/io/WKBReader;

    invoke-static {v2}, Lorg/locationtech/jts/io/WKBReader;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/locationtech/jts/io/WKBReader;->read([B)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 138
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    iget v3, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->count:I

    iget v4, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->offset:I

    if-lt v3, v4, :cond_1

    .line 139
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_1
    iget v3, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->count:I

    goto :goto_0

    .line 142
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    .end local v2    # "line":Ljava/lang/String;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public read()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/locationtech/jts/io/ParseException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->reader:Ljava/io/Reader;

    .line 117
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->count:I

    .line 119
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    iget-object v1, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->reader:Ljava/io/Reader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/locationtech/jts/io/WKBHexFileReader;->read(Ljava/io/BufferedReader;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 123
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    iget-object v2, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->reader:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 121
    return-object v1

    .line 123
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->reader:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    throw v1
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 88
    iput p1, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->limit:I

    .line 89
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 98
    iput p1, p0, Lorg/locationtech/jts/io/WKBHexFileReader;->offset:I

    .line 99
    return-void
.end method
