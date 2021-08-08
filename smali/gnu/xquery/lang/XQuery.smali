.class public Lgnu/xquery/lang/XQuery;
.super Lgnu/expr/Language;
.source "XQuery.java"


# static fields
.field public static final DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

.field public static final DEFAULT_FUNCTION_PREFIX:Ljava/lang/String; = "(functions)"

.field public static final KAWA_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://kawa.gnu.org/"

.field public static final LOCAL_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/xquery-local-functions"

.field public static final PARSE_WITH_FOCUS:I = 0x10000

.field public static final QEXO_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://qexo.gnu.org/"

.field public static final SCHEMA_INSTANCE_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema-instance"

.field public static final SCHEMA_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final VARIADIC_FUNCTION_NAMESPACE:I = -0x2

.field public static final XHTML_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"

.field public static final XQUERY_FUNCTION_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions"

.field static charIsInt:Z

.field public static final defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

.field static envCounter:I

.field public static extensionsEnvEnv:Lgnu/mapping/Environment;

.field public static falseExp:Lgnu/expr/QuoteExp;

.field public static final falseFunction:Lgnu/kawa/functions/ConstantFunction0;

.field public static final instance:Lgnu/xquery/lang/XQuery;

.field public static final kawaFunctionNamespace:Lgnu/mapping/Namespace;

.field public static final qexoFunctionNamespace:Lgnu/mapping/Namespace;

.field public static trueExp:Lgnu/expr/QuoteExp;

.field public static final trueFunction:Lgnu/kawa/functions/ConstantFunction0;

