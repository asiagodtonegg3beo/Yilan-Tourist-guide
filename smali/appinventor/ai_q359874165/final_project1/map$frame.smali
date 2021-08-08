.class public Lappinventor/ai_q359874165/final_project1/map$frame;
.super Lgnu/expr/ModuleBody;
.source "map.yail"


# instance fields
.field $main:Lappinventor/ai_q359874165/final_project1/map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 530
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    .line 622
    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda2()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 530
    :pswitch_1
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0}, Lappinventor/ai_q359874165/final_project1/map;->$define()V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda3()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda4()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda5()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda6()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0}, Lappinventor/ai_q359874165/final_project1/map;->map$BackPressed()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0}, Lappinventor/ai_q359874165/final_project1/map;->map$Initialize()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda7()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda8()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0}, Lappinventor/ai_q359874165/final_project1/map;->手動定位$Click()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda9()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda10()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0}, Lappinventor/ai_q359874165/final_project1/map;->清單選擇器1$AfterPicking()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda11()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda12()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_10
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0}, Lappinventor/ai_q359874165/final_project1/map;->資訊$Click()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_11
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda13()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_12
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda14()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_13
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0}, Lappinventor/ai_q359874165/final_project1/map;->前往$Click()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_14
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda15()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_15
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda16()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_16
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda17()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_17
    invoke-static {}, Lappinventor/ai_q359874165/final_project1/map;->lambda18()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_18
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0}, Lappinventor/ai_q359874165/final_project1/map;->計時器1$Timer()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 402
    :pswitch_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 310
    :pswitch_1
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0, p2}, Lappinventor/ai_q359874165/final_project1/map;->getSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 313
    :pswitch_2
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    :try_start_0
    check-cast p2, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p2}, Lappinventor/ai_q359874165/final_project1/map;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 320
    :pswitch_3
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0, p2}, Lappinventor/ai_q359874165/final_project1/map;->androidLogForm(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 333
    :pswitch_4
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    :try_start_1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0, p2}, Lappinventor/ai_q359874165/final_project1/map;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 339
    :pswitch_5
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    :try_start_2
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v0, p2}, Lappinventor/ai_q359874165/final_project1/map;->isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 394
    :pswitch_6
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0, p2}, Lappinventor/ai_q359874165/final_project1/map;->addToFormDoAfterCreation(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 399
    :pswitch_7
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0, p2}, Lappinventor/ai_q359874165/final_project1/map;->sendError(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 402
    :pswitch_8
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0, p2}, Lappinventor/ai_q359874165/final_project1/map;->processException(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "onCreate"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 333
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "lookup-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 339
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "is-bound-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 522
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 329
    :pswitch_1
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    :try_start_0
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_q359874165/final_project1/map;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 333
    :pswitch_2
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    :try_start_1
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_q359874165/final_project1/map;->lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 347
    :pswitch_3
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    :try_start_2
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_q359874165/final_project1/map;->addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 368
    :pswitch_4
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_q359874165/final_project1/map;->addToEvents(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 384
    :pswitch_5
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_q359874165/final_project1/map;->addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 522
    :pswitch_6
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0, p2, p3}, Lappinventor/ai_q359874165/final_project1/map;->lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "add-to-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 333
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "lookup-in-form-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 347
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "add-to-global-var-environment"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_0

    .line 480
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 375
    :sswitch_0
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    invoke-virtual {v0, p2, p3, p4, p5}, Lappinventor/ai_q359874165/final_project1/map;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 421
    :sswitch_1
    iget-object v1, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    :try_start_0
    check-cast p2, Lcom/google/appinventor/components/runtime/Component;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast p3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    check-cast p4, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    check-cast p5, [Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-virtual {v1, p2, p3, p4, p5}, Lappinventor/ai_q359874165/final_project1/map;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 480
    :sswitch_2
    iget-object v1, p0, Lappinventor/ai_q359874165/final_project1/map$frame;->$main:Lappinventor/ai_q359874165/final_project1/map;

    :try_start_4
    check-cast p2, Lcom/google/appinventor/components/runtime/Component;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    check-cast p3, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    if-eq p4, v2, :cond_1

    :goto_1
    :try_start_7
    check-cast p5, [Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-virtual {v1, p2, p3, v0, p5}, Lappinventor/ai_q359874165/final_project1/map;->dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 421
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "dispatchEvent"

    invoke-direct {v2, v1, v3, v0, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 422
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 423
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    invoke-direct {v1, v0, v2, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 424
    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchEvent"

    invoke-direct {v1, v0, v2, v5, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 480
    :catch_4
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "dispatchGenericEvent"

    invoke-direct {v2, v1, v3, v0, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 481
    :catch_5
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchGenericEvent"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 482
    :catch_6
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchGenericEvent"

    invoke-direct {v1, v0, v2, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 483
    :catch_7
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "dispatchGenericEvent"

    invoke-direct {v1, v0, v2, v5, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 4294967295
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v1, :pswitch_data_0

    .line 622
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    :goto_0
    return v0

    .line 4294967295
    :pswitch_0
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_2
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_3
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_4
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_5
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_6
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_7
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_8
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_9
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_c
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_d
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_e
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_10
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_11
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_12
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_13
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_14
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_15
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    :pswitch_16
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 530
    :pswitch_17
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 622
    :pswitch_18
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v0, p2, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    .prologue
    const v0, -0xbffff

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_0

    .line 310
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 402
    :cond_0
    :goto_0
    return v0

    :pswitch_1
    instance-of v2, p2, Lappinventor/ai_q359874165/final_project1/map;

    if-eqz v2, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 399
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 394
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 339
    :pswitch_4
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 333
    :pswitch_5
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 320
    :pswitch_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 313
    :pswitch_7
    instance-of v2, p2, Lappinventor/ai_q359874165/final_project1/map;

    if-eqz v2, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 310
    :pswitch_8
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    .prologue
    const v1, -0xbffff

    const/4 v3, 0x2

    const/4 v0, 0x0

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v2, :pswitch_data_0

    .line 329
    :pswitch_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 522
    :goto_0
    return v0

    :pswitch_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 384
    :pswitch_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 368
    :pswitch_3
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 347
    :pswitch_4
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 333
    :pswitch_5
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 329
    :pswitch_6
    instance-of v2, p2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    goto :goto_0

    .line 4294967295
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 6

    .prologue
    const v2, -0xbfffd

    const v1, -0xbfffe

    const v0, -0xbffff

    const/4 v5, 0x4

    const/4 v3, 0x0

    iget v4, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v4, :sswitch_data_0

    .line 375
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 480
    :cond_0
    :goto_0
    return v0

    :sswitch_0
    instance-of v4, p2, Lappinventor/ai_q359874165/final_project1/map;

    if-eqz v4, :cond_0

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_0

    .line 421
    :sswitch_1
    instance-of v4, p2, Lappinventor/ai_q359874165/final_project1/map;

    if-eqz v4, :cond_0

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of v0, p5, Ljava/lang/String;

    if-nez v0, :cond_5

    const v0, -0xbfffc

    goto :goto_0

    :cond_5
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_0

    .line 375
    :sswitch_2
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v3

    goto :goto_0

    .line 4294967295
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xf -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method
