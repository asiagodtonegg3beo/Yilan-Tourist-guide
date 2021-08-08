.class public Lgnu/xquery/util/ArithOp;
.super Lgnu/mapping/Procedure1or2;
.source "ArithOp.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field static final TEN:Ljava/math/BigInteger;

.field public static final add:Lgnu/xquery/util/ArithOp;

.field public static final div:Lgnu/xquery/util/ArithOp;

.field public static final idiv:Lgnu/xquery/util/ArithOp;

.field public static final minus:Lgnu/xquery/util/ArithOp;

.field public static final mod:Lgnu/xquery/util/ArithOp;

.field public static final mul:Lgnu/xquery/util/ArithOp;

.field public static final plus:Lgnu/xquery/util/ArithOp;

.field public static final sub:Lgnu/xquery/util/ArithOp;


# instance fields
.field op:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 16
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/ArithOp;->TEN:Ljava/math/BigInteger;

    .line 18
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v1, "+"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->add:Lgnu/xquery/util/ArithOp;

    .line 19
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v1, "-"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->sub:Lgnu/xquery/util/ArithOp;

    .line 20
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v1, "*"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->mul:Lgnu/xquery/util/ArithOp;

    .line 21
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v1, "div"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->div:Lgnu/xquery/util/ArithOp;

    .line 22
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v1, "idiv"

    const/16 v2, 0x69

    invoke-direct {v0, v1, v2, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->idiv:Lgnu/xquery/util/ArithOp;

    .line 23
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v1, "mod"

    const/16 v2, 0x6d

    invoke-direct {v0, v1, v2, v3}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->mod:Lgnu/xquery/util/ArithOp;

    .line 24
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v1, "+"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2, v4}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->plus:Lgnu/xquery/util/ArithOp;

    .line 25
    new-instance v0, Lgnu/xquery/util/ArithOp;

    const-string v1, "-"

    const/16 v2, 0x4d

    invoke-direct {v0, v1, v2, v4}, Lgnu/xquery/util/ArithOp;-><init>(Ljava/lang/String;CI)V

    sput-object v0, Lgnu/xquery/util/ArithOp;->minus:Lgnu/xquery/util/ArithOp;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;CI)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "op"    # C
    .param p3, "nargs"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure1or2;-><init>(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateArithOp"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/ArithOp;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    iput-char p2, p0, Lgnu/xquery/util/ArithOp;->op:C

    .line 33
    return-void
.end method

.method public static div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "d1"    # Ljava/math/BigDecimal;
    .param p1, "d2"    # Ljava/math/BigDecimal;

    .prologue
    .line 66
    sget-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 38
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, p1

    .line 57
    :goto_0
    return-object v1

    .line 40
    :cond_1
    instance-of v1, p1, Lgnu/kawa/xml/KNode;

    if-nez v1, :cond_2

    instance-of v1, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v1, :cond_3

    .line 41
    :cond_2
    sget-object v1, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    :cond_3
    iget-char v1, p0, Lgnu/xquery/util/ArithOp;->op:C

    packed-switch v1, :pswitch_data_0

    .line 60
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lgnu/xquery/util/ArithOp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :pswitch_1
    const/4 v1, 0x1

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 47
    :pswitch_2
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v0

    .line 48
    .local v0, "code1":I
    packed-switch v0, :pswitch_data_1

    .line 55
    instance-of v1, p1, Lgnu/math/Numeric;

    if-eqz v1, :cond_4

    move-object v1, p1

    .line 56
    check-cast v1, Lgnu/math/Numeric;

    invoke-virtual {v1}, Lgnu/math/Numeric;->neg()Lgnu/math/Numeric;

    move-result-object v1

    goto :goto_0

    .line 51
    :pswitch_3
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v1

    neg-float v1, v1

    invoke-static {v1}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 53
    :pswitch_4
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 57
    :cond_4
    const/4 v1, -0x1

    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 48
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 90
    sget-object v30, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object/from16 v30, p1

    .line 214
    :goto_0
    return-object v30

    .line 92
    :cond_1
    sget-object v30, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move-object/from16 v30, p2

    .line 93
    goto :goto_0

    .line 94
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/kawa/xml/KNode;

    move/from16 v30, v0

    if-nez v30, :cond_4

    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/kawa/xml/UntypedAtomic;

    move/from16 v30, v0

    if-eqz v30, :cond_5

    .line 95
    :cond_4
    sget-object v30, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static/range {p1 .. p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 96
    :cond_5
    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/kawa/xml/KNode;

    move/from16 v30, v0

    if-nez v30, :cond_6

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/kawa/xml/UntypedAtomic;

    move/from16 v30, v0

    if-eqz v30, :cond_7

    .line 97
    :cond_6
    sget-object v30, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static/range {p2 .. p2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 98
    :cond_7
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/xquery/util/ArithOp;->op:C

    move/from16 v30, v0

    packed-switch v30, :pswitch_data_0

    .line 107
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v5

    .line 108
    .local v5, "code1":I
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v6

    .line 109
    .local v6, "code2":I
    if-ge v5, v6, :cond_9

    move v4, v6

    .line 110
    .local v4, "code":I
    :goto_1
    move-object/from16 v0, p0

    iget-char v0, v0, Lgnu/xquery/util/ArithOp;->op:C

    move/from16 v30, v0

    sparse-switch v30, :sswitch_data_0

    .line 217
    :cond_8
    new-instance v30, Ljava/lang/UnsupportedOperationException;

    invoke-virtual/range {p0 .. p0}, Lgnu/xquery/util/ArithOp;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 101
    .end local v4    # "code":I
    .end local v5    # "code1":I
    .end local v6    # "code2":I
    :pswitch_1
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    goto :goto_0

    .line 103
    :pswitch_2
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lgnu/kawa/functions/AddOp;->apply2(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    goto/16 :goto_0

    .line 105
    :pswitch_3
    sget-object v30, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/MultiplyOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    goto/16 :goto_0

    .restart local v5    # "code1":I
    .restart local v6    # "code2":I
    :cond_9
    move v4, v5

    .line 109
    goto :goto_1

    .line 113
    .restart local v4    # "code":I
    :sswitch_0
    if-ltz v5, :cond_8

    if-ltz v6, :cond_8

    .line 115
    const/16 v30, 0x6

    move/from16 v0, v30

    if-gt v4, v0, :cond_a

    .line 117
    sget-object v30, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/math/BigDecimal;

    .line 119
    .local v10, "d1":Ljava/math/BigDecimal;
    sget-object v30, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/math/BigDecimal;

    .line 121
    .local v12, "d2":Ljava/math/BigDecimal;
    invoke-static {v10, v12}, Lgnu/xquery/util/ArithOp;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v30

    goto/16 :goto_0

    .line 123
    .end local v10    # "d1":Ljava/math/BigDecimal;
    .end local v12    # "d2":Ljava/math/BigDecimal;
    :cond_a
    const/16 v30, 0x7

    move/from16 v0, v30

    if-ne v4, v0, :cond_b

    .line 125
    new-instance v31, Ljava/lang/Float;

    move-object/from16 v30, p1

    check-cast v30, Ljava/lang/Number;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->floatValue()F

    move-result v32

    move-object/from16 v30, p2

    check-cast v30, Ljava/lang/Number;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->floatValue()F

    move-result v30

    div-float v30, v32, v30

    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v30, v31

    goto/16 :goto_0

    .line 128
    :cond_b
    const/16 v30, 0x8

    move/from16 v0, v30

    if-ne v4, v0, :cond_c

    .line 130
    new-instance v31, Ljava/lang/Double;

    move-object/from16 v30, p1

    check-cast v30, Ljava/lang/Number;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v32

    move-object/from16 v30, p2

    check-cast v30, Ljava/lang/Number;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v34

    div-double v32, v32, v34

    invoke-direct/range {v31 .. v33}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v30, v31

    goto/16 :goto_0

    .line 133
    :cond_c
    move-object/from16 v0, p1

    instance-of v0, v0, Lgnu/math/Duration;

    move/from16 v30, v0

    if-eqz v30, :cond_f

    move-object/from16 v0, p2

    instance-of v0, v0, Lgnu/math/Duration;

    move/from16 v30, v0

    if-eqz v30, :cond_f

    move-object/from16 v7, p1

    .line 135
    check-cast v7, Lgnu/math/Duration;

    .local v7, "dur1":Lgnu/math/Duration;
    move-object/from16 v14, p2

    .line 136
    check-cast v14, Lgnu/math/Duration;

    .line 137
    .local v14, "dur2":Lgnu/math/Duration;
    invoke-virtual {v7}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v30

    sget-object v31, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_d

    invoke-virtual {v14}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v30

    sget-object v31, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_d

    .line 139
    invoke-virtual {v7}, Lgnu/math/Duration;->getTotalSeconds()J

    move-result-wide v24

    .line 140
    .local v24, "s1":J
    invoke-virtual {v14}, Lgnu/math/Duration;->getTotalSeconds()J

    move-result-wide v26

    .line 141
    .local v26, "s2":J
    invoke-virtual {v7}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v22

    .line 142
    .local v22, "n1":I
    invoke-virtual {v14}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v23

    .line 143
    .local v23, "n2":I
    move-wide/from16 v0, v24

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lgnu/xquery/util/TimeUtils;->secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;

    move-result-object v28

    .line 144
    .local v28, "sec1":Ljava/math/BigDecimal;
    move-wide/from16 v0, v26

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lgnu/xquery/util/TimeUtils;->secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;

    move-result-object v29

    .line 145
    .local v29, "sec2":Ljava/math/BigDecimal;
    invoke-static/range {v28 .. v29}, Lgnu/xquery/util/ArithOp;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v30

    goto/16 :goto_0

    .line 147
    .end local v22    # "n1":I
    .end local v23    # "n2":I
    .end local v24    # "s1":J
    .end local v26    # "s2":J
    .end local v28    # "sec1":Ljava/math/BigDecimal;
    .end local v29    # "sec2":Ljava/math/BigDecimal;
    :cond_d
    invoke-virtual {v7}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v30

    sget-object v31, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_e

    invoke-virtual {v14}, Lgnu/math/Duration;->unit()Lgnu/math/Unit;

    move-result-object v30

    sget-object v31, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_e

    .line 149
    invoke-virtual {v7}, Lgnu/math/Duration;->getTotalMonths()I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v20

    .line 150
    .local v20, "m1":Ljava/math/BigDecimal;
    invoke-virtual {v14}, Lgnu/math/Duration;->getTotalMonths()I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v21

    .line 151
    .local v21, "m2":Ljava/math/BigDecimal;
    invoke-static/range {v20 .. v21}, Lgnu/xquery/util/ArithOp;->div(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v30

    goto/16 :goto_0

    .line 153
    .end local v20    # "m1":Ljava/math/BigDecimal;
    .end local v21    # "m2":Ljava/math/BigDecimal;
    :cond_e
    new-instance v30, Ljava/lang/ArithmeticException;

    const-string v31, "divide of incompatible durations"

    invoke-direct/range {v30 .. v31}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 155
    .end local v7    # "dur1":Lgnu/math/Duration;
    .end local v14    # "dur2":Lgnu/math/Duration;
    :cond_f
    if-ltz v4, :cond_10

    .line 156
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v30

    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asNumeric(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lgnu/math/Numeric;->div(Ljava/lang/Object;)Lgnu/math/Numeric;

    move-result-object v30

    goto/16 :goto_0

    .line 158
    :cond_10
    :sswitch_1
    if-ltz v5, :cond_8

    if-ltz v6, :cond_8

    .line 160
    const/16 v30, 0x4

    move/from16 v0, v30

    if-gt v4, v0, :cond_11

    .line 162
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v18

    .line 163
    .local v18, "i1":Lgnu/math/IntNum;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v19

    .line 164
    .local v19, "i2":Lgnu/math/IntNum;
    invoke-static/range {v18 .. v19}, Lgnu/math/IntNum;->quotient(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v30

    goto/16 :goto_0

    .line 166
    .end local v18    # "i1":Lgnu/math/IntNum;
    .end local v19    # "i2":Lgnu/math/IntNum;
    :cond_11
    const/16 v30, 0x6

    move/from16 v0, v30

    if-gt v4, v0, :cond_12

    .line 168
    sget-object v30, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/math/BigDecimal;

    .line 170
    .restart local v10    # "d1":Ljava/math/BigDecimal;
    sget-object v30, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/math/BigDecimal;

    .line 172
    .restart local v12    # "d2":Ljava/math/BigDecimal;
    const/16 v30, 0x0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v10, v12, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/math/BigDecimal;)Lgnu/math/IntNum;

    move-result-object v30

    goto/16 :goto_0

    .line 175
    .end local v10    # "d1":Ljava/math/BigDecimal;
    .end local v12    # "d2":Ljava/math/BigDecimal;
    :cond_12
    const/16 v30, 0x7

    move/from16 v0, v30

    if-gt v4, v0, :cond_13

    move-object/from16 v30, p1

    .line 177
    check-cast v30, Ljava/lang/Number;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->floatValue()F

    move-result v31

    move-object/from16 v30, p2

    check-cast v30, Ljava/lang/Number;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->floatValue()F

    move-result v30

    div-float v15, v31, v30

    .line 179
    .local v15, "f":F
    float-to-double v0, v15

    move-wide/from16 v30, v0

    const/16 v32, 0x3

    invoke-static/range {v30 .. v32}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v30

    goto/16 :goto_0

    .end local v15    # "f":F
    :cond_13
    move-object/from16 v30, p1

    .line 183
    check-cast v30, Ljava/lang/Number;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v32

    move-object/from16 v30, p2

    check-cast v30, Ljava/lang/Number;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v30

    div-double v8, v32, v30

    .line 185
    .local v8, "d":D
    const/16 v30, 0x3

    move/from16 v0, v30

    invoke-static {v8, v9, v0}, Lgnu/math/RealNum;->toExactInt(DI)Lgnu/math/IntNum;

    move-result-object v30

    goto/16 :goto_0

    .line 188
    .end local v8    # "d":D
    :sswitch_2
    if-ltz v5, :cond_8

    if-ltz v6, :cond_8

    .line 190
    const/16 v30, 0x4

    move/from16 v0, v30

    if-gt v4, v0, :cond_14

    .line 192
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v18

    .line 193
    .restart local v18    # "i1":Lgnu/math/IntNum;
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v19

    .line 194
    .restart local v19    # "i2":Lgnu/math/IntNum;
    invoke-static/range {v18 .. v19}, Lgnu/math/IntNum;->remainder(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v30

    goto/16 :goto_0

    .line 196
    .end local v18    # "i1":Lgnu/math/IntNum;
    .end local v19    # "i2":Lgnu/math/IntNum;
    :cond_14
    const/16 v30, 0x6

    move/from16 v0, v30

    if-gt v4, v0, :cond_15

    .line 198
    sget-object v30, Lgnu/xquery/util/ArithOp;->sub:Lgnu/xquery/util/ArithOp;

    sget-object v31, Lgnu/xquery/util/ArithOp;->mul:Lgnu/xquery/util/ArithOp;

    sget-object v32, Lgnu/xquery/util/ArithOp;->idiv:Lgnu/xquery/util/ArithOp;

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lgnu/xquery/util/ArithOp;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    goto/16 :goto_0

    .line 200
    :cond_15
    const/16 v30, 0x7

    move/from16 v0, v30

    if-gt v4, v0, :cond_16

    .line 202
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v16

    .line 203
    .local v16, "f1":F
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asFloat(Ljava/lang/Object;)F

    move-result v17

    .line 204
    .local v17, "f2":F
    rem-float v30, v16, v17

    invoke-static/range {v30 .. v30}, Lgnu/kawa/xml/XDataType;->makeFloat(F)Ljava/lang/Float;

    move-result-object v30

    goto/16 :goto_0

    .line 206
    .end local v16    # "f1":F
    .end local v17    # "f2":F
    :cond_16
    const/16 v30, 0x9

    move/from16 v0, v30

    if-gt v4, v0, :cond_8

    .line 208
    invoke-static/range {p1 .. p1}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v10

    .line 209
    .local v10, "d1":D
    invoke-static/range {p2 .. p2}, Lgnu/kawa/functions/Arithmetic;->asDouble(Ljava/lang/Object;)D

    move-result-wide v12

    .line 210
    .local v12, "d2":D
    rem-double v8, v10, v12

    .line 211
    .restart local v8    # "d":D
    const/16 v30, 0x9

    move/from16 v0, v30

    if-ne v4, v0, :cond_17

    .line 212
    invoke-static {v8, v9}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v30

    goto/16 :goto_0

    .line 214
    :cond_17
    invoke-static {v8, v9}, Lgnu/kawa/xml/XDataType;->makeDouble(D)Ljava/lang/Double;

    move-result-object v30

    goto/16 :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6d -> :sswitch_2
    .end sparse-switch
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .prologue
    .line 223
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 224
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .param p1, "args"    # [Lgnu/expr/Expression;

    .prologue
    .line 228
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method
