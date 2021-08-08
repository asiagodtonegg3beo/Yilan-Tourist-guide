.class public Lappinventor/ai_q359874165/final_project1/reward$frame0;
.super Lgnu/expr/ModuleBody;
.source "reward.yail"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lappinventor/ai_q359874165/final_project1/reward;->網路1$GotText(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation


# instance fields
.field $responseContent:Ljava/lang/Object;

.field final lambda$Fn59:Lgnu/expr/ModuleMethod;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lappinventor/ai_q359874165/final_project1/reward$frame0;->lambda$Fn59:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lappinventor/ai_q359874165/final_project1/reward$frame0;->lambda60(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method lambda60(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .param p1, "$\u6578\u5b57"    # Ljava/lang/Object;

    .prologue
    .line 257
    sget-object v1, Lcom/google/youngandroid/runtime;->yail$Mnlist$Mnadd$Mnto$Mnlist$Ex:Lgnu/expr/ModuleMethod;

    sget-object v0, Lappinventor/ai_q359874165/final_project1/reward;->Lit3:Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lcom/google/youngandroid/runtime;->$Stthe$Mnnull$Mnvalue$St:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/youngandroid/runtime;->lookupGlobalVarInCurrentFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/youngandroid/runtime;->yail$Mnalist$Mnlookup:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/strings;->string$Mnappend:Lgnu/expr/ModuleMethod;

    const-string v4, "field"

    instance-of v5, p1, Ljava/lang/Package;

    if-eqz v5, :cond_0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "The variable "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lappinventor/ai_q359874165/final_project1/reward;->Lit223:Lgnu/mapping/SimpleSymbol;

    invoke-static {v7}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, " is not bound in the current context"

    aput-object v7, v5, v6

    invoke-static {v5}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v5

    const-string v6, "Unbound Variable"

    invoke-static {v5, v6}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "$\u6578\u5b57":Ljava/lang/Object;
    :cond_0
    invoke-static {v4, p1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    sget-object v5, Lappinventor/ai_q359874165/final_project1/reward;->Lit224:Lgnu/lists/PairWithPosition;

    const-string v6, "join"

    invoke-static {v0, v4, v5, v6}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/google/youngandroid/runtime;->yail$Mnlist$Mnget$Mnitem:Lgnu/expr/ModuleMethod;

    sget-object v6, Lcom/google/youngandroid/runtime;->yail$Mnalist$Mnlookup:Lgnu/expr/ModuleMethod;

    const-string v7, "feeds"

    sget-object v8, Lappinventor/ai_q359874165/final_project1/reward;->Lit51:Lgnu/mapping/SimpleSymbol;

    sget-object v9, Lappinventor/ai_q359874165/final_project1/reward;->Lit225:Lgnu/mapping/SimpleSymbol;

    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/reward$frame0;->$responseContent:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Package;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "The variable "

    aput-object v11, v0, v10

    const/4 v10, 0x1

    sget-object v11, Lappinventor/ai_q359874165/final_project1/reward;->Lit226:Lgnu/mapping/SimpleSymbol;

    invoke-static {v11}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v0, v10

    const/4 v10, 0x2

    const-string v11, " is not bound in the current context"

    aput-object v11, v0, v10

    invoke-static {v0}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    const-string v10, "Unbound Variable"

    invoke-static {v0, v10}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v10, Lappinventor/ai_q359874165/final_project1/reward;->Lit227:Lgnu/lists/PairWithPosition;

    invoke-static {v8, v9, v0, v10}, Lcom/google/youngandroid/runtime;->callComponentMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v8, "not found"

    invoke-static {v7, v0, v8}, Lgnu/lists/LList;->list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v7, Lappinventor/ai_q359874165/final_project1/reward;->Lit228:Lgnu/lists/PairWithPosition;

    const-string v8, "lookup in pairs"

    invoke-static {v6, v0, v7, v8}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/google/youngandroid/runtime;->yail$Mnlist$Mnlength:Lgnu/expr/ModuleMethod;

    sget-object v8, Lcom/google/youngandroid/runtime;->yail$Mnalist$Mnlookup:Lgnu/expr/ModuleMethod;

    const-string v9, "feeds"

    sget-object v10, Lappinventor/ai_q359874165/final_project1/reward;->Lit51:Lgnu/mapping/SimpleSymbol;

    sget-object v11, Lappinventor/ai_q359874165/final_project1/reward;->Lit225:Lgnu/mapping/SimpleSymbol;

    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/reward$frame0;->$responseContent:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Package;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "The variable "

    aput-object v13, v0, v12

    const/4 v12, 0x1

    sget-object v13, Lappinventor/ai_q359874165/final_project1/reward;->Lit226:Lgnu/mapping/SimpleSymbol;

    invoke-static {v13}, Lcom/google/youngandroid/runtime;->getDisplayRepresentation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v0, v12

    const/4 v12, 0x2

    const-string v13, " is not bound in the current context"

    aput-object v13, v0, v12

    invoke-static {v0}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    const-string v12, "Unbound Variable"

    invoke-static {v0, v12}, Lcom/google/youngandroid/runtime;->signalRuntimeError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v12, Lappinventor/ai_q359874165/final_project1/reward;->Lit229:Lgnu/lists/PairWithPosition;

    invoke-static {v10, v11, v0, v12}, Lcom/google/youngandroid/runtime;->callComponentMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v10, "not found"

    invoke-static {v9, v0, v10}, Lgnu/lists/LList;->list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v9, Lappinventor/ai_q359874165/final_project1/reward;->Lit230:Lgnu/lists/PairWithPosition;

    const-string v10, "lookup in pairs"

    invoke-static {v8, v0, v9, v10}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v8, Lappinventor/ai_q359874165/final_project1/reward;->Lit231:Lgnu/lists/PairWithPosition;

    const-string v9, "length of list"

    invoke-static {v7, v0, v8, v9}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v6, Lappinventor/ai_q359874165/final_project1/reward;->Lit232:Lgnu/lists/PairWithPosition;

    const-string v7, "select list item"

    invoke-static {v5, v0, v6, v7}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "not found"

    invoke-static {v4, v0, v5}, Lgnu/lists/LList;->list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v4, Lappinventor/ai_q359874165/final_project1/reward;->Lit233:Lgnu/lists/PairWithPosition;

    const-string v5, "lookup in pairs"

    invoke-static {v3, v0, v4, v5}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    sget-object v2, Lappinventor/ai_q359874165/final_project1/reward;->Lit234:Lgnu/lists/PairWithPosition;

    const-string v3, "add items to list"

    invoke-static {v1, v0, v2, v3}, Lcom/google/youngandroid/runtime;->callYailPrimitive(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/reward$frame0;->$responseContent:Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lappinventor/ai_q359874165/final_project1/reward$frame0;->$responseContent:Ljava/lang/Object;

    goto :goto_1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    if-ne v0, v1, :cond_0

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method
