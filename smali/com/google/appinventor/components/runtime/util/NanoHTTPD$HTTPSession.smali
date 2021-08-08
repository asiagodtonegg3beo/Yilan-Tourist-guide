.class Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HTTPSession"
.end annotation


# instance fields
.field private mySocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/net/Socket;)V
    .locals 3
    .param p2, "s"    # Ljava/net/Socket;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    .line 345
    const-string v0, "AppInvHTTPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NanoHTTPD: getPoolSize() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$200(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$200(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 11
    .param p1, "in"    # Ljava/io/BufferedReader;
    .param p2, "pre"    # Ljava/util/Properties;
    .param p3, "parms"    # Ljava/util/Properties;
    .param p4, "header"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 520
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "inLine":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 565
    .end local v0    # "inLine":Ljava/lang/String;
    :goto_0
    return-void

    .line 522
    .restart local v0    # "inLine":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 523
    .local v6, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_1

    .line 524
    const-string v8, "400 Bad Request"

    const-string v9, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-direct {p0, v8, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, "method":Ljava/lang/String;
    const-string v8, "method"

    invoke-virtual {p2, v8, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-nez v8, :cond_2

    .line 530
    const-string v8, "400 Bad Request"

    const-string v9, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-direct {p0, v8, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_2
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 535
    .local v7, "uri":Ljava/lang/String;
    const/16 v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 536
    .local v5, "qmi":I
    if-ltz v5, :cond_4

    .line 538
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, p3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Properties;)V

    .line 539
    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 547
    :goto_1
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 549
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "line":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 552
    const/16 v8, 0x3a

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 553
    .local v4, "p":I
    if-ltz v4, :cond_3

    .line 554
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p4, v8, v9}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 556
    goto :goto_2

    .line 541
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "p":I
    :cond_4
    invoke-direct {p0, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 559
    :cond_5
    const-string v8, "uri"

    invoke-virtual {p2, v8, v7}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 561
    .end local v0    # "inLine":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/String;
    .end local v5    # "qmi":I
    .end local v6    # "st":Ljava/util/StringTokenizer;
    .end local v7    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 563
    .local v1, "ioe":Ljava/io/IOException;
    const-string v8, "500 Internal Server Error"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private decodeMultipartData(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 21
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "fbuf"    # [B
    .param p3, "in"    # Ljava/io/BufferedReader;
    .param p4, "parms"    # Ljava/util/Properties;
    .param p5, "files"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 576
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->getBoundaryPositions([B[B)[I

    move-result-object v4

    .line 577
    .local v4, "bpositions":[I
    const/4 v3, 0x1

    .line 578
    .local v3, "boundarycount":I
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 579
    .local v10, "mpline":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v10, :cond_6

    .line 581
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 582
    const-string v18, "400 Bad Request"

    const-string v19, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 584
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 585
    .local v9, "item":Ljava/util/Properties;
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 586
    :goto_1
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 588
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 589
    .local v12, "p":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_2

    .line 590
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v12, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 592
    goto :goto_1

    .line 593
    .end local v12    # "p":I
    :cond_3
    if-eqz v10, :cond_0

    .line 595
    const-string v18, "content-disposition"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, "contentDisposition":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 598
    const-string v18, "400 Bad Request"

    const-string v19, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_4
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v18, "; "

    move-object/from16 v0, v18

    invoke-direct {v15, v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .local v15, "st":Ljava/util/StringTokenizer;
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    .line 602
    .local v7, "disposition":Ljava/util/Properties;
    :cond_5
    :goto_2
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 604
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 605
    .local v16, "token":Ljava/lang/String;
    const/16 v18, 0x3d

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 606
    .restart local v12    # "p":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_5

    .line 607
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v12, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 644
    .end local v3    # "boundarycount":I
    .end local v4    # "bpositions":[I
    .end local v5    # "contentDisposition":Ljava/lang/String;
    .end local v7    # "disposition":Ljava/util/Properties;
    .end local v9    # "item":Ljava/util/Properties;
    .end local v10    # "mpline":Ljava/lang/String;
    .end local v12    # "p":I
    .end local v15    # "st":Ljava/util/StringTokenizer;
    .end local v16    # "token":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 646
    .local v8, "ioe":Ljava/io/IOException;
    const-string v18, "500 Internal Server Error"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .end local v8    # "ioe":Ljava/io/IOException;
    :cond_6
    return-void

    .line 609
    .restart local v3    # "boundarycount":I
    .restart local v4    # "bpositions":[I
    .restart local v5    # "contentDisposition":Ljava/lang/String;
    .restart local v7    # "disposition":Ljava/util/Properties;
    .restart local v9    # "item":Ljava/util/Properties;
    .restart local v10    # "mpline":Ljava/lang/String;
    .restart local v15    # "st":Ljava/util/StringTokenizer;
    :cond_7
    :try_start_1
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 610
    .local v14, "pname":Ljava/lang/String;
    const/16 v18, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 612
    const-string v17, ""

    .line 613
    .local v17, "value":Ljava/lang/String;
    const-string v18, "content-type"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_a

    .line 614
    :cond_8
    :goto_3
    if-eqz v10, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 616
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 617
    if-eqz v10, :cond_8

    .line 619
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 620
    .local v6, "d":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_9

    .line 621
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 623
    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    add-int/lit8 v20, v6, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 629
    .end local v6    # "d":I
    :cond_a
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v3, v0, :cond_b

    .line 630
    const-string v18, "500 Internal Server Error"

    const-string v19, "Error processing request"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_b
    add-int/lit8 v18, v3, -0x2

    aget v18, v4, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->stripMultipartHeaders([BI)I

    move-result v11

    .line 632
    .local v11, "offset":I
    add-int/lit8 v18, v3, -0x1

    aget v18, v4, v18

    sub-int v18, v18, v11

    add-int/lit8 v18, v18, -0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v11, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->saveTmpFile([BII)Ljava/lang/String;

    move-result-object v13

    .line 633
    .local v13, "path":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-virtual {v0, v14, v13}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v18, "filename"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 635
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 637
    :cond_c
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 638
    if-eqz v10, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 640
    .end local v11    # "offset":I
    .end local v13    # "path":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 5
    .param p1, "parms"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 772
    if-nez p1, :cond_1

    .line 784
    :cond_0
    return-void

    .line 775
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "&"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    .local v2, "st":Ljava/util/StringTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 778
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, "e":Ljava/lang/String;
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 780
    .local v1, "sep":I
    if-ltz v1, :cond_2

    .line 781
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    .line 782
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 781
    invoke-virtual {p2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 735
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 736
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 738
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 739
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 749
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 736
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 742
    :sswitch_0
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 755
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 757
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "400 Bad Request"

    const-string v5, "BAD REQUEST: Bad percent-encoding."

    invoke-direct {p0, v4, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const/4 v4, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v4

    .line 745
    .restart local v0    # "c":C
    .restart local v2    # "i":I
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :sswitch_1
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v2, 0x3

    :try_start_1
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 746
    add-int/lit8 v2, v2, 0x2

    .line 747
    goto :goto_1

    .line 753
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_2

    .line 739
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x2b -> :sswitch_0
    .end sparse-switch
.end method

.method private saveTmpFile([BII)Ljava/lang/String;
    .locals 8
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 694
    const-string v2, ""

    .line 695
    .local v2, "path":Ljava/lang/String;
    if-lez p3, :cond_0

    .line 697
    const-string v5, "java.io.tmpdir"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 699
    .local v4, "tmpdir":Ljava/lang/String;
    :try_start_0
    const-string v5, "NanoHTTPD"

    const-string v6, ""

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 700
    .local v3, "temp":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 701
    .local v1, "fstream":Ljava/io/OutputStream;
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 702
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 703
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 708
    .end local v1    # "fstream":Ljava/io/OutputStream;
    .end local v3    # "temp":Ljava/io/File;
    .end local v4    # "tmpdir":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 704
    .restart local v4    # "tmpdir":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myErr:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 792
    const-string v0, "text/plain"

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V

    .line 793
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V
    .locals 13
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "header"    # Ljava/util/Properties;
    .param p4, "data"    # Ljava/io/InputStream;

    .prologue
    .line 803
    if-nez p1, :cond_1

    .line 804
    :try_start_0
    new-instance v10, Ljava/lang/Error;

    const-string v11, "sendResponse(): Status can\'t be null."

    invoke-direct {v10, v11}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :catch_0
    move-exception v3

    .line 850
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_1
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 852
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void

    .line 806
    :cond_1
    :try_start_2
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 807
    .local v5, "out":Ljava/io/OutputStream;
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 808
    .local v7, "pw":Ljava/io/PrintWriter;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP/1.0 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " \r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 810
    if-eqz p2, :cond_2

    .line 811
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 813
    :cond_2
    if-eqz p3, :cond_3

    const-string v10, "Date"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_4

    .line 814
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Date: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$300()Ljava/text/SimpleDateFormat;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 816
    :cond_4
    if-eqz p3, :cond_5

    .line 818
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 819
    .local v2, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 821
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 822
    .local v4, "key":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 823
    .local v9, "value":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 827
    .end local v2    # "e":Ljava/util/Enumeration;
    .end local v4    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_5
    const-string v10, "\r\n"

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    .line 830
    if-eqz p4, :cond_6

    .line 832
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 833
    .local v6, "pending":I
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$400()I

    move-result v10

    new-array v1, v10, [B

    .line 834
    .local v1, "buff":[B
    :goto_2
    if-lez v6, :cond_6

    .line 836
    const/4 v11, 0x0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$400()I

    move-result v10

    if-le v6, v10, :cond_7

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$400()I

    move-result v10

    :goto_3
    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v11, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .line 837
    .local v8, "read":I
    if-gtz v8, :cond_8

    .line 842
    .end local v1    # "buff":[B
    .end local v6    # "pending":I
    .end local v8    # "read":I
    :cond_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 843
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 844
    if-eqz p4, :cond_0

    .line 845
    invoke-virtual/range {p4 .. p4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .restart local v1    # "buff":[B
    .restart local v6    # "pending":I
    :cond_7
    move v10, v6

    .line 836
    goto :goto_3

    .line 838
    .restart local v8    # "read":I
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {v5, v1, v10, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 839
    sub-int/2addr v6, v8

    .line 840
    goto :goto_2

    .line 850
    .end local v1    # "buff":[B
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "pending":I
    .end local v7    # "pw":Ljava/io/PrintWriter;
    .end local v8    # "read":I
    .restart local v3    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method

.method private stripMultipartHeaders([BI)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, "i":I
    move v0, p2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 721
    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p1, v0

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-byte v1, p1, v0

    if-ne v1, v2, :cond_1

    .line 724
    :cond_0
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 719
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBoundaryPositions([B[B)[I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "boundary"    # [B

    .prologue
    .line 655
    const/4 v3, 0x0

    .line 656
    .local v3, "matchcount":I
    const/4 v1, -0x1

    .line 657
    .local v1, "matchbyte":I
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 658
    .local v2, "matchbytes":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_3

    .line 660
    aget-byte v5, p1, v0

    aget-byte v6, p2, v3

    if-ne v5, v6, :cond_2

    .line 662
    if-nez v3, :cond_0

    .line 663
    move v1, v0

    .line 664
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 665
    array-length v5, p2

    if-ne v3, v5, :cond_1

    .line 667
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 668
    const/4 v3, 0x0

    .line 669
    const/4 v1, -0x1

    .line 658
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    :cond_2
    sub-int/2addr v0, v3

    .line 675
    const/4 v3, 0x0

    .line 676
    const/4 v1, -0x1

    goto :goto_1

    .line 679
    :cond_3
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 680
    .local v4, "ret":[I
    const/4 v0, 0x0

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 682
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v0

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 684
    :cond_4
    return-object v4
.end method

.method public run()V
    .locals 41

    .prologue
    .line 353
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v28

    .line 354
    .local v28, "is":Ljava/io/InputStream;
    if-nez v28, :cond_1

    .line 509
    .end local v28    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 359
    .restart local v28    # "is":Ljava/io/InputStream;
    :cond_1
    const/16 v20, 0x2000

    .line 360
    .local v20, "bufsize":I
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 361
    .local v19, "buf":[B
    const/4 v4, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v34

    .line 362
    .local v34, "rlen":I
    if-lez v34, :cond_0

    .line 365
    new-instance v25, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move/from16 v2, v34

    invoke-direct {v0, v1, v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 366
    .local v25, "hbis":Ljava/io/ByteArrayInputStream;
    new-instance v26, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 367
    .local v26, "hin":Ljava/io/BufferedReader;
    new-instance v31, Ljava/util/Properties;

    invoke-direct/range {v31 .. v31}, Ljava/util/Properties;-><init>()V

    .line 368
    .local v31, "pre":Ljava/util/Properties;
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    .line 369
    .local v8, "parms":Ljava/util/Properties;
    new-instance v13, Ljava/util/Properties;

    invoke-direct {v13}, Ljava/util/Properties;-><init>()V

    .line 370
    .local v13, "header":Ljava/util/Properties;
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 373
    .local v9, "files":Ljava/util/Properties;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2, v8, v13}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V

    .line 374
    const-string v4, "method"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 375
    .local v12, "method":Ljava/lang/String;
    const-string v4, "uri"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 377
    .local v11, "uri":Ljava/lang/String;
    const-wide v36, 0x7fffffffffffffffL

    .line 378
    .local v36, "size":J
    const-string v4, "content-length"

    invoke-virtual {v13, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v21

    .line 379
    .local v21, "contentLength":Ljava/lang/String;
    if-eqz v21, :cond_2

    .line 381
    :try_start_1
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v36, v0

    .line 387
    :cond_2
    :goto_1
    const/16 v38, 0x0

    .line 388
    .local v38, "splitbyte":I
    const/16 v35, 0x0

    .line 389
    .local v35, "sbfound":Z
    :goto_2
    move/from16 v0, v38

    move/from16 v1, v34

    if-ge v0, v1, :cond_3

    .line 391
    :try_start_2
    aget-byte v4, v19, v38

    const/16 v10, 0xd

    if-ne v4, v10, :cond_7

    add-int/lit8 v38, v38, 0x1

    aget-byte v4, v19, v38

    const/16 v10, 0xa

    if-ne v4, v10, :cond_7

    add-int/lit8 v38, v38, 0x1

    aget-byte v4, v19, v38

    const/16 v10, 0xd

    if-ne v4, v10, :cond_7

    add-int/lit8 v38, v38, 0x1

    aget-byte v4, v19, v38

    const/16 v10, 0xa

    if-ne v4, v10, :cond_7

    .line 392
    const/16 v35, 0x1

    .line 397
    :cond_3
    add-int/lit8 v38, v38, 0x1

    .line 401
    const-string v4, "PUT"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 403
    const-string v4, "upload"

    const-string v10, "bin"

    invoke-static {v4, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v40

    .line 404
    .local v40, "tmpfile":Ljava/io/File;
    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->deleteOnExit()V

    .line 405
    new-instance v24, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 406
    .local v24, "f":Ljava/io/OutputStream;
    const-string v4, "content"

    invoke-virtual/range {v40 .. v40}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .end local v40    # "tmpfile":Ljava/io/File;
    :goto_3
    move/from16 v0, v38

    move/from16 v1, v34

    if-ge v0, v1, :cond_4

    sub-int v4, v34, v38

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 420
    :cond_4
    move/from16 v0, v38

    move/from16 v1, v34

    if-ge v0, v1, :cond_9

    .line 421
    sub-int v4, v34, v38

    add-int/lit8 v4, v4, 0x1

    int-to-long v14, v4

    sub-long v36, v36, v14

    .line 426
    :cond_5
    :goto_4
    const/16 v4, 0x200

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 427
    :cond_6
    :goto_5
    if-ltz v34, :cond_b

    const-wide/16 v14, 0x0

    cmp-long v4, v36, v14

    if-lez v4, :cond_b

    .line 429
    const/4 v4, 0x0

    const/16 v10, 0x200

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v34

    .line 430
    move/from16 v0, v34

    int-to-long v14, v0

    sub-long v36, v36, v14

    .line 431
    if-lez v34, :cond_6

    .line 432
    const/4 v4, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move/from16 v2, v34

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 497
    .end local v8    # "parms":Ljava/util/Properties;
    .end local v9    # "files":Ljava/util/Properties;
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "method":Ljava/lang/String;
    .end local v13    # "header":Ljava/util/Properties;
    .end local v19    # "buf":[B
    .end local v20    # "bufsize":I
    .end local v21    # "contentLength":Ljava/lang/String;
    .end local v24    # "f":Ljava/io/OutputStream;
    .end local v25    # "hbis":Ljava/io/ByteArrayInputStream;
    .end local v26    # "hin":Ljava/io/BufferedReader;
    .end local v28    # "is":Ljava/io/InputStream;
    .end local v31    # "pre":Ljava/util/Properties;
    .end local v34    # "rlen":I
    .end local v35    # "sbfound":Z
    .end local v36    # "size":J
    .end local v38    # "splitbyte":I
    :catch_0
    move-exception v27

    .line 501
    .local v27, "ioe":Ljava/io/IOException;
    :try_start_3
    const-string v4, "500 Internal Server Error"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v27 .. v27}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 503
    :catch_1
    move-exception v4

    goto/16 :goto_0

    .line 395
    .end local v27    # "ioe":Ljava/io/IOException;
    .restart local v8    # "parms":Ljava/util/Properties;
    .restart local v9    # "files":Ljava/util/Properties;
    .restart local v11    # "uri":Ljava/lang/String;
    .restart local v12    # "method":Ljava/lang/String;
    .restart local v13    # "header":Ljava/util/Properties;
    .restart local v19    # "buf":[B
    .restart local v20    # "bufsize":I
    .restart local v21    # "contentLength":Ljava/lang/String;
    .restart local v25    # "hbis":Ljava/io/ByteArrayInputStream;
    .restart local v26    # "hin":Ljava/io/BufferedReader;
    .restart local v28    # "is":Ljava/io/InputStream;
    .restart local v31    # "pre":Ljava/util/Properties;
    .restart local v34    # "rlen":I
    .restart local v35    # "sbfound":Z
    .restart local v36    # "size":J
    .restart local v38    # "splitbyte":I
    :cond_7
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .line 410
    :cond_8
    :try_start_4
    new-instance v24, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .restart local v24    # "f":Ljava/io/OutputStream;
    goto :goto_3

    .line 422
    :cond_9
    if-eqz v35, :cond_a

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v4, v36, v14

    if-nez v4, :cond_5

    .line 423
    :cond_a
    const-wide/16 v36, 0x0

    goto :goto_4

    .line 437
    :cond_b
    const-string v4, "POST"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 440
    check-cast v24, Ljava/io/ByteArrayOutputStream;

    .end local v24    # "f":Ljava/io/OutputStream;
    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 443
    .local v6, "fbuf":[B
    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 444
    .local v17, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 446
    .local v7, "in":Ljava/io/BufferedReader;
    const-string v22, ""

    .line 447
    .local v22, "contentType":Ljava/lang/String;
    const-string v4, "content-type"

    invoke-virtual {v13, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 448
    .local v23, "contentTypeHeader":Ljava/lang/String;
    new-instance v39, Ljava/util/StringTokenizer;

    const-string v4, "; "

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .local v39, "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 450
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v22

    .line 453
    :cond_c
    const-string v4, "multipart/form-data"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 456
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_d

    .line 457
    const-string v4, "400 Bad Request"

    const-string v10, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_d
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    .line 459
    .local v18, "boundaryExp":Ljava/lang/String;
    new-instance v39, Ljava/util/StringTokenizer;

    .end local v39    # "st":Ljava/util/StringTokenizer;
    const-string v4, "="

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .restart local v39    # "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    const/4 v10, 0x2

    if-eq v4, v10, :cond_e

    .line 461
    const-string v4, "400 Bad Request"

    const-string v10, "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_e
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 463
    invoke-virtual/range {v39 .. v39}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .local v5, "boundary":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 465
    invoke-direct/range {v4 .. v9}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeMultipartData(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V

    .line 481
    .end local v5    # "boundary":Ljava/lang/String;
    .end local v18    # "boundaryExp":Ljava/lang/String;
    :goto_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 489
    .end local v6    # "fbuf":[B
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v17    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v22    # "contentType":Ljava/lang/String;
    .end local v23    # "contentTypeHeader":Ljava/lang/String;
    .end local v39    # "st":Ljava/util/StringTokenizer;
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->this$0:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->mySocket:Ljava/net/Socket;

    move-object/from16 v16, v0

    move-object v14, v8

    move-object v15, v9

    invoke-virtual/range {v10 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v32

    .line 490
    .local v32, "r":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    if-nez v32, :cond_13

    .line 491
    const-string v4, "500 Internal Server Error"

    const-string v10, "SERVER INTERNAL ERROR: Serve() returned a null response."

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendError(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :goto_8
    invoke-virtual/range {v28 .. v28}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 505
    .end local v8    # "parms":Ljava/util/Properties;
    .end local v9    # "files":Ljava/util/Properties;
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "method":Ljava/lang/String;
    .end local v13    # "header":Ljava/util/Properties;
    .end local v19    # "buf":[B
    .end local v20    # "bufsize":I
    .end local v21    # "contentLength":Ljava/lang/String;
    .end local v25    # "hbis":Ljava/io/ByteArrayInputStream;
    .end local v26    # "hin":Ljava/io/BufferedReader;
    .end local v28    # "is":Ljava/io/InputStream;
    .end local v31    # "pre":Ljava/util/Properties;
    .end local v32    # "r":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v34    # "rlen":I
    .end local v35    # "sbfound":Z
    .end local v36    # "size":J
    .end local v38    # "splitbyte":I
    :catch_2
    move-exception v4

    goto/16 :goto_0

    .line 470
    .restart local v6    # "fbuf":[B
    .restart local v7    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "parms":Ljava/util/Properties;
    .restart local v9    # "files":Ljava/util/Properties;
    .restart local v11    # "uri":Ljava/lang/String;
    .restart local v12    # "method":Ljava/lang/String;
    .restart local v13    # "header":Ljava/util/Properties;
    .restart local v17    # "bin":Ljava/io/ByteArrayInputStream;
    .restart local v19    # "buf":[B
    .restart local v20    # "bufsize":I
    .restart local v21    # "contentLength":Ljava/lang/String;
    .restart local v22    # "contentType":Ljava/lang/String;
    .restart local v23    # "contentTypeHeader":Ljava/lang/String;
    .restart local v25    # "hbis":Ljava/io/ByteArrayInputStream;
    .restart local v26    # "hin":Ljava/io/BufferedReader;
    .restart local v28    # "is":Ljava/io/InputStream;
    .restart local v31    # "pre":Ljava/util/Properties;
    .restart local v34    # "rlen":I
    .restart local v35    # "sbfound":Z
    .restart local v36    # "size":J
    .restart local v38    # "splitbyte":I
    .restart local v39    # "st":Ljava/util/StringTokenizer;
    :cond_10
    const-string v30, ""

    .line 471
    .local v30, "postLine":Ljava/lang/String;
    const/16 v4, 0x200

    new-array v0, v4, [C

    move-object/from16 v29, v0

    .line 472
    .local v29, "pbuf":[C
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v33

    .line 473
    .local v33, "read":I
    :goto_9
    if-ltz v33, :cond_11

    const-string v4, "\r\n"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v10, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-static {v0, v10, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 476
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v33

    goto :goto_9

    .line 478
    :cond_11
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Properties;)V

    goto :goto_6

    .line 483
    .end local v6    # "fbuf":[B
    .end local v7    # "in":Ljava/io/BufferedReader;
    .end local v17    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v22    # "contentType":Ljava/lang/String;
    .end local v23    # "contentTypeHeader":Ljava/lang/String;
    .end local v29    # "pbuf":[C
    .end local v30    # "postLine":Ljava/lang/String;
    .end local v33    # "read":I
    .end local v39    # "st":Ljava/util/StringTokenizer;
    .restart local v24    # "f":Ljava/io/OutputStream;
    :cond_12
    const-string v4, "PUT "

    invoke-virtual {v12, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 485
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V

    goto :goto_7

    .line 493
    .end local v24    # "f":Ljava/io/OutputStream;
    .restart local v32    # "r":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :cond_13
    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->status:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    move-object/from16 v0, v32

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10, v14, v15}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$HTTPSession;->sendResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    .line 382
    .end local v32    # "r":Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .end local v35    # "sbfound":Z
    .end local v38    # "splitbyte":I
    :catch_3
    move-exception v4

    goto/16 :goto_1
.end method
