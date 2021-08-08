.class public Lorg/osmdroid/tileprovider/util/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    }
.end annotation


# static fields
.field public static final EXTERNAL_SD_CARD:Ljava/lang/String; = "externalSdCard"

.field public static final SD_CARD:Ljava/lang/String; = "sdCard"

.field private static final TAG:Ljava/lang/String; = "StorageUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllStorageLocations()Ljava/util/Map;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v16, Ljava/util/HashMap;

    const/16 v27, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 352
    .local v16, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v14, Ljava/util/ArrayList;

    const/16 v27, 0xa

    move/from16 v0, v27

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    .local v14, "mMounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    const/16 v27, 0xa

    move/from16 v0, v27

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 354
    .local v15, "mVold":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v27, "/mnt/sdcard"

    move-object/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v27, "/mnt/sdcard"

    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    :try_start_0
    new-instance v18, Ljava/io/File;

    const-string v27, "/proc/mounts"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v18, "mountFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 360
    new-instance v22, Ljava/util/Scanner;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 361
    .local v22, "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/Scanner;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 362
    invoke-virtual/range {v22 .. v22}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v11

    .line 363
    .local v11, "line":Ljava/lang/String;
    const-string v27, "/dev/block/vold/"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 364
    const-string v27, " "

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 365
    .local v12, "lineElements":[Ljava/lang/String;
    const/16 v27, 0x1

    aget-object v5, v12, v27

    .line 369
    .local v5, "element":Ljava/lang/String;
    const-string v27, "/mnt/sdcard"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_0

    .line 370
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    .end local v5    # "element":Ljava/lang/String;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "lineElements":[Ljava/lang/String;
    .end local v18    # "mountFile":Ljava/io/File;
    .end local v22    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v4

    .line 375
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v26, Ljava/io/File;

    const-string v27, "/system/etc/vold.fstab"

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v26, "voldFile":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 381
    new-instance v22, Ljava/util/Scanner;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 382
    .restart local v22    # "scanner":Ljava/util/Scanner;
    :cond_2
    :goto_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/Scanner;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 383
    invoke-virtual/range {v22 .. v22}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v11

    .line 384
    .restart local v11    # "line":Ljava/lang/String;
    const-string v27, "dev_mount"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 385
    const-string v27, " "

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 386
    .restart local v12    # "lineElements":[Ljava/lang/String;
    const/16 v27, 0x2

    aget-object v5, v12, v27

    .line 388
    .restart local v5    # "element":Ljava/lang/String;
    const-string v27, ":"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 389
    const/16 v27, 0x0

    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 390
    :cond_3
    const-string v27, "/mnt/sdcard"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 391
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 395
    .end local v5    # "element":Ljava/lang/String;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "lineElements":[Ljava/lang/String;
    .end local v22    # "scanner":Ljava/util/Scanner;
    .end local v26    # "voldFile":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 396
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_6

    .line 401
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 402
    .local v17, "mount":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    .line 403
    add-int/lit8 v9, v8, -0x1

    .end local v8    # "i":I
    .local v9, "i":I
    invoke-interface {v14, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v8, v9

    .line 400
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 405
    .end local v17    # "mount":Ljava/lang/String;
    :cond_6
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 407
    new-instance v19, Ljava/util/ArrayList;

    const/16 v27, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 409
    .local v19, "mountHash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_7
    :goto_3
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 410
    .restart local v17    # "mount":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    .local v21, "root":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v27

    if-eqz v27, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->canWrite()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 412
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 413
    .local v13, "list":[Ljava/io/File;
    const-string v7, "["

    .line 414
    .local v7, "hash":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 415
    array-length v0, v13

    move/from16 v29, v0

    const/16 v27, 0x0

    :goto_4
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    aget-object v6, v13, v27

    .line 416
    .local v6, "f":Ljava/io/File;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->hashCode()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ":"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 415
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 419
    .end local v6    # "f":Ljava/io/File;
    :cond_8
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "]"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 420
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_7

    .line 421
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "sdCard_"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 422
    .local v10, "key":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v27

    if-nez v27, :cond_a

    .line 423
    const-string v10, "sdCard"

    .line 427
    :cond_9
    :goto_5
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 424
    :cond_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v27

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 425
    const-string v10, "externalSdCard"

    goto :goto_5

    .line 433
    .end local v7    # "hash":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v13    # "list":[Ljava/io/File;
    .end local v17    # "mount":Ljava/lang/String;
    .end local v21    # "root":Ljava/io/File;
    :cond_b
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 435
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 436
    const-string v27, "sdCard"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 441
    const-string v27, "sdCard"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_d
    const-string v27, "EXTERNAL_STORAGE"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 445
    .local v20, "primary_sd":Ljava/lang/String;
    if-eqz v20, :cond_e

    .line 446
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v25, "t":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_e

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_e

    .line 448
    const-string v27, "sdCard"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .end local v25    # "t":Ljava/io/File;
    :cond_e
    const-string v27, "SECONDARY_STORAGE"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 452
    .local v23, "secondary_sd":Ljava/lang/String;
    if-eqz v23, :cond_10

    .line 453
    sget-object v27, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 454
    .local v24, "split":[Ljava/lang/String;
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_10

    .line 455
    new-instance v25, Ljava/io/File;

    aget-object v27, v24, v8

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .restart local v25    # "t":Ljava/io/File;
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_f

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_f

    .line 457
    const-string v27, "sdCard"

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 462
    .end local v24    # "split":[Ljava/lang/String;
    .end local v25    # "t":Ljava/io/File;
    :cond_10
    return-object v16
.end method

.method private static getAllStorageLocationsRevised()Ljava/util/Set;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 471
    .local v16, "map":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    const-string v27, "EXTERNAL_STORAGE"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 472
    .local v20, "primary_sd":Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 473
    new-instance v25, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    .local v25, "t":Ljava/io/File;
    invoke-static/range {v25 .. v25}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 475
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 479
    .end local v25    # "t":Ljava/io/File;
    :cond_0
    const-string v27, "SECONDARY_STORAGE"

    invoke-static/range {v27 .. v27}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 480
    .local v23, "secondary_sd":Ljava/lang/String;
    if-eqz v23, :cond_2

    .line 481
    sget-object v27, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 482
    .local v24, "split":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v8, v0, :cond_2

    .line 483
    new-instance v25, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v28, v24, v8

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    .restart local v25    # "t":Ljava/io/File;
    invoke-static/range {v25 .. v25}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 485
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 491
    .end local v8    # "i":I
    .end local v24    # "split":[Ljava/lang/String;
    .end local v25    # "t":Ljava/io/File;
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v27

    if-eqz v27, :cond_3

    .line 492
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v25

    .line 493
    .restart local v25    # "t":Ljava/io/File;
    invoke-static/range {v25 .. v25}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 494
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 499
    .end local v25    # "t":Ljava/io/File;
    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    const/16 v27, 0xa

    move/from16 v0, v27

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 500
    .local v14, "mMounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    const/16 v27, 0xa

    move/from16 v0, v27

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 501
    .local v15, "mVold":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v27, "/mnt/sdcard"

    move-object/from16 v0, v27

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    const-string v27, "/mnt/sdcard"

    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :try_start_0
    new-instance v18, Ljava/io/File;

    const-string v27, "/proc/mounts"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 506
    .local v18, "mountFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 507
    new-instance v22, Ljava/util/Scanner;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 508
    .local v22, "scanner":Ljava/util/Scanner;
    :cond_4
    :goto_1
    invoke-virtual/range {v22 .. v22}, Ljava/util/Scanner;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 509
    invoke-virtual/range {v22 .. v22}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v11

    .line 510
    .local v11, "line":Ljava/lang/String;
    const-string v27, "/dev/block/vold/"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 511
    const-string v27, " "

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 512
    .local v12, "lineElements":[Ljava/lang/String;
    const/16 v27, 0x1

    aget-object v5, v12, v27

    .line 516
    .local v5, "element":Ljava/lang/String;
    const-string v27, "/mnt/sdcard"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 517
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 521
    .end local v5    # "element":Ljava/lang/String;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "lineElements":[Ljava/lang/String;
    .end local v18    # "mountFile":Ljava/io/File;
    .end local v22    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v4

    .line 522
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 526
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    new-instance v26, Ljava/io/File;

    const-string v27, "/system/etc/vold.fstab"

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v26, "voldFile":Ljava/io/File;
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 528
    new-instance v22, Ljava/util/Scanner;

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 529
    .restart local v22    # "scanner":Ljava/util/Scanner;
    :cond_6
    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/Scanner;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 530
    invoke-virtual/range {v22 .. v22}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v11

    .line 531
    .restart local v11    # "line":Ljava/lang/String;
    const-string v27, "dev_mount"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 532
    const-string v27, " "

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 533
    .restart local v12    # "lineElements":[Ljava/lang/String;
    const/16 v27, 0x2

    aget-object v5, v12, v27

    .line 535
    .restart local v5    # "element":Ljava/lang/String;
    const-string v27, ":"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 536
    const/16 v27, 0x0

    const-string v28, ":"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 537
    :cond_7
    const-string v27, "/mnt/sdcard"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 538
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 542
    .end local v5    # "element":Ljava/lang/String;
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "lineElements":[Ljava/lang/String;
    .end local v22    # "scanner":Ljava/util/Scanner;
    .end local v26    # "voldFile":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 543
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 547
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_a

    .line 548
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 549
    .local v17, "mount":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_9

    .line 550
    add-int/lit8 v9, v8, -0x1

    .end local v8    # "i":I
    .local v9, "i":I
    invoke-interface {v14, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v8, v9

    .line 547
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 552
    .end local v17    # "mount":Ljava/lang/String;
    :cond_a
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 554
    new-instance v19, Ljava/util/ArrayList;

    const/16 v27, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 556
    .local v19, "mountHash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_b
    :goto_4
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_f

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 557
    .restart local v17    # "mount":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    .local v21, "root":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->isDirectory()Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->canWrite()Z

    move-result v27

    if-eqz v27, :cond_b

    .line 559
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 560
    .local v13, "list":[Ljava/io/File;
    const-string v7, "["

    .line 561
    .local v7, "hash":Ljava/lang/String;
    if-eqz v13, :cond_c

    .line 562
    array-length v0, v13

    move/from16 v29, v0

    const/16 v27, 0x0

    :goto_5
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    aget-object v6, v13, v27

    .line 563
    .local v6, "f":Ljava/io/File;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->hashCode()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ":"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v32

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 562
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 566
    .end local v6    # "f":Ljava/io/File;
    :cond_c
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v29, "]"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 567
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 568
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "sdCard_"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 569
    .local v10, "key":Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v27

    if-nez v27, :cond_e

    .line 570
    const-string v10, "sdCard"

    .line 574
    :cond_d
    :goto_6
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-static/range {v21 .. v21}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 576
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 571
    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v27

    const/16 v29, 0x1

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 572
    const-string v10, "externalSdCard"

    goto :goto_6

    .line 582
    .end local v7    # "hash":Ljava/lang/String;
    .end local v10    # "key":Ljava/lang/String;
    .end local v13    # "list":[Ljava/io/File;
    .end local v17    # "mount":Ljava/lang/String;
    .end local v21    # "root":Ljava/io/File;
    :cond_f
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 585
    return-object v16
.end method

.method public static getSdCardPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStorage()Ljava/io/File;
    .locals 10

    .prologue
    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, "ptr":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorageList()Ljava/util/List;

    move-result-object v4

    .line 233
    .local v4, "storageList":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 234
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    .line 235
    .local v3, "storageInfo":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    iget-boolean v5, v3, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/File;

    iget-object v6, v3, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    if-eqz v2, :cond_1

    .line 238
    iget-wide v6, v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    iget-wide v8, v3, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 239
    move-object v2, v3

    .line 233
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_1
    move-object v2, v3

    goto :goto_1

    .line 246
    .end local v3    # "storageInfo":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    :cond_2
    if-eqz v2, :cond_3

    .line 247
    new-instance v5, Ljava/io/File;

    iget-object v6, v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    :goto_2
    return-object v5

    .line 251
    :cond_3
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_2

    .line 252
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public static getStorage(Landroid/content/Context;)Ljava/io/File;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, "ptr":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorageList()Ljava/util/List;

    move-result-object v3

    .line 273
    .local v3, "storageList":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 274
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    .line 275
    .local v2, "storageInfo":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    iget-boolean v4, v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z

    if-nez v4, :cond_0

    new-instance v4, Ljava/io/File;

    iget-object v5, v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    if-eqz v1, :cond_1

    .line 278
    iget-wide v4, v1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    iget-wide v6, v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 279
    move-object v1, v2

    .line 273
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    move-object v1, v2

    goto :goto_1

    .line 286
    .end local v2    # "storageInfo":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    :cond_2
    if-eqz v1, :cond_3

    .line 287
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    :goto_2
    return-object v4

    :cond_3
    new-instance v4, Ljava/io/File;

    const-string v5, "temp.sqlite"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "temp.sqlite"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getStorageList()Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    const-string v9, ""

    .line 103
    .local v9, "def_path":Ljava/lang/String;
    const/4 v11, 0x0

    .line 104
    .local v11, "def_path_internal":Z
    const-string v13, ""

    .line 105
    .local v13, "def_path_state":Ljava/lang/String;
    const/4 v12, 0x1

    .line 106
    .local v12, "def_path_readonly":Z
    const/4 v10, 0x0

    .line 108
    .local v10, "def_path_available":Z
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v27

    if-eqz v27, :cond_0

    .line 109
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 117
    :cond_0
    :goto_0
    :try_start_1
    sget v27, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v28, 0x9

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_4

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v27

    if-nez v27, :cond_4

    const/4 v11, 0x1

    .line 124
    :goto_1
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v13

    .line 131
    :goto_2
    :try_start_3
    const-string v27, "mounted"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1

    const-string v27, "mounted_ro"

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result v27

    if-eqz v27, :cond_5

    :cond_1
    const/4 v10, 0x1

    .line 139
    :goto_3
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v27

    const-string v28, "mounted_ro"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    move-result v12

    .line 145
    :goto_4
    const/4 v5, 0x0

    .line 147
    .local v5, "buf_reader":Ljava/io/BufferedReader;
    :try_start_5
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v23, "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v27, Ljava/io/FileReader;

    const-string v28, "/proc/mounts"

    invoke-direct/range {v27 .. v28}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 150
    .end local v5    # "buf_reader":Ljava/io/BufferedReader;
    .local v6, "buf_reader":Ljava/io/BufferedReader;
    const/4 v7, 0x1

    .line 151
    .local v7, "cur_display_number":I
    :try_start_6
    const-string v27, "StorageUtils"

    const-string v28, "/proc/mounts"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 152
    .end local v7    # "cur_display_number":I
    .local v8, "cur_display_number":I
    :cond_2
    :goto_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .local v19, "line":Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 153
    const-string v27, "StorageUtils"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v27, "vfat"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_3

    const-string v27, "/mnt"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 155
    :cond_3
    new-instance v25, Ljava/util/StringTokenizer;

    const-string v27, " "

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v25, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v26

    .line 157
    .local v26, "unused":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v21

    .line 158
    .local v21, "mount_point":Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_2

    .line 161
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v26

    .line 162
    invoke-virtual/range {v25 .. v25}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v27

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 163
    .local v15, "flags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v27, "ro"

    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v24

    .line 165
    .local v24, "readonly":Z
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 166
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    const/16 v27, 0x0

    new-instance v28, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    const/16 v29, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v24

    move/from16 v2, v29

    invoke-direct {v0, v9, v11, v1, v2}, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;-><init>(Ljava/lang/String;ZZI)V

    move-object/from16 v0, v20

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v7, v8

    .end local v8    # "cur_display_number":I
    .restart local v7    # "cur_display_number":I
    :goto_6
    move v8, v7

    .line 179
    .end local v7    # "cur_display_number":I
    .restart local v8    # "cur_display_number":I
    goto/16 :goto_5

    .line 111
    .end local v6    # "buf_reader":Ljava/io/BufferedReader;
    .end local v8    # "cur_display_number":I
    .end local v15    # "flags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "line":Ljava/lang/String;
    .end local v21    # "mount_point":Ljava/lang/String;
    .end local v23    # "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24    # "readonly":Z
    .end local v25    # "tokens":Ljava/util/StringTokenizer;
    .end local v26    # "unused":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 114
    .local v14, "ex":Ljava/lang/Throwable;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 117
    .end local v14    # "ex":Ljava/lang/Throwable;
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 118
    :catch_1
    move-exception v14

    .line 121
    .restart local v14    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 125
    .end local v14    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v14

    .line 128
    .restart local v14    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 131
    .end local v14    # "ex":Ljava/lang/Throwable;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 132
    :catch_3
    move-exception v14

    .line 135
    .restart local v14    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 140
    .end local v14    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v14

    .line 143
    .restart local v14    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 168
    .end local v14    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v8    # "cur_display_number":I
    .restart local v15    # "flags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v21    # "mount_point":Ljava/lang/String;
    .restart local v23    # "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24    # "readonly":Z
    .restart local v25    # "tokens":Ljava/util/StringTokenizer;
    .restart local v26    # "unused":Ljava/lang/String;
    :cond_6
    :try_start_7
    const-string v27, "/dev/block/vold"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 169
    const-string v27, "/mnt/secure"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_10

    const-string v27, "/mnt/asec"

    .line 170
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_10

    const-string v27, "/mnt/obb"

    .line 171
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_10

    const-string v27, "/dev/mapper"

    .line 172
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_10

    const-string v27, "tmpfs"

    .line 173
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_10

    .line 174
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v27, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    const/16 v28, 0x0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "cur_display_number":I
    .restart local v7    # "cur_display_number":I
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v8}, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;-><init>(Ljava/lang/String;ZZI)V

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_6

    .line 186
    .end local v7    # "cur_display_number":I
    .end local v15    # "flags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "line":Ljava/lang/String;
    .end local v21    # "mount_point":Ljava/lang/String;
    .end local v24    # "readonly":Z
    .end local v25    # "tokens":Ljava/util/StringTokenizer;
    .end local v26    # "unused":Ljava/lang/String;
    :catch_5
    move-exception v14

    move-object v5, v6

    .line 187
    .end local v6    # "buf_reader":Ljava/io/BufferedReader;
    .end local v23    # "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "buf_reader":Ljava/io/BufferedReader;
    .local v14, "ex":Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 191
    if-eqz v5, :cond_7

    .line 193
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 198
    .end local v14    # "ex":Ljava/io/FileNotFoundException;
    :cond_7
    :goto_8
    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getAllStorageLocationsRevised()Ljava/util/Set;

    move-result-object v4

    .line 199
    .local v4, "allStorageLocationsRevised":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 200
    .local v18, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_8
    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 201
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/io/File;

    .line 202
    .local v22, "next":Ljava/io/File;
    const/16 v16, 0x0

    .line 203
    .local v16, "found":Z
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_a
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 204
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    move-object/from16 v0, v27

    iget-object v0, v0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 205
    const/16 v16, 0x1

    .line 209
    :cond_9
    if-nez v16, :cond_8

    .line 210
    new-instance v27, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, -0x1

    invoke-direct/range {v27 .. v31}, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;-><init>(Ljava/lang/String;ZZI)V

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 182
    .end local v4    # "allStorageLocationsRevised":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    .end local v5    # "buf_reader":Ljava/io/BufferedReader;
    .end local v16    # "found":Z
    .end local v17    # "i":I
    .end local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    .end local v22    # "next":Ljava/io/File;
    .restart local v6    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v8    # "cur_display_number":I
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v23    # "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_a
    :try_start_a
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_b

    if-eqz v10, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_b

    .line 183
    const/16 v27, 0x0

    new-instance v28, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    const/16 v29, -0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-direct {v0, v9, v11, v12, v1}, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;-><init>(Ljava/lang/String;ZZI)V

    move-object/from16 v0, v20

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 191
    :cond_b
    if-eqz v6, :cond_f

    .line 193
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    move-object v5, v6

    .line 195
    .end local v6    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v5    # "buf_reader":Ljava/io/BufferedReader;
    goto/16 :goto_8

    .line 194
    .end local v5    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v6    # "buf_reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v27

    move-object v5, v6

    .line 195
    .end local v6    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v5    # "buf_reader":Ljava/io/BufferedReader;
    goto/16 :goto_8

    .line 188
    .end local v8    # "cur_display_number":I
    .end local v19    # "line":Ljava/lang/String;
    .end local v23    # "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_7
    move-exception v14

    .line 189
    .local v14, "ex":Ljava/io/IOException;
    :goto_b
    :try_start_c
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 191
    if-eqz v5, :cond_7

    .line 193
    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_8

    .line 194
    :catch_8
    move-exception v27

    goto/16 :goto_8

    .line 191
    .end local v14    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v27

    :goto_c
    if-eqz v5, :cond_c

    .line 193
    :try_start_e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 195
    :cond_c
    :goto_d
    throw v27

    .line 203
    .restart local v4    # "allStorageLocationsRevised":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    .restart local v16    # "found":Z
    .restart local v17    # "i":I
    .restart local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    .restart local v22    # "next":Ljava/io/File;
    :cond_d
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_a

    .line 194
    .end local v4    # "allStorageLocationsRevised":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    .end local v16    # "found":Z
    .end local v17    # "i":I
    .end local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    .end local v22    # "next":Ljava/io/File;
    .local v14, "ex":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v27

    goto/16 :goto_8

    .end local v14    # "ex":Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v28

    goto :goto_d

    .line 215
    .restart local v4    # "allStorageLocationsRevised":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    .restart local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_e
    return-object v20

    .line 191
    .end local v4    # "allStorageLocationsRevised":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    .end local v5    # "buf_reader":Ljava/io/BufferedReader;
    .end local v18    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    .restart local v6    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v23    # "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_1
    move-exception v27

    move-object v5, v6

    .end local v6    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v5    # "buf_reader":Ljava/io/BufferedReader;
    goto :goto_c

    .line 188
    .end local v5    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v6    # "buf_reader":Ljava/io/BufferedReader;
    :catch_b
    move-exception v14

    move-object v5, v6

    .end local v6    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v5    # "buf_reader":Ljava/io/BufferedReader;
    goto :goto_b

    .line 186
    .end local v23    # "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_c
    move-exception v14

    goto/16 :goto_7

    .end local v5    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v6    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v8    # "cur_display_number":I
    .restart local v19    # "line":Ljava/lang/String;
    .restart local v23    # "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_f
    move-object v5, v6

    .end local v6    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v5    # "buf_reader":Ljava/io/BufferedReader;
    goto/16 :goto_8

    .end local v5    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v6    # "buf_reader":Ljava/io/BufferedReader;
    .restart local v15    # "flags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "mount_point":Ljava/lang/String;
    .restart local v24    # "readonly":Z
    .restart local v25    # "tokens":Ljava/util/StringTokenizer;
    .restart local v26    # "unused":Ljava/lang/String;
    :cond_10
    move v7, v8

    .end local v8    # "cur_display_number":I
    .restart local v7    # "cur_display_number":I
    goto/16 :goto_6
.end method

.method public static isAvailable()Z
    .locals 2

    .prologue
    .line 298
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    :cond_0
    const/4 v1, 0x1

    .line 302
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWritable()Z
    .locals 2

    .prologue
    .line 313
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const/4 v1, 0x1

    .line 317
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWritable(Ljava/io/File;)Z
    .locals 6
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 329
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "osm.tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v2, "tmp":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 331
    .local v1, "fos":Ljava/io/FileOutputStream;
    const-string v3, "hi"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 332
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 333
    const-string v3, "StorageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is writable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    const/4 v3, 0x1

    .line 338
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "tmp":Ljava/io/File;
    :goto_0
    return v3

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "StorageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is NOT writable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v3, 0x0

    goto :goto_0
.end method
