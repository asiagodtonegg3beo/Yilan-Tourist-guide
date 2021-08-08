.class public Lorg/osmdroid/util/GEMFFile;
.super Ljava/lang/Object;
.source "GEMFFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/util/GEMFFile$GEMFInputStream;,
        Lorg/osmdroid/util/GEMFFile$GEMFRange;
    }
.end annotation


# static fields
.field private static final FILE_COPY_BUFFER_SIZE:I = 0x400

.field private static final FILE_SIZE_LIMIT:J = 0x40000000L

.field private static final TILE_SIZE:I = 0x100

.field private static final U32_SIZE:I = 0x4

.field private static final U64_SIZE:I = 0x8

.field private static final VERSION:I = 0x4


# instance fields
.field private mCurrentSource:I

.field private final mFileNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/RandomAccessFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocation:Ljava/lang/String;

.field private final mRangeData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/util/GEMFFile$GEMFRange;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceLimited:Z

.field private final mSources:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "pLocation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/osmdroid/util/GEMFFile;-><init>(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    .line 64
    iput-boolean v1, p0, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    .line 65
    iput v1, p0, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    .line 91
    iput-object p1, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Lorg/osmdroid/util/GEMFFile;->openFiles()V

    .line 93
    invoke-direct {p0}, Lorg/osmdroid/util/GEMFFile;->readHeader()V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 57
    .param p1, "pLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "pSourceFolders":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    .line 52
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    .line 55
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    .line 58
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    .line 61
    new-instance v43, Ljava/util/LinkedHashMap;

    invoke-direct/range {v43 .. v43}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    .line 64
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    .line 65
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    .line 128
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    .line 131
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 134
    .local v5, "dirIndex":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;>;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :goto_0
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_3

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/io/File;

    .line 136
    .local v24, "sourceDir":Ljava/io/File;
    new-instance v41, Ljava/util/LinkedHashMap;

    invoke-direct/range {v41 .. v41}, Ljava/util/LinkedHashMap;-><init>()V

    .line 139
    .local v41, "zList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v47

    move-object/from16 v0, v47

    array-length v0, v0

    move/from16 v48, v0

    const/16 v43, 0x0

    move/from16 v45, v43

    :goto_1
    move/from16 v0, v45

    move/from16 v1, v48

    if-ge v0, v1, :cond_2

    aget-object v40, v47, v45

    .line 142
    .local v40, "zDir":Ljava/io/File;
    :try_start_0
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    new-instance v30, Ljava/util/LinkedHashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/LinkedHashMap;-><init>()V

    .line 150
    .local v30, "xList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;"
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v49

    move-object/from16 v0, v49

    array-length v0, v0

    move/from16 v50, v0

    const/16 v43, 0x0

    move/from16 v44, v43

    :goto_2
    move/from16 v0, v44

    move/from16 v1, v50

    if-ge v0, v1, :cond_1

    aget-object v29, v49, v44

    .line 154
    .local v29, "xDir":Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    new-instance v36, Ljava/util/LinkedHashMap;

    invoke-direct/range {v36 .. v36}, Ljava/util/LinkedHashMap;-><init>()V

    .line 160
    .local v36, "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v51

    move-object/from16 v0, v51

    array-length v0, v0

    move/from16 v52, v0

    const/16 v43, 0x0

    :goto_3
    move/from16 v0, v43

    move/from16 v1, v52

    if-ge v0, v1, :cond_0

    aget-object v35, v51, v43

    .line 163
    .local v35, "yFile":Ljava/io/File;
    :try_start_2
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x0

    .line 164
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v55

    const/16 v56, 0x2e

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->indexOf(I)I

    move-result v55

    .line 163
    invoke-virtual/range {v53 .. v55}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 169
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x0

    .line 170
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v55

    const/16 v56, 0x2e

    invoke-virtual/range {v55 .. v56}, Ljava/lang/String;->indexOf(I)I

    move-result v55

    .line 169
    invoke-virtual/range {v53 .. v55}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v36

    move-object/from16 v1, v53

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :goto_4
    add-int/lit8 v43, v43, 0x1

    goto :goto_3

    .line 143
    .end local v29    # "xDir":Ljava/io/File;
    .end local v30    # "xList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;"
    .end local v35    # "yFile":Ljava/io/File;
    .end local v36    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    :catch_0
    move-exception v8

    .line 139
    :goto_5
    add-int/lit8 v43, v45, 0x1

    move/from16 v45, v43

    goto/16 :goto_1

    .line 155
    .restart local v29    # "xDir":Ljava/io/File;
    .restart local v30    # "xList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;"
    :catch_1
    move-exception v8

    .line 150
    :goto_6
    add-int/lit8 v43, v44, 0x1

    move/from16 v44, v43

    goto :goto_2

    .line 165
    .restart local v35    # "yFile":Ljava/io/File;
    .restart local v36    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    :catch_2
    move-exception v8

    .line 166
    .local v8, "e":Ljava/lang/NumberFormatException;
    goto :goto_4

    .line 173
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .end local v35    # "yFile":Ljava/io/File;
    :cond_0
    new-instance v43, Ljava/lang/Integer;

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v43

    move-object/from16 v1, v51

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v43

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 176
    .end local v29    # "xDir":Ljava/io/File;
    .end local v36    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    :cond_1
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 179
    .end local v30    # "xList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;"
    .end local v40    # "zDir":Ljava/io/File;
    :cond_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v5, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 183
    .end local v24    # "sourceDir":Ljava/io/File;
    .end local v41    # "zList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;>;"
    :cond_3
    new-instance v25, Ljava/util/LinkedHashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/LinkedHashMap;-><init>()V

    .line 184
    .local v25, "sourceIndex":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    .line 185
    .local v16, "indexSource":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 186
    .local v22, "si":I
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :goto_7
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_4

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 187
    .local v23, "source":Ljava/lang/String;
    new-instance v44, Ljava/lang/Integer;

    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v44, Ljava/lang/Integer;

    move-object/from16 v0, v44

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v44

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    add-int/lit8 v22, v22, 0x1

    .line 190
    goto :goto_7

    .line 193
    .end local v23    # "source":Ljava/lang/String;
    :cond_4
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v20, "ranges":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GEMFFile$GEMFRange;>;"
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_5
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_15

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 196
    .restart local v23    # "source":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    invoke-virtual/range {v43 .. v43}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v45

    :cond_6
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_5

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/Integer;

    .line 199
    .local v42, "zoom":Ljava/lang/Integer;
    new-instance v39, Ljava/util/LinkedHashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/LinkedHashMap;-><init>()V

    .line 202
    .local v39, "ySets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    new-instance v46, Ljava/util/TreeSet;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    invoke-virtual/range {v43 .. v43}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {v46 .. v46}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :cond_7
    :goto_8
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_a

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Integer;

    .line 204
    .local v28, "x":Ljava/lang/Integer;
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v38, "ySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    invoke-virtual/range {v43 .. v43}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :goto_9
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v47

    if-eqz v47, :cond_8

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    .line 206
    .local v34, "y":Ljava/lang/Integer;
    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 209
    .end local v34    # "y":Ljava/lang/Integer;
    :cond_8
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v43

    if-eqz v43, :cond_7

    .line 213
    invoke-static/range {v38 .. v38}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 215
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_9

    .line 216
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_9
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/List;

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 223
    .end local v28    # "x":Ljava/lang/Integer;
    .end local v38    # "ySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_a
    new-instance v33, Ljava/util/LinkedHashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/LinkedHashMap;-><init>()V

    .line 226
    .local v33, "xSets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-virtual/range {v39 .. v39}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :cond_b
    :goto_a
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_f

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/util/List;

    .line 228
    .restart local v38    # "ySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v31, Ljava/util/TreeSet;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Collection;

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 230
    .local v31, "xList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v32, "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .local v13, "i":I
    :goto_b
    invoke-virtual/range {v31 .. v31}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    if-ge v13, v0, :cond_e

    .line 232
    new-instance v43, Ljava/lang/Integer;

    move-object/from16 v0, v43

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_d

    .line 233
    new-instance v43, Ljava/lang/Integer;

    move-object/from16 v0, v43

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_c
    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 235
    :cond_d
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v43

    if-lez v43, :cond_c

    .line 236
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .restart local v32    # "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_c

    .line 242
    :cond_e
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v43

    if-lez v43, :cond_b

    .line 243
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 248
    .end local v13    # "i":I
    .end local v31    # "xList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v32    # "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v38    # "ySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_f
    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :cond_10
    :goto_d
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_6

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/util/List;

    .line 250
    .restart local v32    # "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v37, Ljava/util/TreeSet;

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 251
    .local v37, "yList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    new-instance v31, Ljava/util/TreeSet;

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/Collection;

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 253
    .restart local v31    # "xList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    new-instance v17, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    const/16 v43, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/util/GEMFFile$GEMFRange;-><init>(Lorg/osmdroid/util/GEMFFile;Lorg/osmdroid/util/GEMFFile$1;)V

    .line 254
    .local v17, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, v42

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    .line 255
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 256
    invoke-virtual/range {v31 .. v31}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    .line 257
    invoke-virtual/range {v31 .. v31}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    .line 259
    invoke-virtual/range {v37 .. v37}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .restart local v13    # "i":I
    :goto_e
    invoke-virtual/range {v37 .. v37}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    if-ge v13, v0, :cond_14

    .line 260
    new-instance v43, Ljava/lang/Integer;

    move-object/from16 v0, v43

    invoke-direct {v0, v13}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_13

    .line 261
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v43, v0

    if-nez v43, :cond_11

    .line 262
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    .line 264
    :cond_11
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    .line 259
    :cond_12
    :goto_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 267
    :cond_13
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v43, v0

    if-eqz v43, :cond_12

    .line 268
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v17, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .end local v17    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    const/16 v43, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/util/GEMFFile$GEMFRange;-><init>(Lorg/osmdroid/util/GEMFFile;Lorg/osmdroid/util/GEMFFile$1;)V

    .line 271
    .restart local v17    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, v42

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    .line 272
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 273
    invoke-virtual/range {v31 .. v31}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    .line 274
    invoke-virtual/range {v31 .. v31}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    goto :goto_f

    .line 279
    :cond_14
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v43, v0

    if-eqz v43, :cond_10

    .line 280
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 288
    .end local v13    # "i":I
    .end local v17    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v23    # "source":Ljava/lang/String;
    .end local v31    # "xList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v32    # "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v33    # "xSets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v37    # "yList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v39    # "ySets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v42    # "zoom":Ljava/lang/Integer;
    :cond_15
    const/16 v26, 0x0

    .line 289
    .local v26, "source_list_size":I
    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :goto_10
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_16

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 290
    .restart local v23    # "source":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v44

    add-int/lit8 v44, v44, 0x8

    add-int v26, v26, v44

    .line 291
    goto :goto_10

    .line 293
    .end local v23    # "source":Ljava/lang/String;
    :cond_16
    add-int/lit8 v43, v26, 0xc

    .line 298
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v44

    mul-int/lit8 v44, v44, 0x20

    add-int v43, v43, v44

    add-int/lit8 v43, v43, 0x4

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 302
    .local v18, "offset":J
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :cond_17
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_19

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 303
    .restart local v17    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    .line 305
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .local v28, "x":I
    :goto_11
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v28

    move/from16 v1, v44

    if-ge v0, v1, :cond_17

    .line 306
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v34

    .local v34, "y":I
    :goto_12
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    add-int/lit8 v44, v44, 0x1

    move/from16 v0, v34

    move/from16 v1, v44

    if-ge v0, v1, :cond_18

    .line 307
    const-wide/16 v44, 0xc

    add-long v18, v18, v44

    .line 306
    add-int/lit8 v34, v34, 0x1

    goto :goto_12

    .line 305
    :cond_18
    add-int/lit8 v28, v28, 0x1

    goto :goto_11

    .line 312
    .end local v17    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v28    # "x":I
    .end local v34    # "y":I
    :cond_19
    move-wide/from16 v14, v18

    .line 314
    .local v14, "headerSize":J
    new-instance v12, Ljava/io/RandomAccessFile;

    const-string v43, "rw"

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-direct {v12, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .local v12, "gemfFile":Ljava/io/RandomAccessFile;
    const/16 v43, 0x4

    move/from16 v0, v43

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 320
    const/16 v43, 0x100

    move/from16 v0, v43

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 323
    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedHashMap;->size()I

    move-result v43

    move/from16 v0, v43

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 326
    invoke-virtual/range {v25 .. v25}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v43

    invoke-interface/range {v43 .. v43}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :goto_13
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_1a

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 327
    .restart local v23    # "source":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    move/from16 v0, v43

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 328
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v43

    move/from16 v0, v43

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 329
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_13

    .line 333
    .end local v23    # "source":Ljava/lang/String;
    :cond_1a
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v43

    move/from16 v0, v43

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 336
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v43

    :goto_14
    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->hasNext()Z

    move-result v44

    if-eqz v44, :cond_1b

    invoke-interface/range {v43 .. v43}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 337
    .restart local v17    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    move/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 338
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    move/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 339
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    move/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 340
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    move/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 341
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    move/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 342
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Integer;->intValue()I

    move-result v44

    move/from16 v0, v44

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 343
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    move-wide/from16 v0, v44

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    goto :goto_14

    .line 347
    .end local v17    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_1b
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_1c
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_1e

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 348
    .restart local v17    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .restart local v28    # "x":I
    :goto_15
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v28

    move/from16 v1, v43

    if-ge v0, v1, :cond_1c

    .line 349
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v34

    .restart local v34    # "y":I
    :goto_16
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v34

    move/from16 v1, v43

    if-ge v0, v1, :cond_1d

    .line 350
    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 351
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    move-object/from16 v43, v0

    .line 352
    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .line 351
    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    move-object/from16 v45, v0

    .line 353
    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/io/File;

    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 354
    .local v10, "fileSize":J
    long-to-int v0, v10

    move/from16 v43, v0

    move/from16 v0, v43

    invoke-virtual {v12, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 355
    add-long v18, v18, v10

    .line 349
    add-int/lit8 v34, v34, 0x1

    goto :goto_16

    .line 348
    .end local v10    # "fileSize":J
    :cond_1d
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_15

    .line 364
    .end local v17    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v28    # "x":I
    .end local v34    # "y":I
    :cond_1e
    const/16 v43, 0x400

    move/from16 v0, v43

    new-array v4, v0, [B

    .line 366
    .local v4, "buf":[B
    move-wide v6, v14

    .line 367
    .local v6, "currentOffset":J
    const/4 v9, 0x0

    .line 369
    .local v9, "fileIndex":I
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v44

    :cond_1f
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_23

    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 370
    .restart local v17    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v28

    .restart local v28    # "x":I
    :goto_17
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v28

    move/from16 v1, v43

    if-ge v0, v1, :cond_1f

    .line 371
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v34

    .restart local v34    # "y":I
    :goto_18
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v34

    move/from16 v1, v43

    if-ge v0, v1, :cond_22

    .line 373
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    move-object/from16 v43, v0

    .line 374
    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .line 373
    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    move-object/from16 v45, v0

    .line 374
    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/io/File;

    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 376
    .restart local v10    # "fileSize":J
    add-long v46, v6, v10

    const-wide/32 v48, 0x40000000

    cmp-long v43, v46, v48

    if-lez v43, :cond_20

    .line 377
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 378
    add-int/lit8 v9, v9, 0x1

    .line 379
    new-instance v12, Ljava/io/RandomAccessFile;

    .end local v12    # "gemfFile":Ljava/io/RandomAccessFile;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v45, "-"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    const-string v45, "rw"

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-direct {v12, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .restart local v12    # "gemfFile":Ljava/io/RandomAccessFile;
    const-wide/16 v6, 0x0

    .line 385
    :goto_19
    new-instance v27, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    move-object/from16 v43, v0

    .line 387
    move-object/from16 v0, v16

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .line 386
    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    move-object/from16 v45, v0

    .line 388
    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/util/LinkedHashMap;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 390
    .local v27, "tile":Ljava/io/FileInputStream;
    const/16 v43, 0x0

    const/16 v45, 0x400

    move-object/from16 v0, v27

    move/from16 v1, v43

    move/from16 v2, v45

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v21

    .line 391
    .local v21, "read":I
    :goto_1a
    const/16 v43, -0x1

    move/from16 v0, v21

    move/from16 v1, v43

    if-eq v0, v1, :cond_21

    .line 392
    const/16 v43, 0x0

    move/from16 v0, v43

    move/from16 v1, v21

    invoke-virtual {v12, v4, v0, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 393
    const/16 v43, 0x0

    const/16 v45, 0x400

    move-object/from16 v0, v27

    move/from16 v1, v43

    move/from16 v2, v45

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v21

    goto :goto_1a

    .line 382
    .end local v21    # "read":I
    .end local v27    # "tile":Ljava/io/FileInputStream;
    :cond_20
    add-long/2addr v6, v10

    goto :goto_19

    .line 396
    .restart local v21    # "read":I
    .restart local v27    # "tile":Ljava/io/FileInputStream;
    :cond_21
    invoke-virtual/range {v27 .. v27}, Ljava/io/FileInputStream;->close()V

    .line 371
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_18

    .line 370
    .end local v10    # "fileSize":J
    .end local v21    # "read":I
    .end local v27    # "tile":Ljava/io/FileInputStream;
    :cond_22
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_17

    .line 401
    .end local v17    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v28    # "x":I
    .end local v34    # "y":I
    :cond_23
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V

    .line 404
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/util/GEMFFile;->openFiles()V

    .line 405
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/util/GEMFFile;->readHeader()V

    .line 406
    return-void
.end method

.method private openFiles()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "base":Ljava/io/File;
    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v0, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    const/4 v1, 0x0

    .line 437
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 438
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .local v2, "nextFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v3, p0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 446
    :cond_0
    return-void
.end method

.method private readHeader()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/RandomAccessFile;

    .line 456
    .local v2, "baseFile":Ljava/io/RandomAccessFile;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/RandomAccessFile;

    .line 457
    .local v3, "file":Ljava/io/RandomAccessFile;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 461
    .end local v3    # "file":Ljava/io/RandomAccessFile;
    :cond_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    .line 462
    .local v13, "version":I
    const/4 v14, 0x4

    if-eq v13, v14, :cond_1

    .line 463
    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad file version: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 467
    :cond_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    .line 468
    .local v12, "tile_size":I
    const/16 v14, 0x100

    if-eq v12, v14, :cond_2

    .line 469
    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad tile size: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 473
    :cond_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    .line 475
    .local v8, "sourceCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v8, :cond_3

    .line 476
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    .line 477
    .local v9, "sourceIndex":I
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v11

    .line 478
    .local v11, "sourceNameLength":I
    new-array v5, v11, [B

    .line 479
    .local v5, "nameData":[B
    const/4 v14, 0x0

    invoke-virtual {v2, v5, v14, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 481
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 482
    .local v10, "sourceName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14, v15, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 486
    .end local v5    # "nameData":[B
    .end local v9    # "sourceIndex":I
    .end local v10    # "sourceName":Ljava/lang/String;
    .end local v11    # "sourceNameLength":I
    :cond_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    .line 487
    .local v6, "num_ranges":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_4

    .line 488
    new-instance v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Lorg/osmdroid/util/GEMFFile$GEMFRange;-><init>(Lorg/osmdroid/util/GEMFFile;Lorg/osmdroid/util/GEMFFile$1;)V

    .line 489
    .local v7, "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    .line 490
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    .line 491
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    .line 492
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    .line 493
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    .line 494
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 495
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v7, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    .line 496
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 498
    .end local v7    # "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_4
    return-void
.end method


# virtual methods
.method public acceptAnySource()V
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    .line 536
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v1, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    .line 419
    .local v0, "file":Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 421
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    :cond_0
    return-void
.end method

.method public getInputStream(III)Ljava/io/InputStream;
    .locals 26
    .param p1, "pX"    # I
    .param p2, "pY"    # I
    .param p3, "pZ"    # I

    .prologue
    .line 557
    const/16 v21, 0x0

    .line 559
    .local v21, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 561
    .local v22, "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v0, v22

    iget-object v5, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p3

    if-ne v0, v5, :cond_0

    move-object/from16 v0, v22

    iget-object v5, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    .line 562
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p1

    if-lt v0, v5, :cond_0

    move-object/from16 v0, v22

    iget-object v5, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    .line 563
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p1

    if-gt v0, v5, :cond_0

    move-object/from16 v0, v22

    iget-object v5, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    .line 564
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p2

    if-lt v0, v5, :cond_0

    move-object/from16 v0, v22

    iget-object v5, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    .line 565
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, p2

    if-gt v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    if-eqz v5, :cond_1

    move-object/from16 v0, v22

    iget-object v5, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 566
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v5, v0, :cond_0

    .line 567
    :cond_1
    move-object/from16 v21, v22

    .line 572
    .end local v22    # "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_2
    if-nez v21, :cond_3

    .line 573
    const/4 v4, 0x0

    .line 639
    :goto_0
    return-object v4

    .line 582
    :cond_3
    :try_start_0
    move-object/from16 v0, v21

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v21

    iget-object v5, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v17, v4, v5

    .line 583
    .local v17, "numY":I
    move-object/from16 v0, v21

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v23, p1, v4

    .line 584
    .local v23, "xIndex":I
    move-object/from16 v0, v21

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v24, p2, v4

    .line 585
    .local v24, "yIndex":I
    mul-int v4, v23, v17

    add-int v4, v4, v24

    int-to-long v0, v4

    move-wide/from16 v18, v0

    .line 586
    .local v18, "offset":J
    const-wide/16 v4, 0xc

    mul-long v18, v18, v4

    .line 587
    move-object/from16 v0, v21

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long v18, v18, v4

    .line 591
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/RandomAccessFile;

    .line 592
    .local v2, "baseFile":Ljava/io/RandomAccessFile;
    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 593
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v6

    .line 594
    .local v6, "dataOffset":J
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    .line 597
    .local v8, "dataLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/io/RandomAccessFile;

    .line 598
    .local v20, "pDataFile":Ljava/io/RandomAccessFile;
    const/4 v15, 0x0

    .line 599
    .local v15, "index":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-lez v4, :cond_5

    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    .line 602
    .local v14, "fileListCount":I
    :goto_1
    add-int/lit8 v4, v14, -0x1

    if-ge v15, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    .line 603
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v6, v4

    if-lez v4, :cond_4

    .line 605
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v6, v4

    .line 606
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 609
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "pDataFile":Ljava/io/RandomAccessFile;
    check-cast v20, Ljava/io/RandomAccessFile;

    .line 613
    .end local v14    # "fileListCount":I
    .restart local v20    # "pDataFile":Ljava/io/RandomAccessFile;
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 617
    new-instance v3, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;-><init>(Lorg/osmdroid/util/GEMFFile;Ljava/lang/String;JI)V

    .line 619
    .local v3, "stream":Lorg/osmdroid/util/GEMFFile$GEMFInputStream;
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 622
    .local v12, "byteBuffer":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x400

    .line 623
    .local v11, "bufferSize":I
    new-array v10, v11, [B

    .line 626
    .local v10, "buffer":[B
    const/16 v16, 0x0

    .line 627
    .local v16, "len":I
    :cond_6
    :goto_2
    invoke-virtual {v3}, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->available()I

    move-result v4

    if-lez v4, :cond_7

    .line 629
    invoke-virtual {v3, v10}, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->read([B)I

    move-result v16

    .line 630
    if-lez v16, :cond_6

    .line 631
    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v10, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 638
    .end local v2    # "baseFile":Ljava/io/RandomAccessFile;
    .end local v3    # "stream":Lorg/osmdroid/util/GEMFFile$GEMFInputStream;
    .end local v6    # "dataOffset":J
    .end local v8    # "dataLength":I
    .end local v10    # "buffer":[B
    .end local v11    # "bufferSize":I
    .end local v12    # "byteBuffer":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "index":I
    .end local v16    # "len":I
    .end local v17    # "numY":I
    .end local v18    # "offset":J
    .end local v20    # "pDataFile":Ljava/io/RandomAccessFile;
    .end local v23    # "xIndex":I
    .end local v24    # "yIndex":I
    :catch_0
    move-exception v13

    .line 639
    .local v13, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 635
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v2    # "baseFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "stream":Lorg/osmdroid/util/GEMFFile$GEMFInputStream;
    .restart local v6    # "dataOffset":J
    .restart local v8    # "dataLength":I
    .restart local v10    # "buffer":[B
    .restart local v11    # "bufferSize":I
    .restart local v12    # "byteBuffer":Ljava/io/ByteArrayOutputStream;
    .restart local v15    # "index":I
    .restart local v16    # "len":I
    .restart local v17    # "numY":I
    .restart local v18    # "offset":J
    .restart local v20    # "pDataFile":Ljava/io/RandomAccessFile;
    .restart local v23    # "xIndex":I
    .restart local v24    # "yIndex":I
    :cond_7
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 636
    .local v9, "bits":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSources()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getZoomLevels()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 544
    .local v1, "zoomLevels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 545
    .local v0, "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    iget-object v3, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    .end local v0    # "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_0
    return-object v1
.end method

.method public selectSource(I)V
    .locals 2
    .param p1, "pSource"    # I

    .prologue
    .line 525
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    .line 527
    iput p1, p0, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    .line 529
    :cond_0
    return-void
.end method