.field static typeMap:[Ljava/lang/Object;

.field public static final xqEnvironment:Lgnu/mapping/Environment;

.field public static final xqueryFunctionNamespace:Lgnu/mapping/Namespace;


# instance fields
.field defaultNamespace:Lgnu/mapping/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const-string v0, "http://www.w3.org/2005/xpath-functions"

    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    .line 43
    const-string v0, "http://kawa.gnu.org/"

    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQuery;->kawaFunctionNamespace:Lgnu/mapping/Namespace;

    .line 45
    const-string v0, "http://qexo.gnu.org/"

    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQuery;->qexoFunctionNamespace:Lgnu/mapping/Namespace;

    .line 47
    new-array v0, v7, [Lgnu/mapping/Namespace;

    sget-object v1, Lgnu/xquery/lang/XQuery;->qexoFunctionNamespace:Lgnu/mapping/Namespace;

    aput-object v1, v0, v3

    sget-object v1, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    aput-object v1, v0, v4

    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    aput-object v1, v0, v5

    sget-object v1, Lgnu/xquery/lang/XQuery;->kawaFunctionNamespace:Lgnu/mapping/Namespace;

    aput-object v1, v0, v6

    sput-object v0, Lgnu/xquery/lang/XQuery;->defaultFunctionNamespacePath:[Lgnu/mapping/Namespace;

    .line 52
    sput-boolean v3, Lgnu/xquery/lang/XQuery;->charIsInt:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lgnu/xquery/lang/XQuery;->DEFAULT_ELEMENT_PREFIX:Ljava/lang/String;

    .line 279
    sput v3, Lgnu/xquery/lang/XQuery;->envCounter:I

    .line 282
    const-string v0, "http://kawa.gnu.org/"

    invoke-static {v0}, Lgnu/mapping/Environment;->getInstance(Ljava/lang/String;)Lgnu/mapping/Environment;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQuery;->extensionsEnvEnv:Lgnu/mapping/Environment;

    .line 553
    const-string v0, "http://www.w3.org/2005/xpath-functions"

    invoke-static {v0}, Lgnu/mapping/Environment;->make(Ljava/lang/String;)Lgnu/mapping/SimpleEnvironment;

    move-result-object v0

    sput-object v0, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    .line 558
    new-instance v0, Lgnu/xquery/lang/XQuery;

    invoke-direct {v0}, Lgnu/xquery/lang/XQuery;-><init>()V

    sput-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    .line 559
    sget-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-direct {v0}, Lgnu/xquery/lang/XQuery;->initXQuery()V

    .line 763
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-direct {v0, v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    .line 765
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    invoke-direct {v0, v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    .line 768
    new-instance v0, Lgnu/kawa/functions/ConstantFunction0;

    const-string v1, "false"

    sget-object v2, Lgnu/xquery/lang/XQuery;->falseExp:Lgnu/expr/QuoteExp;

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/ConstantFunction0;-><init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->falseFunction:Lgnu/kawa/functions/ConstantFunction0;

    .line 770
    new-instance v0, Lgnu/kawa/functions/ConstantFunction0;

    const-string v1, "true"

    sget-object v2, Lgnu/xquery/lang/XQuery;->trueExp:Lgnu/expr/QuoteExp;

    invoke-direct {v0, v1, v2}, Lgnu/kawa/functions/ConstantFunction0;-><init>(Ljava/lang/String;Lgnu/expr/QuoteExp;)V

    sput-object v0, Lgnu/xquery/lang/XQuery;->trueFunction:Lgnu/kawa/functions/ConstantFunction0;

    .line 778
    const/16 v0, 0x60

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "string"

    aput-object v1, v0, v3

    sget-object v1, Lgnu/kawa/xml/XDataType;->stringType:Lgnu/kawa/xml/XDataType;

    aput-object v1, v0, v4

    const-string v1, "untypedAtomic"

    aput-object v1, v0, v5

    sget-object v1, Lgnu/kawa/xml/XDataType;->untypedAtomicType:Lgnu/kawa/xml/XDataType;

    aput-object v1, v0, v6

    const-string v1, "boolean"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "integer"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "long"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->longType:Lgnu/kawa/xml/XIntegerType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "int"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->intType:Lgnu/kawa/xml/XIntegerType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "short"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->shortType:Lgnu/kawa/xml/XIntegerType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "byte"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->byteType:Lgnu/kawa/xml/XIntegerType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "unsignedLong"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->unsignedLongType:Lgnu/kawa/xml/XIntegerType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "unsignedInt"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->unsignedIntType:Lgnu/kawa/xml/XIntegerType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "unsignedShort"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->unsignedShortType:Lgnu/kawa/xml/XIntegerType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "unsignedByte"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->unsignedByteType:Lgnu/kawa/xml/XIntegerType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "positiveInteger"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->positiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "nonPositiveInteger"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->nonPositiveIntegerType:Lgnu/kawa/xml/XIntegerType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "negativeInteger"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->negativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "nonNegativeInteger"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lgnu/kawa/xml/XIntegerType;->nonNegativeIntegerType:Lgnu/kawa/xml/XIntegerType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lgnu/kawa/xml/XTimeType;->dateType:Lgnu/kawa/xml/XTimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "dateTime"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lgnu/kawa/xml/XTimeType;->timeType:Lgnu/kawa/xml/XTimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lgnu/kawa/xml/XTimeType;->durationType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "yearMonthDuration"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lgnu/kawa/xml/XTimeType;->yearMonthDurationType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "dayTimeDuration"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lgnu/kawa/xml/XTimeType;->dayTimeDurationType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "gYearMonth"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lgnu/kawa/xml/XTimeType;->gYearMonthType:Lgnu/kawa/xml/XTimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "gYear"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    sget-object v2, Lgnu/kawa/xml/XTimeType;->gYearType:Lgnu/kawa/xml/XTimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "gMonthDay"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    sget-object v2, Lgnu/kawa/xml/XTimeType;->gMonthDayType:Lgnu/kawa/xml/XTimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "gDay"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    sget-object v2, Lgnu/kawa/xml/XTimeType;->gDayType:Lgnu/kawa/xml/XTimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "gMonth"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    sget-object v2, Lgnu/kawa/xml/XTimeType;->gMonthType:Lgnu/kawa/xml/XTimeType;

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "decimal"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    sget-object v2, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "float"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    sget-object v2, Lgnu/kawa/xml/XDataType;->floatType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "double"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    sget-object v2, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "anyURI"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    sget-object v2, Lgnu/kawa/xml/XDataType;->anyURIType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "hexBinary"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    sget-object v2, Lgnu/kawa/xml/XDataType;->hexBinaryType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "base64Binary"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    sget-object v2, Lgnu/kawa/xml/XDataType;->base64BinaryType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "NOTATION"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    sget-object v2, Lgnu/kawa/xml/XDataType;->NotationType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "QName"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "gnu.mapping.Symbol"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "normalizedString"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    sget-object v2, Lgnu/kawa/xml/XStringType;->normalizedStringType:Lgnu/kawa/xml/XStringType;

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "token"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    sget-object v2, Lgnu/kawa/xml/XStringType;->tokenType:Lgnu/kawa/xml/XStringType;

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "language"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    sget-object v2, Lgnu/kawa/xml/XStringType;->languageType:Lgnu/kawa/xml/XStringType;

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "NMTOKEN"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    sget-object v2, Lgnu/kawa/xml/XStringType;->NMTOKENType:Lgnu/kawa/xml/XStringType;

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Name"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    sget-object v2, Lgnu/kawa/xml/XStringType;->NameType:Lgnu/kawa/xml/XStringType;

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "NCName"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    sget-object v2, Lgnu/kawa/xml/XStringType;->NCNameType:Lgnu/kawa/xml/XStringType;

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "ID"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    sget-object v2, Lgnu/kawa/xml/XStringType;->IDType:Lgnu/kawa/xml/XStringType;

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "IDREF"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    sget-object v2, Lgnu/kawa/xml/XStringType;->IDREFType:Lgnu/kawa/xml/XStringType;

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "ENTITY"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    sget-object v2, Lgnu/kawa/xml/XStringType;->ENTITYType:Lgnu/kawa/xml/XStringType;

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "anyAtomicType"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    sget-object v2, Lgnu/kawa/xml/XDataType;->anyAtomicType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "anySimpleType"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    sget-object v2, Lgnu/kawa/xml/XDataType;->anySimpleType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "untyped"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    sget-object v2, Lgnu/kawa/xml/XDataType;->untypedType:Lgnu/kawa/xml/XDataType;

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "anyType"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    aput-object v2, v0, v1

    sput-object v0, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 562
    invoke-direct {p0}, Lgnu/expr/Language;-><init>()V

    .line 563
    sget-object v0, Lgnu/xquery/lang/XQuery;->xqEnvironment:Lgnu/mapping/Environment;

    iput-object v0, p0, Lgnu/xquery/lang/XQuery;->environ:Lgnu/mapping/Environment;

    .line 564
    sget-object v0, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    .line 565
    return-void
.end method

.method public static asChar(Ljava/lang/Object;)C
    .locals 3
    .param p0, "x"    # Ljava/lang/Object;

    .prologue
    .line 75
    instance-of v1, p0, Lgnu/text/Char;

    if-eqz v1, :cond_0

    .line 76
    check-cast p0, Lgnu/text/Char;

    .end local p0    # "x":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/text/Char;->charValue()C

    move-result v1

    .line 84
    .local v0, "i":I
    :goto_0
    return v1

    .line 78
    .end local v0    # "i":I
    .restart local p0    # "x":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Lgnu/math/Numeric;

    if-eqz v1, :cond_2

    .line 79
    check-cast p0, Lgnu/math/Numeric;

    .end local p0    # "x":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/math/Numeric;->intValue()I

    move-result v0

    .line 82
    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_1

    const v1, 0xffff

    if-le v0, v1, :cond_3

    .line 83
    :cond_1
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "not a character value"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    .end local v0    # "i":I
    .restart local p0    # "x":Ljava/lang/Object;
    :cond_2
    const/4 v0, -0x1

    .restart local v0    # "i":I
    goto :goto_1

    .line 84
    .end local p0    # "x":Ljava/lang/Object;
    :cond_3
    int-to-char v1, v0

    goto :goto_0
.end method

.method public static asNumber(Ljava/lang/Object;)Lgnu/math/Numeric;
    .locals 1
    .param p0, "arg"    # Ljava/lang/Object;

    .prologue
    .line 68
    instance-of v0, p0, Lgnu/text/Char;

    if-eqz v0, :cond_0

    .line 69
    check-cast p0, Lgnu/text/Char;

    .end local p0    # "arg":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    .line 70
    :goto_0
    return-object p0

    .restart local p0    # "arg":Ljava/lang/Object;
    :cond_0
    check-cast p0, Lgnu/math/Numeric;

    goto :goto_0
.end method

.method public static getExternal(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p0, "name"    # Lgnu/mapping/Symbol;
    .param p1, "type"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 997
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    .line 998
    .local v3, "env":Lgnu/mapping/Environment;
    invoke-virtual {v3, p0, v8, v8}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 999
    .local v5, "value":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 1000
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    invoke-virtual {v3, v6, v8, v8}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1003
    :cond_0
    if-nez v5, :cond_1

    .line 1004
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unbound external "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1005
    :cond_1
    if-nez p1, :cond_2

    move-object v6, v5

    .line 1029
    .end local p1    # "type":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 1007
    .restart local p1    # "type":Ljava/lang/Object;
    :cond_2
    instance-of v6, p1, Lgnu/kawa/xml/XDataType;

    if-eqz v6, :cond_3

    .line 1008
    check-cast p1, Lgnu/kawa/xml/XDataType;

    .end local p1    # "type":Ljava/lang/Object;
    invoke-virtual {p1, v5}, Lgnu/kawa/xml/XDataType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 1009
    .restart local p1    # "type":Ljava/lang/Object;
    :cond_3
    instance-of v6, p1, Lgnu/bytecode/ClassType;

    if-eqz v6, :cond_5

    move-object v6, p1

    .line 1011
    check-cast v6, Lgnu/bytecode/ClassType;

    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1013
    .local v2, "cname":Ljava/lang/String;
    const-string v6, "gnu.math.IntNum"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1014
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;)Lgnu/math/IntNum;

    move-result-object v6

    goto :goto_0

    .line 1015
    :cond_4
    const-string v6, "gnu.math.RealNum"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1016
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v6

    goto :goto_0

    .line 1020
    .end local v2    # "cname":Ljava/lang/String;
    :cond_5
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Type;

    move-object v6, v0

    invoke-virtual {v6, v5}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v6, v5

    .line 1029
    goto :goto_0

    .line 1022
    :catch_0
    move-exception v4

    .line 1024
    .local v4, "ex":Ljava/lang/ClassCastException;
    new-instance v6, Lgnu/mapping/WrongType;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v5, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v6
.end method

.method public static getInstance()Lgnu/xquery/lang/XQuery;
    .locals 1

    .prologue
    .line 753
    sget-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    return-object v0
.end method

.method public static getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 831
    sget-object v2, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    array-length v0, v2

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_2

    .line 833
    sget-object v2, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 835
    sget-object v2, Lgnu/xquery/lang/XQuery;->typeMap:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v2, v3

    .line 836
    .local v1, "t":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 837
    check-cast v1, Ljava/lang/String;

    .end local v1    # "t":Ljava/lang/Object;
    invoke-static {v1}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 842
    :goto_0
    return-object v1

    .line 839
    .restart local v1    # "t":Ljava/lang/Object;
    :cond_1
    check-cast v1, Lgnu/bytecode/Type;

    goto :goto_0

    .line 842
    .end local v1    # "t":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initXQuery()V
    .locals 3

    .prologue
    .line 569
    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/expr/ModuleBody;->setMainPrintValues(Z)V

    .line 571
    const-string v0, "unescaped-data"

    const-string v1, "gnu.kawa.xml.MakeUnescapedData"

    const-string v2, "unescapedData"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v0, "item-at"

    const-string v1, "gnu.xquery.util.ItemAt"

    const-string v2, "itemAt"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v0, "count"

    const-string v1, "gnu.kawa.functions.CountValues"

    const-string v2, "countValues"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v0, "sum"

    const-string v1, "gnu.xquery.util.Reduce"

    const-string v2, "sum"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v0, "avg"

    const-string v1, "gnu.xquery.util.Average"

    const-string v2, "avg"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v0, "sublist"

    const-string v1, "gnu.xquery.util.SubList"

    const-string v2, "subList"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v0, "subsequence"

    const-string v1, "gnu.xquery.util.SubList"

    const-string v2, "subList"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const-string v0, "empty"

    const-string v1, "gnu.xquery.util.SequenceUtils"

    const-string v2, "isEmptySequence"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v0, "exists"

    const-string v1, "gnu.xquery.util.SequenceUtils"

    const-string v2, "exists"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v0, "insert-before"

    const-string v1, "gnu.xquery.util.SequenceUtils"

    const-string v2, "insertBefore$X"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v0, "remove"

    const-string v1, "gnu.xquery.util.SequenceUtils"

    const-string v2, "remove$X"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v0, "reverse"

    const-string v1, "gnu.xquery.util.SequenceUtils"

    const-string v2, "reverse$X"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v0, "false"

    const-string v1, "gnu.xquery.lang.XQuery"

    const-string v2, "falseFunction"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v0, "true"

    const-string v1, "gnu.xquery.lang.XQuery"

    const-string v2, "trueFunction"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v0, "boolean"

    const-string v1, "gnu.xquery.util.BooleanValue"

    const-string v2, "booleanValue"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v0, "trace"

    const-string v1, "gnu.xquery.util.Debug"

    const-string v2, "trace"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v0, "error"

    const-string v1, "gnu.xquery.util.XQException"

    const-string v2, "error"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v0, "write-to"

    const-string v1, "gnu.kawa.xml.WriteTo"

    const-string v2, "writeTo"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v0, "write-to-if-changed"

    const-string v1, "gnu.kawa.xml.WriteTo"

    const-string v2, "writeToIfChanged"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v0, "iterator-items"

    const-string v1, "gnu.kawa.xml.IteratorItems"

    const-string v2, "iteratorItems"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const-string v0, "list-items"

    const-string v1, "gnu.kawa.xml.ListItems"

    const-string v2, "listItems"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v0, "node-name"

    const-string v1, "gnu.xquery.util.NodeUtils"

    const-string v2, "nodeName"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v0, "nilled"

    const-string v1, "gnu.xquery.util.NodeUtils"

    const-string v2, "nilled"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v0, "data"

    const-string v1, "gnu.xquery.util.NodeUtils"

    const-string v2, "data$X"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v0, "lower-case"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "lowerCase"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v0, "upper-case"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "upperCase"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v0, "substring"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "substring"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v0, "string-length"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "stringLength"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v0, "substring-before"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "substringBefore"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v0, "substring-after"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "substringAfter"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v0, "translate"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "translate"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v0, "encode-for-uri"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "encodeForUri"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v0, "iri-to-uri"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "iriToUri"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "escape-html-uri"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "escapeHtmlUri"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v0, "contains"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "contains"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v0, "starts-with"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "startsWith"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v0, "ends-with"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "endsWith"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v0, "codepoint-equal"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "codepointEqual"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v0, "normalize-unicode"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "normalizeUnicode"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v0, "string-join"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "stringJoin"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v0, "concat"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "concat$V"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v0, "matches"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "matches"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string v0, "replace"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "replace"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string v0, "tokenize"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "tokenize$X"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v0, "string-to-codepoints"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "stringToCodepoints$X"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v0, "codepoints-to-string"

    const-string v1, "gnu.xquery.util.StringUtils"

    const-string v2, "codepointsToString"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v0, "abs"

    const-string v1, "gnu.xquery.util.NumberValue"

    const-string v2, "abs"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v0, "floor"

    const-string v1, "gnu.xquery.util.NumberValue"

    const-string v2, "floor"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v0, "ceiling"

    const-string v1, "gnu.xquery.util.NumberValue"

    const-string v2, "ceiling"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v0, "round"

    const-string v1, "gnu.xquery.util.NumberValue"

    const-string v2, "round"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v0, "round-half-to-even"

    const-string v1, "gnu.xquery.util.NumberValue"

    const-string v2, "roundHalfToEven"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v0, "QName"

    const-string v1, "gnu.xquery.util.QNameUtils"

    const-string v2, "makeQName"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v0, "resolve-QName"

    const-string v1, "gnu.xquery.util.QNameUtils"

    const-string v2, "resolveQNameUsingElement"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v0, "prefix-from-QName"

    const-string v1, "gnu.xquery.util.QNameUtils"

    const-string v2, "prefixFromQName"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v0, "local-name-from-QName"

    const-string v1, "gnu.xquery.util.QNameUtils"

    const-string v2, "localNameFromQName"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v0, "namespace-uri-from-QName"

    const-string v1, "gnu.xquery.util.QNameUtils"

    const-string v2, "namespaceURIFromQName"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v0, "namespace-uri-for-prefix"

    const-string v1, "gnu.xquery.util.QNameUtils"

    const-string v2, "namespaceURIForPrefix"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v0, "in-scope-prefixes"

    const-string v1, "gnu.xquery.util.NodeUtils"

    const-string v2, "inScopePrefixes$X"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v0, "document-uri"

    const-string v1, "gnu.xquery.util.NodeUtils"

    const-string v2, "documentUri"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v0, "years-from-duration"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "yearsFromDuration"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v0, "months-from-duration"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "monthsFromDuration"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v0, "days-from-duration"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "daysFromDuration"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v0, "hours-from-duration"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "hoursFromDuration"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v0, "minutes-from-duration"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "minutesFromDuration"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v0, "seconds-from-duration"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "secondsFromDuration"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v0, "year-from-dateTime"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "yearFromDateTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v0, "month-from-dateTime"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "monthFromDateTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v0, "day-from-dateTime"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "dayFromDateTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v0, "hours-from-dateTime"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "hoursFromDateTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v0, "minutes-from-dateTime"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "minutesFromDateTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v0, "seconds-from-dateTime"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "secondsFromDateTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v0, "timezone-from-dateTime"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "timezoneFromDateTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v0, "year-from-date"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "yearFromDate"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v0, "month-from-date"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "monthFromDate"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v0, "day-from-date"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "dayFromDate"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v0, "timezone-from-date"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "timezoneFromDate"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v0, "hours-from-time"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "hoursFromTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v0, "minutes-from-time"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "minutesFromTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v0, "seconds-from-time"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "secondsFromTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v0, "timezone-from-time"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "timezoneFromTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v0, "adjust-dateTime-to-timezone"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "adjustDateTimeToTimezone"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v0, "adjust-date-to-timezone"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "adjustDateToTimezone"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v0, "adjust-time-to-timezone"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "adjustTimeToTimezone"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v0, "dateTime"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "dateTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v0, "current-dateTime"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "currentDateTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v0, "current-date"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "currentDate"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v0, "current-time"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "currentTime"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v0, "implicit-timezone"

    const-string v1, "gnu.xquery.util.TimeUtils"

    const-string v2, "implicitTimezone"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v0, "zero-or-one"

    const-string v1, "gnu.xquery.util.SequenceUtils"

    const-string v2, "zeroOrOne"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v0, "one-or-more"

    const-string v1, "gnu.xquery.util.SequenceUtils"

    const-string v2, "oneOrMore"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v0, "exactly-one"

    const-string v1, "gnu.xquery.util.SequenceUtils"

    const-string v2, "exactlyOne"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v0, "distinct-nodes"

    const-string v1, "gnu.kawa.xml.SortNodes"

    const-string v2, "sortNodes"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string v0, "children"

    const-string v1, "gnu.kawa.xml.Children"

    const-string v2, "children"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v0, "not"

    const-string v1, "gnu.xquery.util.BooleanValue"

    const-string v2, "not"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/xquery/lang/XQuery;->define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    sget-object v0, Lgnu/xquery/lang/XQuery;->qexoFunctionNamespace:Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    .line 729
    const-string v0, "response-header"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v0, "response-content-type"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v0, "response-status"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v0, "error-response"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v0, "current-servlet"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v0, "current-servlet-context"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v0, "current-servlet-config"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v0, "servlet-context-realpath"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v0, "get-response"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v0, "get-request"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v0, "request-method"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v0, "request-uri"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v0, "request-url"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v0, "request-path-info"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v0, "request-path-translated"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v0, "request-servlet-path"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v0, "request-query-string"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v0, "request-parameter"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v0, "request-parameters"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/lang/XQuery;->defProcStFld(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    sget-object v0, Lgnu/xquery/lang/XQuery;->xqueryFunctionNamespace:Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    .line 749
    return-void
.end method

.method public static makeClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2f

    .line 985
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 986
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 987
    .local v1, "sl":I
    if-ltz v1, :cond_0

    .line 988
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 989
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 990
    .local v0, "dot":I
    if-ltz v0, :cond_1

    .line 991
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 992
    :cond_1
    invoke-static {p0}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static mangle(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 978
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 979
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x55

    invoke-static {p0, v1, v2, v0, v3}, Lgnu/xquery/lang/XQuery;->mangle(Ljava/lang/String;IILjava/lang/StringBuffer;C)V

    .line 980
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static mangle(Ljava/lang/String;IILjava/lang/StringBuffer;C)V
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "sbuf"    # Ljava/lang/StringBuffer;
    .param p4, "mode"    # C

    .prologue
    const/16 v10, 0x55

    const/16 v9, 0x44

    const/16 v8, 0x5f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 928
    const/16 v3, 0x50

    .line 929
    .local v3, "prev":C
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 930
    .local v2, "outStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_f

    .line 933
    add-int v7, p1, v1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 934
    .local v0, "ch":C
    add-int/lit8 v1, v1, 0x1

    .line 935
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 937
    if-ne v3, v10, :cond_0

    if-ge v1, p2, :cond_4

    add-int v7, p1, v1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_0
    move v4, v6

    .line 940
    .local v4, "wordStart":Z
    :goto_1
    const/16 v3, 0x55

    .line 967
    :goto_2
    if-nez v4, :cond_1

    if-ne p4, v8, :cond_3

    .line 969
    :cond_1
    if-eqz v4, :cond_2

    if-ne p4, v8, :cond_2

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-le v7, v2, :cond_2

    .line 970
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 971
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 973
    :cond_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .end local v4    # "wordStart":Z
    :cond_4
    move v4, v5

    .line 937
    goto :goto_1

    .line 942
    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 944
    const/16 v7, 0x4c

    if-ne v3, v7, :cond_6

    if-eq v3, v10, :cond_7

    :cond_6
    move v4, v6

    .line 945
    .restart local v4    # "wordStart":Z
    :goto_3
    const/16 v3, 0x4c

    goto :goto_2

    .end local v4    # "wordStart":Z
    :cond_7
    move v4, v5

    .line 944
    goto :goto_3

    .line 947
    :cond_8
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 949
    const/16 v7, 0x4f

    if-eq v3, v7, :cond_9

    move v4, v6

    .line 950
    .restart local v4    # "wordStart":Z
    :goto_4
    const/16 v3, 0x4f

    goto :goto_2

    .end local v4    # "wordStart":Z
    :cond_9
    move v4, v5

    .line 949
    goto :goto_4

    .line 952
    :cond_a
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 954
    if-eq v3, v9, :cond_b

    move v4, v6

    .line 955
    .restart local v4    # "wordStart":Z
    :goto_5
    const/16 v3, 0x44

    goto :goto_2

    .end local v4    # "wordStart":Z
    :cond_b
    move v4, v5

    .line 954
    goto :goto_5

    .line 957
    :cond_c
    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 959
    if-eq v3, v9, :cond_d

    const/16 v7, 0x4d

    if-eq v3, v7, :cond_d

    move v4, v6

    .line 960
    .restart local v4    # "wordStart":Z
    :goto_6
    const/16 v3, 0x4d

    goto :goto_2

    .end local v4    # "wordStart":Z
    :cond_d
    move v4, v5

    .line 959
    goto :goto_6

    .line 964
    :cond_e
    const/16 v3, 0x50

    .line 965
    goto/16 :goto_0

    .line 975
    .end local v0    # "ch":C
    :cond_f
    return-void
.end method

.method public static namespaceForFunctions(I)I
    .locals 1
    .param p0, "argCount"    # I

    .prologue
    .line 202
    shl-int/lit8 v0, p0, 0x2

    or-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static registerEnvironment()V
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x1

    sput-boolean v0, Lgnu/expr/ApplicationMainSupport;->processCommandLinePropertyAssignments:Z

    .line 760
    sget-object v0, Lgnu/xquery/lang/XQuery;->instance:Lgnu/xquery/lang/XQuery;

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 761
    return-void
.end method


# virtual methods
.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "values"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 373
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 374
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v2

    .line 377
    .local v2, "oldIndex":I
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 378
    invoke-virtual {v0, v2}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 380
    :catch_0
    move-exception v1

    .line 382
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v2}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 383
    throw v1
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 5
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "position"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 324
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 325
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v2

    .line 328
    .local v2, "oldIndex":I
    :try_start_0
    invoke-static {p3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    invoke-static {p4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    invoke-virtual {p1, p2, v3, v4, v0}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 329
    invoke-virtual {v0, v2}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 331
    :catch_0
    move-exception v1

    .line 333
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v2}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 334
    throw v1
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;IILgnu/lists/Consumer;)V
    .locals 4
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "position"    # I
    .param p4, "size"    # I
    .param p5, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 299
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-static {p3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-static {p4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v3

    invoke-virtual {p1, p2, v2, v3, v0}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 300
    iget-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 303
    .local v1, "save":Lgnu/lists/Consumer;
    :try_start_0
    iput-object p5, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 304
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 310
    return-void

    .line 308
    :catchall_0
    move-exception v2

    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw v2
.end method

.method public applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 3
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "values"    # Ljava/lang/Object;
    .param p3, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 349
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 350
    .local v0, "ctx":Lgnu/mapping/CallContext;
    iget-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 353
    .local v1, "save":Lgnu/lists/Consumer;
    :try_start_0
    iput-object p3, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 354
    invoke-virtual {p0, p1, p2, v0}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 360
    return-void

    .line 358
    :catchall_0
    move-exception v2

    iput-object v1, v0, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw v2
.end method

.method public applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 8
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "values"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 400
    instance-of v6, p2, Lgnu/mapping/Values;

    if-eqz v6, :cond_2

    move-object v5, p2

    .line 402
    check-cast v5, Lgnu/mapping/Values;

    .line 403
    .local v5, "v":Lgnu/mapping/Values;
    invoke-virtual {v5}, Lgnu/mapping/Values;->size()I

    move-result v0

    .line 404
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 423
    .end local v0    # "count":I
    .end local v5    # "v":Lgnu/mapping/Values;
    :cond_0
    :goto_0
    return-void

    .line 406
    .restart local v0    # "count":I
    .restart local v5    # "v":Lgnu/mapping/Values;
    :cond_1
    const/4 v2, 0x0

    .line 407
    .local v2, "ipos":I
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    .line 408
    .local v4, "size":Lgnu/math/IntNum;
    const/4 v1, 0x1

    .line 410
    .local v1, "i":I
    :goto_1
    invoke-virtual {v5, v2}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v7

    invoke-virtual {p1, v6, v7, v4, p3}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 411
    invoke-virtual {p3}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 412
    if-eq v1, v0, :cond_0

    .line 414
    invoke-virtual {v5, v2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v2

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 419
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ipos":I
    .end local v4    # "size":Lgnu/math/IntNum;
    .end local v5    # "v":Lgnu/mapping/Values;
    :cond_2
    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object v3

    .line 420
    .local v3, "one":Lgnu/math/IntNum;
    invoke-virtual {p1, p2, v3, v3, p3}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 421
    invoke-virtual {p3}, Lgnu/mapping/CallContext;->runUntilDone()V

    goto :goto_0
.end method

.method public define(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 258
    iget-object v2, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    invoke-static {v2, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 259
    .local v1, "sym":Lgnu/mapping/Symbol;
    instance-of v2, p2, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_0

    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 260
    .local v0, "prop":Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Lgnu/xquery/lang/XQuery;->environ:Lgnu/mapping/Environment;

    invoke-virtual {v2, v1, v0, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    return-void

    .line 259
    .end local v0    # "prop":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected define_method(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cname"    # Ljava/lang/String;
    .param p3, "mname"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v3, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    invoke-static {v3, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 268
    .local v2, "sym":Lgnu/mapping/Symbol;
    invoke-static {p2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 269
    .local v0, "ctype":Lgnu/bytecode/ClassType;
    const/4 v3, 0x0

    invoke-static {v0, p3, v3, p0}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v1

    .line 270
    .local v1, "proc":Lgnu/mapping/Procedure;
    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->setSymbol(Ljava/lang/Object;)V

    .line 271
    iget-object v3, p0, Lgnu/xquery/lang/XQuery;->environ:Lgnu/mapping/Environment;

    sget-object v4, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v3, v2, v4, v1}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;
    .locals 8
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 452
    instance-of v5, p1, Lgnu/mapping/InPort;

    if-eqz v5, :cond_0

    check-cast p1, Lgnu/mapping/InPort;

    .end local p1    # "in":Ljava/io/Reader;
    move-object v4, p1

    .line 453
    .local v4, "port":Lgnu/mapping/InPort;
    :goto_0
    const v5, 0x10001

    invoke-virtual {p0, v4, p2, v5}, Lgnu/xquery/lang/XQuery;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;I)Lgnu/expr/Compilation;

    move-result-object v0

    .line 454
    .local v0, "comp":Lgnu/expr/Compilation;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v1

    .line 455
    .local v1, "ctx":Lgnu/mapping/CallContext;
    invoke-virtual {v1}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v3

    .line 458
    .local v3, "oldIndex":I
    :try_start_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v1, v0, v6, v7}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    .line 459
    invoke-virtual {v1, v3}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 452
    .end local v0    # "comp":Lgnu/expr/Compilation;
    .end local v1    # "ctx":Lgnu/mapping/CallContext;
    .end local v3    # "oldIndex":I
    .end local v4    # "port":Lgnu/mapping/InPort;
    .restart local p1    # "in":Ljava/io/Reader;
    :cond_0
    new-instance v4, Lgnu/mapping/InPort;

    invoke-direct {v4, p1}, Lgnu/mapping/InPort;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    .line 461
    .end local p1    # "in":Ljava/io/Reader;
    .restart local v0    # "comp":Lgnu/expr/Compilation;
    .restart local v1    # "ctx":Lgnu/mapping/CallContext;
    .restart local v3    # "oldIndex":I
    .restart local v4    # "port":Lgnu/mapping/InPort;
    :catch_0
    move-exception v2

    .line 463
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1, v3}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 464
    throw v2
.end method

.method public evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;
    .locals 5
    .param p1, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 435
    .local v0, "messages":Lgnu/text/SourceMessages;
    new-instance v2, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v2, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v0}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object v1

    .line 436
    .local v1, "proc":Lgnu/mapping/Procedure;
    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid syntax in eval form:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 439
    :cond_0
    return-object v1
.end method

.method public evalWithFocus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "expr"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalWithFocus(Ljava/lang/String;Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 1
    .param p1, "expr"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "position"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 505
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public evalWithFocus(Ljava/io/Reader;Lgnu/text/SourceMessages;Ljava/lang/Object;IILgnu/lists/Consumer;)V
    .locals 6
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "item"    # Ljava/lang/Object;
    .param p4, "position"    # I
    .param p5, "size"    # I
    .param p6, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;IILgnu/lists/Consumer;)V

    .line 522
    return-void
.end method

.method public evalWithFocus(Ljava/io/Reader;Lgnu/text/SourceMessages;Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "values"    # Ljava/lang/Object;
    .param p4, "out"    # Lgnu/lists/Consumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0, p1, p2}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/io/Reader;Lgnu/text/SourceMessages;)Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lgnu/xquery/lang/XQuery;->applyWithFocus(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 480
    return-void
.end method

.method public eval_with_focus$X(Ljava/lang/String;Ljava/lang/Object;IILgnu/mapping/CallContext;)V
    .locals 3
    .param p1, "expr"    # Ljava/lang/String;
    .param p2, "item"    # Ljava/lang/Object;
    .param p3, "position"    # I
    .param p4, "size"    # I
    .param p5, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v0

    .line 550
    .local v0, "proc":Lgnu/mapping/Procedure;
    invoke-static {p3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {p4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2, p5}, Lgnu/mapping/Procedure;->check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 551
    return-void
.end method

.method public eval_with_focus$X(Ljava/lang/String;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 1
    .param p1, "expr"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->evalToFocusProc(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lgnu/xquery/lang/XQuery;->applyWithFocus$X(Lgnu/mapping/Procedure;Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 536
    return-void
.end method

.method public formatType(Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lgnu/bytecode/Type;

    .prologue
    .line 856
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    .line 857
    .local v0, "tname":Ljava/lang/String;
    const-string v1, "gnu.math.IntNum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    const-string v1, "xs:integer"

    .line 862
    :goto_0
    return-object v1

    .line 859
    :cond_0
    const-string v1, "java.lang.String"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "java.lang.CharSequence"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 861
    :cond_1
    const-string v1, "xs:string"

    goto :goto_0

    .line 862
    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCompilation(Lgnu/text/Lexer;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)Lgnu/expr/Compilation;
    .locals 1
    .param p1, "lexer"    # Lgnu/text/Lexer;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "lexical"    # Lgnu/expr/NameLookup;

    .prologue
    .line 99
    new-instance v0, Lgnu/expr/Compilation;

    invoke-direct {v0, p0, p2, p3}, Lgnu/expr/Compilation;-><init>(Lgnu/expr/Language;Lgnu/text/SourceMessages;Lgnu/expr/NameLookup;)V

    return-object v0
.end method

.method public getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
    .locals 1
    .param p1, "inp"    # Lgnu/mapping/InPort;
    .param p2, "messages"    # Lgnu/text/SourceMessages;

    .prologue
    .line 94
    new-instance v0, Lgnu/xquery/lang/XQParser;

    invoke-direct {v0, p1, p2, p0}, Lgnu/xquery/lang/XQParser;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string v0, "XQuery"

    return-object v0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 9
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .prologue
    const/4 v6, -0x2

    .line 210
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 212
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getCode()I

    move-result v7

    if-gez v7, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v6

    .line 214
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v5

    .line 215
    .local v5, "value":Lgnu/expr/Expression;
    instance-of v7, v5, Lgnu/expr/LambdaExp;

    if-eqz v7, :cond_2

    move-object v0, v5

    .line 217
    check-cast v0, Lgnu/expr/LambdaExp;

    .line 218
    .local v0, "lexp":Lgnu/expr/LambdaExp;
    iget v7, v0, Lgnu/expr/LambdaExp;->min_args:I

    iget v8, v0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v7, v8, :cond_0

    .line 219
    iget v6, v0, Lgnu/expr/LambdaExp;->min_args:I

    invoke-static {v6}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result v6

    goto :goto_0

    .line 221
    .end local v0    # "lexp":Lgnu/expr/LambdaExp;
    :cond_2
    instance-of v7, v5, Lgnu/expr/QuoteExp;

    if-eqz v7, :cond_3

    .line 223
    check-cast v5, Lgnu/expr/QuoteExp;

    .end local v5    # "value":Lgnu/expr/Expression;
    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 224
    .local v4, "val":Ljava/lang/Object;
    instance-of v7, v4, Lgnu/mapping/Procedure;

    if-eqz v7, :cond_0

    move-object v3, v4

    .line 226
    check-cast v3, Lgnu/mapping/Procedure;

    .line 227
    .local v3, "proc":Lgnu/mapping/Procedure;
    invoke-virtual {v3}, Lgnu/mapping/Procedure;->minArgs()I

    move-result v2

    .line 228
    .local v2, "min":I
    invoke-virtual {v3}, Lgnu/mapping/Procedure;->maxArgs()I

    move-result v1

    .line 229
    .local v1, "max":I
    if-ne v2, v1, :cond_0

    .line 230
    invoke-static {v2}, Lgnu/xquery/lang/XQuery;->namespaceForFunctions(I)I

    move-result v6

    goto :goto_0

    .line 233
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "proc":Lgnu/mapping/Procedure;
    .end local v4    # "val":Ljava/lang/Object;
    .restart local v5    # "value":Lgnu/expr/Expression;
    :cond_3
    instance-of v7, v5, Lgnu/expr/ReferenceExp;

    if-eqz v7, :cond_0

    .line 234
    check-cast v5, Lgnu/expr/ReferenceExp;

    .end local v5    # "value":Lgnu/expr/Expression;
    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v6

    goto :goto_0

    .line 238
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 775
    new-instance v0, Lgnu/xml/XMLPrinter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;Z)V

    return-object v0
.end method

.method public getPrompter()Lgnu/mapping/Procedure;
    .locals 1

    .prologue
    .line 899
    new-instance v0, Lgnu/xquery/lang/Prompter;

    invoke-direct {v0}, Lgnu/xquery/lang/Prompter;-><init>()V

    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lgnu/xquery/lang/XQuery;->defaultNamespace:Lgnu/mapping/Namespace;

    invoke-static {v0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .locals 2
    .param p1, "clas"    # Ljava/lang/Class;

    .prologue
    .line 867
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 869
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "name":Ljava/lang/String;
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    sget-object v1, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    .line 894
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 872
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Lkawa/standard/Scheme;->getNamedType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_0

    .line 874
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_9

    .line 876
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 877
    .restart local v0    # "name":Ljava/lang/String;
    const-string v1, "java.lang.String"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 878
    sget-object v1, Lgnu/kawa/xml/XDataType;->stringStringType:Lgnu/kawa/xml/XDataType;

    goto :goto_0

    .line 879
    :cond_2
    const-string v1, "gnu.kawa.xml.UntypedAtomic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 880
    sget-object v1, Lgnu/kawa/xml/XDataType;->untypedAtomicType:Lgnu/kawa/xml/XDataType;

    goto :goto_0

    .line 881
    :cond_3
    const-string v1, "java.lang.Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 882
    sget-object v1, Lgnu/kawa/xml/XDataType;->booleanType:Lgnu/kawa/xml/XDataType;

    goto :goto_0

    .line 883
    :cond_4
    const-string v1, "java.lang.Float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 884
    sget-object v1, Lgnu/kawa/xml/XDataType;->floatType:Lgnu/kawa/xml/XDataType;

    goto :goto_0

    .line 885
    :cond_5
    const-string v1, "java.lang.Double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 886
    sget-object v1, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    goto :goto_0

    .line 887
    :cond_6
    const-string v1, "java.math.BigDecimal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 888
    sget-object v1, Lgnu/kawa/xml/XDataType;->decimalType:Lgnu/kawa/xml/XDataType;

    goto :goto_0

    .line 889
    :cond_7
    const-string v1, "gnu.math.Duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 890
    sget-object v1, Lgnu/kawa/xml/XDataType;->durationType:Lgnu/kawa/xml/XDataType;

    goto :goto_0

    .line 891
    :cond_8
    const-string v1, "gnu.text.Path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 892
    sget-object v1, Lgnu/kawa/xml/XDataType;->anyURIType:Lgnu/kawa/xml/XDataType;

    goto :goto_0

    .line 894
    .end local v0    # "name":Ljava/lang/String;
    :cond_9
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_0
.end method

.method public getTypeFor(Ljava/lang/String;)Lgnu/bytecode/Type;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 847
    const-string v2, "xs:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "core":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lgnu/xquery/lang/XQuery;->getStandardType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 851
    .local v1, "t":Lgnu/bytecode/Type;
    if-eqz v1, :cond_2

    .end local v1    # "t":Lgnu/bytecode/Type;
    :goto_1
    return-object v1

    .line 847
    .end local v0    # "core":Ljava/lang/String;
    :cond_0
    const-string v2, "xdt:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_0

    .line 851
    .restart local v0    # "core":Ljava/lang/String;
    .restart local v1    # "t":Lgnu/bytecode/Type;
    :cond_2
    invoke-static {p1}, Lkawa/standard/Scheme;->string2Type(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_1
.end method

.method public hasNamespace(Lgnu/expr/Declaration;I)Z
    .locals 3
    .param p1, "decl"    # Lgnu/expr/Declaration;
    .param p2, "namespace"    # I

    .prologue
    const/4 v2, -0x2

    .line 243
    invoke-virtual {p0, p1}, Lgnu/xquery/lang/XQuery;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v0

    .line 244
    .local v0, "dnspace":I
    if-eq v0, p2, :cond_1

    if-ne v0, v2, :cond_0

    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_1

    :cond_0
    if-ne p2, v2, :cond_2

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasSeparateFunctionNamespace()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public isTrue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 89
    invoke-static {p1}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parse(Lgnu/expr/Compilation;I)Z
    .locals 18
    .param p1, "tr"    # Lgnu/expr/Compilation;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 108
    move-object/from16 v0, p1

    iget-object v10, v0, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 109
    .local v10, "mexp":Lgnu/expr/ModuleExp;
    const/4 v15, 0x2

    sput v15, Lgnu/expr/Compilation;->defaultCallConvention:I

    .line 110
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 111
    move-object/from16 v0, p1

    iget-object v12, v0, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    check-cast v12, Lgnu/xquery/lang/XQParser;

    .line 112
    .local v12, "parser":Lgnu/xquery/lang/XQParser;
    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->isInteractive()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 114
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v14

    .line 115
    .local v14, "sexp":Lgnu/expr/Expression;
    if-nez v14, :cond_0

    .line 116
    const/4 v15, 0x0

    .line 193
    .end local v14    # "sexp":Lgnu/expr/Expression;
    :goto_0
    return v15

    .line 117
    .restart local v14    # "sexp":Lgnu/expr/Expression;
    :cond_0
    iput-object v14, v10, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 177
    .end local v14    # "sexp":Lgnu/expr/Expression;
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 188
    new-instance v13, Lgnu/xquery/lang/XQResolveNames;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lgnu/xquery/lang/XQResolveNames;-><init>(Lgnu/expr/Compilation;)V

    .line 189
    .local v13, "resolver":Lgnu/xquery/lang/XQResolveNames;
    iget-object v15, v12, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object v15, v13, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 190
    iput-object v12, v13, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    .line 191
    invoke-virtual {v13, v10}, Lgnu/xquery/lang/XQResolveNames;->resolveModule(Lgnu/expr/ModuleExp;)V

    .line 192
    const/4 v15, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lgnu/expr/Compilation;->setState(I)V

    .line 193
    const/4 v15, 0x1

    goto :goto_0

    .line 119
    .end local v13    # "resolver":Lgnu/xquery/lang/XQResolveNames;
    :cond_1
    const/high16 v15, 0x10000

    and-int v15, v15, p2

    if-eqz v15, :cond_2

    .line 121
    new-instance v9, Lgnu/expr/LambdaExp;

    const/4 v15, 0x3

    invoke-direct {v9, v15}, Lgnu/expr/LambdaExp;-><init>(I)V

    .line 122
    .local v9, "lexp":Lgnu/expr/LambdaExp;
    sget-object v15, Lgnu/xquery/lang/XQParser;->DOT_VARNAME:Lgnu/mapping/Symbol;

    invoke-virtual {v9, v15}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v6

    .line 123
    .local v6, "dotDecl":Lgnu/expr/Declaration;
    const-wide/32 v16, 0x40000

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 124
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 125
    sget-object v15, Lgnu/xquery/lang/XQParser;->POSITION_VARNAME:Lgnu/mapping/Symbol;

    sget-object v16, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 126
    sget-object v15, Lgnu/xquery/lang/XQParser;->LAST_VARNAME:Lgnu/mapping/Symbol;

    sget-object v16, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lgnu/expr/LambdaExp;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    .line 127
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 128
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v15

    iput-object v15, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 129
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 130
    iput-object v9, v10, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto :goto_1

    .line 134
    .end local v6    # "dotDecl":Lgnu/expr/Declaration;
    .end local v9    # "lexp":Lgnu/expr/LambdaExp;
    :cond_2
    new-instance v7, Ljava/util/Vector;

    const/16 v15, 0xa

    invoke-direct {v7, v15}, Ljava/util/Vector;-><init>(I)V

    .line 135
    .local v7, "exps":Ljava/util/Vector;
    iget-object v14, v10, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 136
    .restart local v14    # "sexp":Lgnu/expr/Expression;
    instance-of v15, v14, Lgnu/expr/BeginExp;

    if-eqz v15, :cond_3

    move-object v3, v14

    .line 138
    check-cast v3, Lgnu/expr/BeginExp;

    .line 139
    .local v3, "bexp":Lgnu/expr/BeginExp;
    invoke-virtual {v3}, Lgnu/expr/BeginExp;->getExpressionCount()I

    move-result v5

    .line 140
    .local v5, "blen":I
    invoke-virtual {v3}, Lgnu/expr/BeginExp;->getExpressions()[Lgnu/expr/Expression;

    move-result-object v4

    .line 141
    .local v4, "bexps":[Lgnu/expr/Expression;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v5, :cond_4

    .line 142
    aget-object v15, v4, v8

    invoke-virtual {v7, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 141
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 144
    .end local v3    # "bexp":Lgnu/expr/BeginExp;
    .end local v4    # "bexps":[Lgnu/expr/Expression;
    .end local v5    # "blen":I
    .end local v8    # "i":I
    :cond_3
    if-eqz v14, :cond_4

    sget-object v15, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-eq v14, v15, :cond_4

    .line 146
    invoke-virtual {v7, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 150
    :cond_4
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v14

    .line 151
    if-nez v14, :cond_5

    .line 153
    iget v15, v12, Lgnu/xquery/lang/XQParser;->parseCount:I

    if-nez v15, :cond_6

    invoke-virtual {v12}, Lgnu/xquery/lang/XQParser;->isInteractive()Z

    move-result v15

    if-nez v15, :cond_6

    .line 155
    const/16 v15, 0x65

    const-string v16, "empty module"

    const-string v17, "XPST0003"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v15, v0, v1}, Lgnu/xquery/lang/XQParser;->error(CLjava/lang/String;Ljava/lang/String;)V

    .line 156
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 160
    :cond_5
    invoke-virtual {v7, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 162
    :cond_6
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v11

    .line 163
    .local v11, "nexps":I
    if-nez v11, :cond_7

    .line 164
    sget-object v15, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    iput-object v15, v10, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 165
    :cond_7
    const/4 v15, 0x1

    if-ne v11, v15, :cond_8

    .line 166
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lgnu/expr/Expression;

    iput-object v15, v10, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_1

    .line 169
    :cond_8
    new-array v2, v11, [Lgnu/expr/Expression;

    .line 170
    .local v2, "arr":[Lgnu/expr/Expression;
    invoke-virtual {v7, v2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 171
    new-instance v15, Lgnu/expr/BeginExp;

    invoke-direct {v15, v2}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    iput-object v15, v10, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_1
.end method

.method public resolve(Lgnu/expr/Compilation;)V
    .locals 0
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .prologue
    .line 198
    return-void
.end method
