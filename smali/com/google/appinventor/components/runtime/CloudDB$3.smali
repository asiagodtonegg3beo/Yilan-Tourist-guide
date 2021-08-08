.class Lcom/google/appinventor/components/runtime/CloudDB$3;
.super Ljava/lang/Object;
.source "CloudDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/CloudDB;->StoreValue(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/CloudDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/CloudDB;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/CloudDB;

    .prologue
    .line 673
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 675
    const/4 v5, 0x0

    .line 676
    .local v5, "pendingValueList":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 677
    .local v3, "pendingTag":Ljava/lang/String;
    const/4 v4, 0x0

    .line 684
    .local v4, "pendingValue":Ljava/lang/String;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 689
    .local v6, "size":I
    if-nez v6, :cond_1

    .line 693
    const/4 v9, 0x0

    .line 703
    .local v9, "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    if-nez v9, :cond_2

    .line 709
    if-eqz v3, :cond_0

    .line 710
    :try_start_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, "jsonValueList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v11, "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

    const-string v12, "765978e4c340012f50733280368a0ccc4a14dfb7"

    const/4 v13, 0x1

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v15, 0x2

    aput-object v2, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 762
    .end local v2    # "jsonValueList":Ljava/lang/String;
    .end local v6    # "size":I
    .end local v9    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :cond_0
    :goto_2
    return-void

    .line 698
    .restart local v6    # "size":I
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;

    .restart local v9    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    goto :goto_1

    .line 703
    .end local v6    # "size":I
    .end local v9    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 759
    :catch_0
    move-exception v1

    .line 760
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "CloudDB"

    const-string v11, "Exception in store worker!"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 716
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "size":I
    .restart local v9    # "work":Lcom/google/appinventor/components/runtime/CloudDB$storedValue;
    :catch_1
    move-exception v1

    .line 717
    .local v1, "e":Lredis/clients/jedis/exceptions/JedisException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v1}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/CloudDB;->access$800(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    goto :goto_2

    .line 723
    .end local v1    # "e":Lredis/clients/jedis/exceptions/JedisException;
    :cond_2
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->getTag()Ljava/lang/String;

    move-result-object v7

    .line 724
    .local v7, "tag":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/CloudDB$storedValue;->getValueList()Lorg/json/JSONArray;

    move-result-object v8

    .line 725
    .local v8, "valueList":Lorg/json/JSONArray;
    if-eqz v7, :cond_3

    if-nez v8, :cond_3

    .line 734
    :cond_3
    if-nez v3, :cond_4

    .line 735
    move-object v3, v7

    .line 736
    move-object v5, v8

    .line 737
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 738
    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 739
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 740
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 743
    :cond_5
    :try_start_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 747
    .restart local v2    # "jsonValueList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const-string v11, "local key = KEYS[1];local value = ARGV[1];local topublish = cjson.decode(ARGV[2]);local project = ARGV[3];local newtable = {};table.insert(newtable, key);table.insert(newtable, topublish);redis.call(\"publish\", project, cjson.encode(newtable));return redis.call(\'set\', project .. \":\" .. key, value);"

    const-string v12, "765978e4c340012f50733280368a0ccc4a14dfb7"

    const/4 v13, 0x1

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    const/4 v15, 0x2

    aput-object v2, v14, v15

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/google/appinventor/components/runtime/CloudDB;->access$100(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/appinventor/components/runtime/CloudDB;->jEval(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/Object;
    :try_end_6
    .catch Lredis/clients/jedis/exceptions/JedisException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 754
    move-object v3, v7

    .line 755
    move-object v5, v8

    .line 756
    const/4 v10, 0x0

    :try_start_7
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 748
    .end local v2    # "jsonValueList":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 749
    .restart local v1    # "e":Lredis/clients/jedis/exceptions/JedisException;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-virtual {v1}, Lredis/clients/jedis/exceptions/JedisException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/appinventor/components/runtime/CloudDB;->CloudDBError(Ljava/lang/String;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/CloudDB;->access$800(Lcom/google/appinventor/components/runtime/CloudDB;Z)V

    .line 751
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/appinventor/components/runtime/CloudDB$3;->this$0:Lcom/google/appinventor/components/runtime/CloudDB;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/CloudDB;->access$700(Lcom/google/appinventor/components/runtime/CloudDB;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2
.end method
