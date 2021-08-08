.class public Landroidx/constraintlayout/solver/LinearSystem;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/LinearSystem$Row;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final FULL_DEBUG:Z

.field private static POOL_SIZE:I

.field public static sMetrics:Landroidx/constraintlayout/solver/Metrics;


# instance fields
.field private TABLE_SIZE:I

.field public graphOptimizer:Z

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Landroidx/constraintlayout/solver/Cache;

.field private mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field mNumRows:I

.field private mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

.field private mPoolVariablesCount:I

.field mRows:[Landroidx/constraintlayout/solver/ArrayRow;

.field private final mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field private tempClientsCopy:[Landroidx/constraintlayout/solver/ArrayRow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x3e8

    sput v0, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 47
    iput-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 54
    const/16 v0, 0x20

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    .line 55
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    .line 56
    iput-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 59
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    .line 62
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 65
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 66
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    .line 70
    sget v0, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    new-array v0, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 71
    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    .line 73
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v0, v0, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->tempClientsCopy:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 79
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v0, v0, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 80
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->releaseRows()V

    .line 81
    new-instance v0, Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/Cache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 82
    new-instance v0, Landroidx/constraintlayout/solver/GoalRow;

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/GoalRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    .line 83
    new-instance v0, Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    .line 84
    return-void
.end method

.method private acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 4
    .param p1, "type"    # Landroidx/constraintlayout/solver/SolverVariable$Type;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/SolverVariable;

    .line 306
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v0, :cond_1

    .line 307
    new-instance v0, Landroidx/constraintlayout/solver/SolverVariable;

    .end local v0    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    .line 308
    .restart local v0    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    .line 313
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    sget v2, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    if-lt v1, v2, :cond_0

    .line 314
    sget v1, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    mul-int/lit8 v1, v1, 0x2

    sput v1, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    .line 315
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    sget v2, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 317
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    aput-object v0, v1, v2

    .line 318
    return-object v0

    .line 310
    :cond_1
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 311
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addError(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 1
    .param p1, "row"    # Landroidx/constraintlayout/solver/ArrayRow;

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 242
    return-void
.end method

.method private final addRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 3
    .param p1, "row"    # Landroidx/constraintlayout/solver/ArrayRow;

    .prologue
    .line 538
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 541
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    aput-object p1, v0, v1

    .line 542
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 543
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 544
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 550
    return-void
.end method

.method private addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V
    .locals 1
    .param p1, "row"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "sign"    # I

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 246
    return-void
.end method

.method private computeValues()V
    .locals 4

    .prologue
    .line 847
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_0

    .line 848
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v2, v0

    .line 849
    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iput v3, v2, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 851
    .end local v1    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_0
    return-void
.end method

.method public static createRowCentering(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 8
    .param p0, "linearSystem"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "marginA"    # I
    .param p4, "bias"    # F
    .param p5, "variableC"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p6, "variableD"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p7, "marginB"    # I
    .param p8, "withError"    # Z

    .prologue
    .line 1297
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    .line 1298
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/solver/ArrayRow;->createRowCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1300
    if-eqz p8, :cond_0

    .line 1301
    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1315
    :cond_0
    return-object v0
.end method

.method public static createRowDimensionPercent(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2
    .param p0, "linearSystem"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "variableC"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p4, "percent"    # F
    .param p5, "withError"    # Z

    .prologue
    .line 1230
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1231
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    if-eqz p5, :cond_0

    .line 1232
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addError(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1234
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionPercent(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    return-object v1
.end method

.method public static createRowEquals(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2
    .param p0, "linearSystem"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .prologue
    .line 1201
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1202
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1203
    if-eqz p4, :cond_0

    .line 1204
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V

    .line 1215
    :cond_0
    return-object v0
.end method

.method public static createRowGreaterThan(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 4
    .param p0, "linearSystem"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .prologue
    .line 1242
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1243
    .local v1, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1244
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1245
    if-eqz p4, :cond_0

    .line 1246
    iget-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v2

    .line 1247
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V

    .line 1260
    .end local v2    # "slackValue":F
    :cond_0
    return-object v0
.end method

.method public static createRowLowerThan(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 4
    .param p0, "linearSystem"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .prologue
    .line 1268
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1269
    .local v1, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1270
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1271
    if-eqz p4, :cond_0

    .line 1272
    iget-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v2

    .line 1273
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V

    .line 1286
    .end local v2    # "slackValue":F
    :cond_0
    return-object v0
.end method

.method private createVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroidx/constraintlayout/solver/SolverVariable$Type;

    .prologue
    .line 263
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v1, :cond_0

    .line 264
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->variables:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->variables:J

    .line 266
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_1

    .line 267
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 269
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 270
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 271
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 272
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 273
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 274
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 275
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 277
    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 279
    return-object v0
.end method

.method private displayRows()V
    .locals 4

    .prologue
    .line 859
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    .line 860
    const-string v1, ""

    .line 861
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_0

    .line 862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 865
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 866
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 867
    return-void
.end method

.method private displaySolverVariables()V
    .locals 3

    .prologue
    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display Rows ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "s":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method private enforceBFS(Landroidx/constraintlayout/solver/LinearSystem$Row;)I
    .locals 26
    .param p1, "goal"    # Landroidx/constraintlayout/solver/LinearSystem$Row;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 700
    const/16 v17, 0x0

    .line 712
    .local v17, "tries":I
    const/4 v9, 0x0

    .line 713
    .local v9, "infeasibleSystem":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v20, v0

    aget-object v20, v20, v8

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v19, v0

    .line 715
    .local v19, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v20, v0

    sget-object v21, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 713
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 718
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v20, v0

    aget-object v20, v20, v8

    move-object/from16 v0, v20

    iget v0, v0, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_0

    .line 719
    const/4 v9, 0x1

    .line 725
    .end local v19    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2
    if-eqz v9, :cond_f

    .line 733
    const/4 v7, 0x0

    .line 734
    .local v7, "done":Z
    const/16 v17, 0x0

    .line 735
    :cond_3
    :goto_1
    if-nez v7, :cond_f

    .line 736
    sget-object v20, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v20, :cond_4

    .line 737
    sget-object v20, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    .line 739
    :cond_4
    add-int/lit8 v17, v17, 0x1

    .line 743
    const v12, 0x7f7fffff    # Float.MAX_VALUE

    .line 744
    .local v12, "min":F
    const/16 v16, 0x0

    .line 745
    .local v16, "strength":I
    const/4 v15, -0x1

    .line 746
    .local v15, "pivotRowIndex":I
    const/4 v13, -0x1

    .line 748
    .local v13, "pivotColumnIndex":I
    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_c

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v20, v0

    aget-object v6, v20, v8

    .line 750
    .local v6, "current":Landroidx/constraintlayout/solver/ArrayRow;
    iget-object v0, v6, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v19, v0

    .line 751
    .restart local v19    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v20, v0

    sget-object v21, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 748
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 756
    :cond_6
    iget-boolean v0, v6, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 759
    iget v0, v6, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_5

    .line 764
    const/4 v10, 0x1

    .local v10, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_5

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v20, v0

    aget-object v5, v20, v10

    .line 766
    .local v5, "candidate":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v0, v6, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v4

    .line 767
    .local v4, "a_j":F
    const/16 v20, 0x0

    cmpg-float v20, v4, v20

    if-gtz v20, :cond_8

    .line 764
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 773
    :cond_8
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_4
    const/16 v20, 0x7

    move/from16 v0, v20

    if-ge v11, v0, :cond_7

    .line 774
    iget-object v0, v5, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    move-object/from16 v20, v0

    aget v20, v20, v11

    div-float v18, v20, v4

    .line 775
    .local v18, "value":F
    cmpg-float v20, v18, v12

    if-gez v20, :cond_9

    move/from16 v0, v16

    if-eq v11, v0, :cond_a

    :cond_9
    move/from16 v0, v16

    if-le v11, v0, :cond_b

    .line 776
    :cond_a
    move/from16 v12, v18

    .line 777
    move v15, v8

    .line 778
    move v13, v10

    .line 779
    move/from16 v16, v11

    .line 773
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 786
    .end local v4    # "a_j":F
    .end local v5    # "candidate":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v6    # "current":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v10    # "j":I
    .end local v11    # "k":I
    .end local v18    # "value":F
    .end local v19    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_c
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v15, v0, :cond_e

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v20, v0

    aget-object v14, v20, v15

    .line 793
    .local v14, "pivotEquation":Landroidx/constraintlayout/solver/ArrayRow;
    iget-object v0, v14, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 794
    sget-object v20, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v20, :cond_d

    .line 795
    sget-object v20, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 797
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 798
    iget-object v0, v14, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput v15, v0, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 799
    iget-object v0, v14, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 808
    .end local v14    # "pivotEquation":Landroidx/constraintlayout/solver/ArrayRow;
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 810
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 806
    :cond_e
    const/4 v7, 0x1

    goto :goto_5

    .line 843
    .end local v7    # "done":Z
    .end local v12    # "min":F
    .end local v13    # "pivotColumnIndex":I
    .end local v15    # "pivotRowIndex":I
    .end local v16    # "strength":I
    :cond_f
    return v17
.end method

.method private getDisplaySize(I)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 955
    mul-int/lit8 v2, p1, 0x4

    div-int/lit16 v2, v2, 0x400

    div-int/lit16 v1, v2, 0x400

    .line 956
    .local v1, "mb":I
    if-lez v1, :cond_0

    .line 957
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Mb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 963
    :goto_0
    return-object v2

    .line 959
    :cond_0
    mul-int/lit8 v2, p1, 0x4

    div-int/lit16 v0, v2, 0x400

    .line 960
    .local v0, "kb":I
    if-lez v0, :cond_1

    .line 961
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Kb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 963
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, p1, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getDisplayStrength(I)Ljava/lang/String;
    .locals 1
    .param p1, "strength"    # I

    .prologue
    .line 971
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 972
    const-string v0, "LOW"

    .line 989
    :goto_0
    return-object v0

    .line 974
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 975
    const-string v0, "MEDIUM"

    goto :goto_0

    .line 977
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 978
    const-string v0, "HIGH"

    goto :goto_0

    .line 980
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 981
    const-string v0, "HIGHEST"

    goto :goto_0

    .line 983
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 984
    const-string v0, "EQUALITY"

    goto :goto_0

    .line 986
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 987
    const-string v0, "FIXED"

    goto :goto_0

    .line 989
    :cond_5
    const-string v0, "NONE"

    goto :goto_0
.end method

.method public static getMetrics()Landroidx/constraintlayout/solver/Metrics;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    return-object v0
.end method

.method private increaseTableSize()V
    .locals 6

    .prologue
    .line 112
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    .line 113
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 114
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 115
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 116
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    .line 117
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    .line 118
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v0, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    .line 120
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    .line 121
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    iput-wide v2, v0, Landroidx/constraintlayout/solver/Metrics;->lastTableSize:J

    .line 123
    :cond_0
    return-void
.end method

.method private final optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I
    .locals 20
    .param p1, "goal"    # Landroidx/constraintlayout/solver/LinearSystem$Row;
    .param p2, "b"    # Z

    .prologue
    .line 559
    sget-object v14, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v14, :cond_0

    .line 560
    sget-object v14, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v0, v14, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    .line 562
    :cond_0
    const/4 v4, 0x0

    .line 563
    .local v4, "done":Z
    const/4 v10, 0x0

    .line 564
    .local v10, "tries":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    if-ge v5, v14, :cond_3

    .line 565
    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    const/4 v15, 0x0

    aput-boolean v15, v14, v5

    .line 564
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 651
    .local v6, "min":F
    .local v7, "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    .local v9, "pivotRowIndex":I
    :cond_1
    const/4 v14, -0x1

    if-le v9, v14, :cond_b

    .line 656
    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v8, v14, v9

    .line 657
    .local v8, "pivotEquation":Landroidx/constraintlayout/solver/ArrayRow;
    iget-object v14, v8, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v15, -0x1

    iput v15, v14, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 658
    sget-object v14, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v14, :cond_2

    .line 659
    sget-object v14, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v0, v14, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 661
    :cond_2
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 662
    iget-object v14, v8, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v9, v14, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 663
    iget-object v14, v8, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v14, v8}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 576
    .end local v6    # "min":F
    .end local v7    # "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v8    # "pivotEquation":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v9    # "pivotRowIndex":I
    :cond_3
    :goto_1
    if-nez v4, :cond_d

    .line 577
    sget-object v14, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v14, :cond_4

    .line 578
    sget-object v14, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v0, v14, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v14, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    .line 580
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 585
    move-object/from16 v0, p0

    iget v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    mul-int/lit8 v14, v14, 0x2

    if-lt v10, v14, :cond_5

    move v11, v10

    .line 691
    .end local v10    # "tries":I
    .local v11, "tries":I
    :goto_2
    return v11

    .line 589
    .end local v11    # "tries":I
    .restart local v10    # "tries":I
    :cond_5
    invoke-interface/range {p1 .. p1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 590
    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-interface/range {p1 .. p1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v15

    iget v15, v15, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/16 v16, 0x1

    aput-boolean v16, v14, v15

    .line 592
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v14}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    .line 597
    .restart local v7    # "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v7, :cond_8

    .line 598
    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v15, v7, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v14, v14, v15

    if-eqz v14, :cond_7

    move v11, v10

    .line 599
    .end local v10    # "tries":I
    .restart local v11    # "tries":I
    goto :goto_2

    .line 601
    .end local v11    # "tries":I
    .restart local v10    # "tries":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v15, v7, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/16 v16, 0x1

    aput-boolean v16, v14, v15

    .line 605
    :cond_8
    if-eqz v7, :cond_c

    .line 619
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 620
    .restart local v6    # "min":F
    const/4 v9, -0x1

    .line 622
    .restart local v9    # "pivotRowIndex":I
    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v5, v14, :cond_1

    .line 623
    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v14, v5

    .line 624
    .local v3, "current":Landroidx/constraintlayout/solver/ArrayRow;
    iget-object v13, v3, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 625
    .local v13, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v14, v13, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v15, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v14, v15, :cond_a

    .line 622
    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 629
    :cond_a
    iget-boolean v14, v3, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v14, :cond_9

    .line 633
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/solver/ArrayRow;->hasVariable(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 639
    iget-object v14, v3, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v14, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v2

    .line 640
    .local v2, "a_j":F
    const/4 v14, 0x0

    cmpg-float v14, v2, v14

    if-gez v14, :cond_9

    .line 641
    iget v14, v3, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    neg-float v14, v14

    div-float v12, v14, v2

    .line 642
    .local v12, "value":F
    cmpg-float v14, v12, v6

    if-gez v14, :cond_9

    .line 643
    move v6, v12

    .line 644
    move v9, v5

    goto :goto_4

    .line 682
    .end local v2    # "a_j":F
    .end local v3    # "current":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v12    # "value":F
    .end local v13    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_b
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 688
    .end local v6    # "min":F
    .end local v9    # "pivotRowIndex":I
    :cond_c
    const/4 v4, 0x1

    goto/16 :goto_1

    .end local v7    # "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_d
    move v11, v10

    .line 691
    .end local v10    # "tries":I
    .restart local v11    # "tries":I
    goto :goto_2
.end method

.method private releaseRows()V
    .locals 4

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 130
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v2, v0

    .line 131
    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    if-eqz v1, :cond_0

    .line 132
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_1
    return-void
.end method

.method private final updateRowFromVariables(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 2
    .param p1, "row"    # Landroidx/constraintlayout/solver/ArrayRow;

    .prologue
    .line 448
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-lez v0, :cond_0

    .line 449
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->updateFromSystem(Landroidx/constraintlayout/solver/ArrayRow;[Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 450
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v0, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v0, :cond_0

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 454
    :cond_0
    return-void
.end method


# virtual methods
.method public addCenterPoint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .locals 18
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "angle"    # F
    .param p4, "radius"    # I

    .prologue
    .line 1329
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    .line 1330
    .local v9, "Al":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v3

    .line 1331
    .local v3, "At":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v10

    .line 1332
    .local v10, "Ar":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 1334
    .local v4, "Ab":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v11

    .line 1335
    .local v11, "Bl":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    .line 1336
    .local v5, "Bt":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v12

    .line 1337
    .local v12, "Br":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    .line 1339
    .local v6, "Bb":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v2

    .line 1340
    .local v2, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move/from16 v0, p3

    float-to-double v14, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v7, v14

    .line 1341
    .local v7, "angleComponent":F
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1342
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1343
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v2

    .line 1344
    move/from16 v0, p3

    float-to-double v14, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v7, v14

    move-object v8, v2

    move v13, v7

    .line 1345
    invoke-virtual/range {v8 .. v13}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1346
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1347
    return-void
.end method

.method public addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 9
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "m1"    # I
    .param p4, "bias"    # F
    .param p5, "c"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p6, "d"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p7, "m2"    # I
    .param p8, "strength"    # I

    .prologue
    .line 1098
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    .line 1099
    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/solver/ArrayRow;->createRowCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1100
    const/4 v2, 0x6

    move/from16 v0, p8

    if-eq v0, v2, :cond_0

    .line 1101
    move/from16 v0, p8

    invoke-virtual {v1, p0, v0}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1103
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1104
    return-void
.end method

.method public addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 8
    .param p1, "row"    # Landroidx/constraintlayout/solver/ArrayRow;

    .prologue
    const-wide/16 v6, 0x1

    .line 461
    if-nez p1, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_2

    .line 465
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    .line 466
    iget-boolean v3, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v3, :cond_2

    .line 467
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    .line 470
    :cond_2
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    if-ge v3, v4, :cond_3

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v3, v4, :cond_4

    .line 471
    :cond_3
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 477
    :cond_4
    const/4 v0, 0x0

    .line 478
    .local v0, "added":Z
    iget-boolean v3, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v3, :cond_9

    .line 480
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->updateRowFromVariables(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 482
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/ArrayRow;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 487
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/ArrayRow;->ensurePositiveConstant()V

    .line 494
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/ArrayRow;->chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 496
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 497
    .local v1, "extra":Landroidx/constraintlayout/solver/SolverVariable;
    iput-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 498
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->addRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 499
    const/4 v0, 0x1

    .line 500
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v3, p1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->initFromRow(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    .line 501
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/solver/LinearSystem;->optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I

    .line 502
    iget v3, v1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    .line 506
    iget-object v3, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v3, v1, :cond_6

    .line 508
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/ArrayRow;->pickPivot(Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v2

    .line 509
    .local v2, "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v2, :cond_6

    .line 510
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_5

    .line 511
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 513
    :cond_5
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 516
    .end local v2    # "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_6
    iget-boolean v3, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v3, :cond_7

    .line 517
    iget-object v3, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v3, p1}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 519
    :cond_7
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 523
    .end local v1    # "extra":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_8
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/ArrayRow;->hasKeyVariable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 532
    :cond_9
    if-nez v0, :cond_0

    .line 533
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->addRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto/16 :goto_0
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .prologue
    .line 1128
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1129
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1130
    const/4 v1, 0x6

    if-eq p4, v1, :cond_0

    .line 1131
    invoke-virtual {v0, p0, p4}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1133
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1134
    return-object v0
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 5
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # I

    .prologue
    .line 1146
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 1147
    .local v0, "idx":I
    iget v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1148
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v3, v0

    .line 1149
    .local v2, "row":Landroidx/constraintlayout/solver/ArrayRow;
    iget-boolean v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v3, :cond_0

    .line 1150
    int-to-float v3, p2

    iput v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 1166
    :goto_0
    return-void

    .line 1152
    :cond_0
    iget-object v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v3, v3, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v3, :cond_1

    .line 1153
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 1154
    int-to-float v3, p2

    iput v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 1156
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    .line 1157
    .local v1, "newRow":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1158
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_0

    .line 1162
    .end local v1    # "newRow":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v2    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v2

    .line 1163
    .restart local v2    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDefinition(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1164
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_0
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 5
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # I
    .param p3, "strength"    # I

    .prologue
    .line 1178
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 1179
    .local v0, "idx":I
    iget v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1180
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v3, v0

    .line 1181
    .local v2, "row":Landroidx/constraintlayout/solver/ArrayRow;
    iget-boolean v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v3, :cond_0

    .line 1182
    int-to-float v3, p2

    iput v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    .line 1195
    :goto_0
    return-void

    .line 1184
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    .line 1185
    .local v1, "newRow":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1186
    invoke-virtual {v1, p0, p3}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1187
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_0

    .line 1190
    .end local v1    # "newRow":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v2    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v2

    .line 1191
    .restart local v2    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDefinition(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1192
    invoke-virtual {v2, p0, p3}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1193
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    goto :goto_0
.end method

.method public addGreaterBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V
    .locals 5
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "hasMatchConstraintWidgets"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1029
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1030
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1031
    .local v1, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    iput v3, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1032
    invoke-virtual {v0, p1, p2, v1, v3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1033
    if-eqz p3, :cond_0

    .line 1035
    iget-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v2

    .line 1036
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1038
    .end local v2    # "slackValue":F
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1039
    return-void
.end method

.method public addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 3
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # I

    .prologue
    .line 1018
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1019
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1020
    .local v1, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1021
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1022
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1023
    return-void
.end method

.method public addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 4
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .prologue
    .line 1003
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1004
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1005
    .local v1, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v3, 0x0

    iput v3, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1006
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1007
    const/4 v3, 0x6

    if-eq p4, v3, :cond_0

    .line 1008
    iget-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v2

    .line 1009
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {p0, v0, v3, p4}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1011
    .end local v2    # "slackValue":F
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1012
    return-void
.end method

.method public addLowerBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Z)V
    .locals 5
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "hasMatchConstraintWidgets"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1067
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1068
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1069
    .local v1, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    iput v3, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1070
    invoke-virtual {v0, p1, p2, v1, v3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1071
    if-eqz p3, :cond_0

    .line 1073
    iget-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v2

    .line 1074
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1076
    .end local v2    # "slackValue":F
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1077
    return-void
.end method

.method public addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 4
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .prologue
    .line 1052
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1053
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1054
    .local v1, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v3, 0x0

    iput v3, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1055
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1056
    const/4 v3, 0x6

    if-eq p4, v3, :cond_0

    .line 1057
    iget-object v3, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v2

    .line 1058
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {p0, v0, v3, p4}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1060
    .end local v2    # "slackValue":F
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1061
    return-void
.end method

.method public addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V
    .locals 6
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "c"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p4, "d"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p5, "ratio"    # F
    .param p6, "strength"    # I

    .prologue
    .line 1110
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1111
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1112
    const/4 v1, 0x6

    if-eq p6, v1, :cond_0

    .line 1113
    invoke-virtual {v0, p0, p6}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1115
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1116
    return-void
.end method

.method addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V
    .locals 2
    .param p1, "row"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "sign"    # I
    .param p3, "strength"    # I

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 258
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p0, p3, v1}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 259
    .local v0, "error":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {p1, v0, p2}, Landroidx/constraintlayout/solver/ArrayRow;->addSingleError(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 260
    return-void
.end method

.method public createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 6
    .param p1, "strength"    # I
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 283
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v1, :cond_0

    .line 284
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->errors:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->errors:J

    .line 286
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_1

    .line 287
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 289
    :cond_1
    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-direct {p0, v1, p2}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 290
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 291
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 292
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 293
    iput p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 294
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 295
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/solver/LinearSystem$Row;->addError(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 296
    return-object v0
.end method

.method public createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 6

    .prologue
    .line 226
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v1, :cond_0

    .line 227
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    .line 229
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_1

    .line 230
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 232
    :cond_1
    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 233
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 234
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 235
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 236
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 237
    return-object v0
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 4
    .param p1, "anchor"    # Ljava/lang/Object;

    .prologue
    const/4 v3, -0x1

    .line 170
    if-nez p1, :cond_1

    .line 171
    const/4 v0, 0x0

    .line 196
    .end local p1    # "anchor":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 173
    .restart local p1    # "anchor":Ljava/lang/Object;
    :cond_1
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_2

    .line 174
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 176
    :cond_2
    const/4 v0, 0x0

    .line 177
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    instance-of v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 178
    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 179
    if-nez v0, :cond_3

    move-object v1, p1

    .line 180
    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 181
    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .end local p1    # "anchor":Ljava/lang/Object;
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 183
    :cond_3
    iget v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-eq v1, v3, :cond_4

    iget v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 186
    :cond_4
    iget v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-eq v1, v3, :cond_5

    .line 187
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 189
    :cond_5
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 190
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 191
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 192
    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 193
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method public createRow()Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2

    .prologue
    .line 200
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/ArrayRow;

    .line 201
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    if-nez v0, :cond_0

    .line 202
    new-instance v0, Landroidx/constraintlayout/solver/ArrayRow;

    .end local v0    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 206
    .restart local v0    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    :goto_0
    invoke-static {}, Landroidx/constraintlayout/solver/SolverVariable;->increaseErrorId()V

    .line 207
    return-object v0

    .line 204
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/ArrayRow;->reset()V

    goto :goto_0
.end method

.method public createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 6

    .prologue
    .line 211
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v1, :cond_0

    .line 212
    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    .line 214
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_1

    .line 215
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 217
    :cond_1
    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 218
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 219
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 220
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 221
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 222
    return-object v0
.end method

.method displayReadableRows()V
    .locals 4

    .prologue
    .line 870
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    .line 871
    const-string v1, " #  "

    .line 872
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_0

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n #  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 876
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    if-eqz v2, :cond_1

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 879
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method displaySystemInformations()V
    .locals 8

    .prologue
    .line 916
    const/4 v1, 0x0

    .line 917
    .local v1, "count":I
    const/4 v3, 0x0

    .line 918
    .local v3, "rowSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    if-ge v2, v4, :cond_1

    .line 919
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v4, v4, v2

    if-eqz v4, :cond_0

    .line 920
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v4

    add-int/2addr v3, v4

    .line 918
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 923
    :cond_1
    const/4 v0, 0x0

    .line 924
    .local v0, "actualRowSize":I
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v2, v4, :cond_3

    .line 925
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    .line 926
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v4

    add-int/2addr v0, v4

    .line 924
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 930
    :cond_3
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Linear System -> Table size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    iget v7, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/2addr v6, v7

    .line 931
    invoke-direct {p0, v6}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") -- row sizes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 932
    invoke-direct {p0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", actual size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 933
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rows: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cols: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " occupied cells, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 936
    invoke-direct {p0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 930
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method public displayVariablesReadableRows()V
    .locals 4

    .prologue
    .line 884
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    .line 885
    const-string v1, ""

    .line 886
    .local v1, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_1

    .line 887
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v3, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v2, v3, :cond_0

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 886
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 892
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 893
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V
    .locals 0
    .param p1, "metrics"    # Landroidx/constraintlayout/solver/Metrics;

    .prologue
    .line 87
    sput-object p1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    .line 88
    return-void
.end method

.method public getCache()Landroidx/constraintlayout/solver/Cache;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    return-object v0
.end method

.method getGoal()Landroidx/constraintlayout/solver/LinearSystem$Row;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    return-object v0
.end method

.method public getMemoryUsed()I
    .locals 3

    .prologue
    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "actualRowSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_1

    .line 900
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 901
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v2

    add-int/2addr v0, v2

    .line 899
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    :cond_1
    return v0
.end method

.method public getNumEquations()I
    .locals 1

    .prologue
    .line 908
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    return v0
.end method

.method public getNumVariables()I
    .locals 1

    .prologue
    .line 910
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .locals 3
    .param p1, "anchor"    # Ljava/lang/Object;

    .prologue
    .line 344
    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .end local p1    # "anchor":Ljava/lang/Object;
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 345
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v0, :cond_0

    .line 346
    iget v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 348
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getRow(I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 332
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getValueFor(Ljava/lang/String;)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 336
    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {p0, p1, v1}, Landroidx/constraintlayout/solver/LinearSystem;->getVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 337
    .local v0, "v":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v0, :cond_0

    .line 338
    const/4 v1, 0x0

    .line 340
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    goto :goto_0
.end method

.method getVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroidx/constraintlayout/solver/SolverVariable$Type;

    .prologue
    .line 359
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 360
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 362
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/SolverVariable;

    .line 363
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v0, :cond_1

    .line 364
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/LinearSystem;->createVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 366
    :cond_1
    return-object v0
.end method

.method public minimize()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    .line 377
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_0

    .line 378
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    .line 383
    :cond_0
    iget-boolean v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    if-eqz v3, :cond_6

    .line 384
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_1

    .line 385
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    .line 387
    :cond_1
    const/4 v0, 0x1

    .line 388
    .local v0, "fullySolved":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v1, v3, :cond_2

    .line 389
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v3, v1

    .line 390
    .local v2, "r":Landroidx/constraintlayout/solver/ArrayRow;
    iget-boolean v3, v2, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v3, :cond_3

    .line 391
    const/4 v0, 0x0

    .line 395
    .end local v2    # "r":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_2
    if-nez v0, :cond_4

    .line 396
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    .line 409
    .end local v0    # "fullySolved":Z
    .end local v1    # "i":I
    :goto_1
    return-void

    .line 388
    .restart local v0    # "fullySolved":Z
    .restart local v1    # "i":I
    .restart local v2    # "r":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    .end local v2    # "r":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_4
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_5

    .line 399
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    .line 401
    :cond_5
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    goto :goto_1

    .line 404
    .end local v0    # "fullySolved":Z
    .end local v1    # "i":I
    :cond_6
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/solver/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    goto :goto_1
.end method

.method minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V
    .locals 6
    .param p1, "goal"    # Landroidx/constraintlayout/solver/LinearSystem$Row;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 416
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_0

    .line 417
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v0, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    .line 418
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    .line 419
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    sget-object v1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v2, v1, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    :cond_0
    move-object v0, p1

    .line 426
    check-cast v0, Landroidx/constraintlayout/solver/ArrayRow;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->updateRowFromVariables(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 430
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->enforceBFS(Landroidx/constraintlayout/solver/LinearSystem$Row;)I

    .line 435
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I

    .line 440
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    .line 441
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 143
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v1, v2, v0

    .line 144
    .local v1, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    invoke-interface {v2, v3, v4}, Landroidx/constraintlayout/solver/Pools$Pool;->releaseAll([Ljava/lang/Object;I)V

    .line 149
    iput v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    .line 151
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 153
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 155
    :cond_2
    iput v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 156
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v2}, Landroidx/constraintlayout/solver/LinearSystem$Row;->clear()V

    .line 157
    const/4 v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 158
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_3

    .line 159
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v0

    iput-boolean v5, v2, Landroidx/constraintlayout/solver/ArrayRow;->used:Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_3
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->releaseRows()V

    .line 162
    iput v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 163
    return-void
.end method
