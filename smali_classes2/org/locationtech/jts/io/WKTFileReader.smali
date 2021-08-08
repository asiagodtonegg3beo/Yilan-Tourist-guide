.class public Lorg/locationtech/jts/io/WKTFileReader;
.super Ljava/lang/Object;
.source "WKTFileReader.java"


# static fields
.field private static final MAX_LOOKAHEAD:I = 0x3e8


# instance fields
.field private count:I

.field private file:Ljava/io/File;

.field private limit:I

.field private offset:I

.field private reader:Ljava/io/Reader;

.field private wktReader:Lorg/locationtech/jts/io/WKTReader;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/locationtech/jts/io/WKTReader;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "wktReader"    # Lorg/locationtech/jts/io/WKTReader;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/io/WKTFileReader;->file:Ljava/io/File;

    .line 41
    iput v1, p0, Lorg/locationtech/jts/io/WKTFileReader;->count:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/locationtech/jts/io/WKTFileReader;->limit:I

    .line 43
    iput v1, p0, Lorg/locationtech/jts/io/WKTFileReader;->offset:I

    .line 54
    iput-object p1, p0, Lorg/locationtech/jts/io/WKTFileReader;->file:Ljava/io/File;

    .line 55
    iput-object p2, p0, Lorg/locationtech/jts/io/WKTFileReader;->wktReader:Lorg/locationtech/jts/io/WKTReader;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/locationtech/jts/io/WKTReader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "wktReader"    # Lorg/locationtech/jts/io/WKTReader;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/io/WKTFileReader;->file:Ljava/io/File;

    .line 41
    iput v1, p0, Lorg/locationtech/jts/io/WKTFileReader;->count:I

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/locationtech/jts/io/WKTFileReader;->limit:I

    .line 43
    iput v1, p0, Lorg/locationtech/jts/io/WKTFileReader;->offset:I

    .line 77
    iput-object p1, p0, Lorg/locationtech/jts/io/WKTFileReader;->reader:Ljava/io/Reader;

    .line 78
    iput-object p2, p0, Lorg/locationtech/jts/io/WKTFileReader;->wktReader:Lorg/locationtech/jts/io/WKTReader;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/locationtech/jts/io/WKTReader;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "wktReader"    # Lorg/locationtech/jts/io/WKTReader;

    .prologue
    .line 66
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lorg/locationtech/jts/io/WKTFileReader;-><init>(Ljava/io/File;Lorg/locationtech/jts/io/WKTReader;)V

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
    .line 157
    const/16 v2, 0x3e8

    invoke-virtual {p1, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 159
    new-instance v0, Ljava/io/StreamTokenizer;

    invoke-direct {v0, p1}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 160
    .local v0, "tokenizer":Ljava/io/StreamTokenizer;
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v1

    .line 162
    .local v1, "type":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 163
    const/4 v2, 0x1

    .line 166
    :goto_0
    return v2

    .line 165
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 166
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isAtLimit(Ljava/util/List;)Z
    .locals 3
    .param p1, "geoms"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    .line 144
    iget v1, p0, Lorg/locationtech/jts/io/WKTFileReader;->limit:I

    if-gez v1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lorg/locationtech/jts/io/WKTFileReader;->limit:I

    if-lt v1, v2, :cond_0

    .line 146
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private read(Ljava/io/BufferedReader;)Ljava/util/List;
    .locals 4
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
    :goto_0
    invoke-direct {p0, p1}, Lorg/locationtech/jts/io/WKTFileReader;->isAtEndOfFile(Ljava/io/BufferedReader;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lorg/locationtech/jts/io/WKTFileReader;->isAtLimit(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    iget-object v2, p0, Lorg/locationtech/jts/io/WKTFileReader;->wktReader:Lorg/locationtech/jts/io/WKTReader;

    invoke-virtual {v2, p1}, Lorg/locationtech/jts/io/WKTReader;->read(Ljava/io/Reader;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    .line 135
    .local v0, "g":Lorg/locationtech/jts/geom/Geometry;
    iget v2, p0, Lorg/locationtech/jts/io/WKTFileReader;->count:I

    iget v3, p0, Lorg/locationtech/jts/io/WKTFileReader;->offset:I

    if-lt v2, v3, :cond_0

    .line 136
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    iget v2, p0, Lorg/locationtech/jts/io/WKTFileReader;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/locationtech/jts/io/WKTFileReader;->count:I

    goto :goto_0

    .line 139
    .end local v0    # "g":Lorg/locationtech/jts/geom/Geometry;
    :cond_1
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
    iget-object v1, p0, Lorg/locationtech/jts/io/WKTFileReader;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lorg/locationtech/jts/io/WKTFileReader;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lorg/locationtech/jts/io/WKTFileReader;->reader:Ljava/io/Reader;

    .line 117
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/locationtech/jts/io/WKTFileReader;->count:I

    .line 119
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    iget-object v1, p0, Lorg/locationtech/jts/io/WKTFileReader;->reader:Ljava/io/Reader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 121
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/locationtech/jts/io/WKTFileReader;->read(Ljava/io/BufferedReader;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 123
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    iget-object v2, p0, Lorg/locationtech/jts/io/WKTFileReader;->reader:Ljava/io/Reader;

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

    iget-object v2, p0, Lorg/locationtech/jts/io/WKTFileReader;->reader:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    throw v1
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 88
    iput p1, p0, Lorg/locationtech/jts/io/WKTFileReader;->limit:I

    .line 89
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 98
    iput p1, p0, Lorg/locationtech/jts/io/WKTFileReader;->offset:I

    .line 99
    return-void
.end method
