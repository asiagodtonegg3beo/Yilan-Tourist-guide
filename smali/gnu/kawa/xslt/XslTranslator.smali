.class public Lgnu/kawa/xslt/XslTranslator;
.super Lgnu/text/Lexer;
.source "XslTranslator.java"

# interfaces
.implements Lgnu/lists/Consumer;


# static fields
.field static final XSL_TRANSFORM_URI:Ljava/lang/String; = "http://www.w3.org/1999/XSL/Transform"

.field static final applyTemplatesMethod:Lgnu/bytecode/Method;

.field static final applyTemplatesProc:Lgnu/expr/PrimProcedure;

.field static final defineTemplateMethod:Lgnu/bytecode/Method;

.field static final defineTemplateProc:Lgnu/expr/PrimProcedure;

.field static final runStylesheetMethod:Lgnu/bytecode/Method;

.field static final runStylesheetProc:Lgnu/expr/PrimProcedure;

.field static final typeTemplateTable:Lgnu/bytecode/ClassType;

.field static final typeXSLT:Lgnu/bytecode/ClassType;


# instance fields
.field attributeType:Ljava/lang/Object;

.field attributeValue:Ljava/lang/StringBuffer;

.field comp:Lgnu/expr/Compilation;

.field consumerDecl:Lgnu/expr/Declaration;

.field in:Lgnu/mapping/InPort;

.field inAttribute:Z

.field inTemplate:Z

.field interpreter:Lgnu/kawa/xslt/XSLT;

.field mexp:Lgnu/expr/ModuleExp;

.field nesting:Ljava/lang/StringBuffer;

.field preserveSpace:Z

.field templateLambda:Lgnu/expr/LambdaExp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 519
    const-string v0, "gnu.kawa.xslt.XSLT"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->typeXSLT:Lgnu/bytecode/ClassType;

    .line 521
    const-string v0, "gnu.kawa.xslt.TemplateTable"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->typeTemplateTable:Lgnu/bytecode/ClassType;

    .line 523
    sget-object v0, Lgnu/kawa/xslt/XslTranslator;->typeXSLT:Lgnu/bytecode/ClassType;

    const-string v1, "defineTemplate"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->defineTemplateMethod:Lgnu/bytecode/Method;

    .line 525
    sget-object v0, Lgnu/kawa/xslt/XslTranslator;->typeXSLT:Lgnu/bytecode/ClassType;

    const-string v1, "runStylesheet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->runStylesheetMethod:Lgnu/bytecode/Method;

    .line 527
    new-instance v0, Lgnu/expr/PrimProcedure;

    sget-object v1, Lgnu/kawa/xslt/XslTranslator;->defineTemplateMethod:Lgnu/bytecode/Method;

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->defineTemplateProc:Lgnu/expr/PrimProcedure;

    .line 529
    new-instance v0, Lgnu/expr/PrimProcedure;

    sget-object v1, Lgnu/kawa/xslt/XslTranslator;->runStylesheetMethod:Lgnu/bytecode/Method;

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->runStylesheetProc:Lgnu/expr/PrimProcedure;

    .line 531
    sget-object v0, Lgnu/kawa/xslt/XslTranslator;->typeXSLT:Lgnu/bytecode/ClassType;

    const-string v1, "applyTemplates"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesMethod:Lgnu/bytecode/Method;

    .line 533
    new-instance v0, Lgnu/expr/PrimProcedure;

    sget-object v1, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesMethod:Lgnu/bytecode/Method;

    invoke-direct {v0, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesProc:Lgnu/expr/PrimProcedure;

    return-void
.end method

.method constructor <init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/kawa/xslt/XSLT;)V
    .locals 2
    .param p1, "inp"    # Lgnu/mapping/InPort;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "interpreter"    # Lgnu/kawa/xslt/XSLT;

    .prologue
    const/16 v1, 0x64

    .line 45
    invoke-direct {p0, p1, p2}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    .line 46
    iput-object p3, p0, Lgnu/kawa/xslt/XslTranslator;->interpreter:Lgnu/kawa/xslt/XSLT;

    .line 47
    iput-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->in:Lgnu/mapping/InPort;

    .line 48
    return-void
.end method

.method public static isXslTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "type"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 122
    instance-of v2, p0, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_0

    .line 123
    check-cast p0, Lgnu/expr/QuoteExp;

    .end local p0    # "type":Ljava/lang/Object;
    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 124
    .restart local p0    # "type":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Lgnu/mapping/Symbol;

    if-nez v2, :cond_2

    .line 129
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    move-object v0, p0

    .line 126
    check-cast v0, Lgnu/mapping/Symbol;

    .line 127
    .local v0, "qname":Lgnu/mapping/Symbol;
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    if-ne v2, v3, :cond_1

    .line 129
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public append(C)Lgnu/lists/Consumer;
    .locals 1
    .param p1, "v"    # C

    .prologue
    .line 342
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 346
    :goto_0
    return-object p0

    .line 345
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .prologue
    .line 351
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 355
    :goto_0
    return-object p0

    .line 354
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 360
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->append(C)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/xslt/XslTranslator;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method append(Lgnu/expr/Expression;)V
    .locals 0
    .param p1, "expr"    # Lgnu/expr/Expression;

    .prologue
    .line 135
    return-void
.end method

.method public endAttribute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 175
    const/4 v1, 0x2

    new-array v0, v1, [Lgnu/expr/Expression;

    .line 176
    .local v0, "args":[Lgnu/expr/Expression;
    new-instance v1, Lgnu/expr/QuoteExp;

    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->attributeType:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, v4

    .line 177
    const/4 v1, 0x1

    new-instance v2, Lgnu/expr/QuoteExp;

    iget-object v3, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 178
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v2, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p0, v1}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 179
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 180
    iput-boolean v4, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    .line 181
    return-void
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public endElement()V
    .locals 27

    .prologue
    .line 185
    invoke-virtual/range {p0 .. p0}, Lgnu/kawa/xslt/XslTranslator;->maybeSkipWhitespace()V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v14, v24, -0x1

    .line 187
    .local v14, "nlen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v19

    .line 188
    .local v19, "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lgnu/expr/Expression;

    .line 190
    .local v20, "startTag":Lgnu/expr/Expression;
    invoke-static/range {v20 .. v20}, Lgnu/kawa/xslt/XslTranslator;->isXslTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 191
    .local v23, "xslTag":Ljava/lang/String;
    const-string v24, "value-of"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 193
    const-string v24, ""

    const-string v25, "select"

    add-int/lit8 v26, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 194
    .local v18, "select":Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/kawa/xslt/XslTranslator;->parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    .line 197
    .local v7, "exp":Lgnu/expr/Expression;
    new-instance v8, Lgnu/expr/ApplyExp;

    sget-object v24, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Lgnu/expr/Expression;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v7, v25, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v8, v0, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 198
    .end local v7    # "exp":Lgnu/expr/Expression;
    .local v8, "exp":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 199
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 281
    .end local v8    # "exp":Lgnu/expr/Expression;
    .end local v18    # "select":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const-string v24, "copy-of"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 205
    const-string v24, ""

    const-string v25, "select"

    add-int/lit8 v26, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 206
    .restart local v18    # "select":Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/kawa/xslt/XslTranslator;->parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    .line 209
    .restart local v7    # "exp":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 210
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    goto :goto_0

    .line 214
    .end local v7    # "exp":Lgnu/expr/Expression;
    .end local v18    # "select":Ljava/lang/String;
    :cond_2
    const-string v24, "apply-templates"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 216
    const-string v24, ""

    const-string v25, "select"

    add-int/lit8 v26, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 217
    .restart local v18    # "select":Ljava/lang/String;
    const-string v24, ""

    const-string v25, "mode"

    add-int/lit8 v26, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 218
    .local v12, "mode":Ljava/lang/String;
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v4, v0, [Lgnu/expr/Expression;

    const/16 v24, 0x0

    new-instance v25, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v25, v4, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgnu/kawa/xslt/XslTranslator;->resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    aput-object v25, v4, v24

    .line 220
    .local v4, "args":[Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 221
    new-instance v24, Lgnu/expr/ApplyExp;

    new-instance v25, Lgnu/expr/QuoteExp;

    sget-object v26, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesProc:Lgnu/expr/PrimProcedure;

    invoke-direct/range {v25 .. v26}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    goto/16 :goto_0

    .line 223
    .end local v4    # "args":[Lgnu/expr/Expression;
    .end local v12    # "mode":Ljava/lang/String;
    .end local v18    # "select":Ljava/lang/String;
    :cond_3
    const-string v24, "if"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 225
    const-string v24, ""

    const-string v25, "test"

    add-int/lit8 v26, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 226
    .restart local v18    # "select":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lgnu/kawa/xslt/XslTranslator;->parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v21

    .line 227
    .local v21, "test":Lgnu/expr/Expression;
    invoke-static/range {v21 .. v21}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v21

    .line 228
    add-int/lit8 v24, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/kawa/xslt/XslTranslator;->popTemplateBody(I)Lgnu/expr/Expression;

    move-result-object v6

    .line 229
    .local v6, "clause":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 230
    new-instance v24, Lgnu/expr/IfExp;

    sget-object v25, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v6, v2}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    goto/16 :goto_0

    .line 232
    .end local v6    # "clause":Lgnu/expr/Expression;
    .end local v18    # "select":Ljava/lang/String;
    .end local v21    # "test":Lgnu/expr/Expression;
    :cond_4
    const-string v24, "stylesheet"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_5

    const-string v24, "transform"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 234
    :cond_5
    const-string v24, ""

    const-string v25, "version"

    add-int/lit8 v26, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 235
    .local v22, "version":Ljava/lang/String;
    new-instance v24, Lgnu/expr/ApplyExp;

    new-instance v25, Lgnu/expr/QuoteExp;

    sget-object v26, Lgnu/kawa/xslt/XslTranslator;->runStylesheetProc:Lgnu/expr/PrimProcedure;

    invoke-direct/range {v25 .. v26}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sget-object v26, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct/range {v24 .. v26}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 237
    add-int/lit8 v24, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/kawa/xslt/XslTranslator;->popTemplateBody(I)Lgnu/expr/Expression;

    move-result-object v5

    .line 238
    .local v5, "body":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v5, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_0

    .line 241
    .end local v5    # "body":Lgnu/expr/Expression;
    .end local v22    # "version":Ljava/lang/String;
    :cond_6
    const-string v24, "template"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 243
    const-string v24, ""

    const-string v25, "match"

    add-int/lit8 v26, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "match":Ljava/lang/String;
    const-string v24, ""

    const-string v25, "name"

    add-int/lit8 v26, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 245
    .local v13, "name":Ljava/lang/String;
    const-string v24, ""

    const-string v25, "priority"

    add-int/lit8 v26, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 246
    .local v15, "priority":Ljava/lang/String;
    const-string v24, ""

    const-string v25, "mode"

    add-int/lit8 v26, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 247
    .restart local v12    # "mode":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v24, v0

    add-int/lit8 v25, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lgnu/kawa/xslt/XslTranslator;->popTemplateBody(I)Lgnu/expr/Expression;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    iput-object v0, v1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 249
    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v4, v0, [Lgnu/expr/Expression;

    .line 250
    .restart local v4    # "args":[Lgnu/expr/Expression;
    const-wide/16 v16, 0x0

    .line 251
    .local v16, "prio":D
    const/16 v24, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgnu/kawa/xslt/XslTranslator;->resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    aput-object v25, v4, v24

    .line 252
    const/16 v24, 0x1

    new-instance v25, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v25, v4, v24

    .line 253
    const/16 v24, 0x2

    new-instance v25, Lgnu/expr/QuoteExp;

    invoke-static/range {v16 .. v17}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v25, v4, v24

    .line 254
    const/16 v24, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lgnu/kawa/xslt/XslTranslator;->resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v25

    aput-object v25, v4, v24

    .line 255
    const/16 v24, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    move-object/from16 v25, v0

    aput-object v25, v4, v24

    .line 256
    new-instance v24, Lgnu/expr/ApplyExp;

    new-instance v25, Lgnu/expr/QuoteExp;

    sget-object v26, Lgnu/kawa/xslt/XslTranslator;->defineTemplateProc:Lgnu/expr/PrimProcedure;

    invoke-direct/range {v25 .. v26}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 257
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    goto/16 :goto_0

    .line 259
    .end local v4    # "args":[Lgnu/expr/Expression;
    .end local v10    # "match":Ljava/lang/String;
    .end local v12    # "mode":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "priority":Ljava/lang/String;
    .end local v16    # "prio":D
    :cond_7
    const-string v24, "text"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 261
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lgnu/kawa/xslt/XslTranslator;->preserveSpace:Z

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Stack;->size()I

    move-result v24

    sub-int v24, v24, v19

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    new-array v4, v0, [Lgnu/expr/Expression;

    .line 263
    .restart local v4    # "args":[Lgnu/expr/Expression;
    array-length v9, v4

    .local v9, "i":I
    :goto_1
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_8

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lgnu/expr/Expression;

    aput-object v24, v4, v9

    goto :goto_1

    .line 265
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 266
    new-instance v7, Lgnu/expr/ApplyExp;

    sget-object v24, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    move-object/from16 v0, v24

    invoke-direct {v7, v0, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 267
    .restart local v7    # "exp":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v7, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_0

    .line 272
    .end local v4    # "args":[Lgnu/expr/Expression;
    .end local v7    # "exp":Lgnu/expr/Expression;
    .end local v9    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Stack;->size()I

    move-result v24

    sub-int v24, v24, v19

    move/from16 v0, v24

    new-array v4, v0, [Lgnu/expr/Expression;

    .line 273
    .restart local v4    # "args":[Lgnu/expr/Expression;
    array-length v9, v4

    .restart local v9    # "i":I
    :goto_2
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_a

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lgnu/expr/Expression;

    aput-object v24, v4, v9

    goto :goto_2

    .line 275
    :cond_a
    new-instance v11, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v11}, Lgnu/kawa/xml/MakeElement;-><init>()V

    .line 277
    .local v11, "mkElement":Lgnu/kawa/xml/MakeElement;
    new-instance v7, Lgnu/expr/ApplyExp;

    new-instance v24, Lgnu/expr/QuoteExp;

    move-object/from16 v0, v24

    invoke-direct {v0, v11}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, v24

    invoke-direct {v7, v0, v4}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 278
    .restart local v7    # "exp":Lgnu/expr/Expression;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v7, v0, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto/16 :goto_0
.end method

.method public error(CLjava/lang/String;)V
    .locals 1
    .param p1, "kind"    # C
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 486
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 487
    return-void
.end method

.method public getExpression()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Expression;

    return-object v0
.end method

.method public ignoring()Z
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method maybeSkipWhitespace()V
    .locals 8

    .prologue
    .line 55
    iget-boolean v6, p0, Lgnu/kawa/xslt/XslTranslator;->preserveSpace:Z

    if-eqz v6, :cond_0

    .line 76
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v6, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v6, v6, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v3

    .line 58
    .local v3, "size":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    .line 60
    iget-object v6, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v6, v6, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v6, v3}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    .line 61
    .local v1, "expr":Lgnu/expr/Expression;
    instance-of v6, v1, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_4

    .line 63
    check-cast v1, Lgnu/expr/QuoteExp;

    .end local v1    # "expr":Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 64
    .local v5, "value":Ljava/lang/Object;
    if-nez v5, :cond_3

    const-string v4, ""

    .line 65
    .local v4, "str":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "j":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1

    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 68
    .local v0, "ch":C
    const/16 v6, 0x20

    if-eq v0, v6, :cond_2

    const/16 v6, 0x9

    if-eq v0, v6, :cond_2

    const/16 v6, 0xd

    if-eq v0, v6, :cond_2

    const/16 v6, 0xa

    if-eq v0, v6, :cond_2

    goto :goto_0

    .line 64
    .end local v0    # "ch":C
    .end local v2    # "j":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 75
    .end local v5    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v6, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v6, v6, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Stack;->setSize(I)V

    goto :goto_0
.end method

.method public parse(Lgnu/expr/Compilation;)V
    .locals 3
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    iput-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    .line 509
    iget-object v1, p1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    if-nez v1, :cond_0

    .line 510
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    .line 511
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->pushNewModule(Lgnu/text/Lexer;)Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 512
    .local v0, "mexp":Lgnu/expr/ModuleExp;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 513
    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->startDocument(Lgnu/expr/ModuleExp;)V

    .line 514
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->in:Lgnu/mapping/InPort;

    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 515
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->endDocument()V

    .line 516
    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 517
    return-void
.end method

.method parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 9
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v6, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v6}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    .line 288
    .local v2, "messages":Lgnu/text/SourceMessages;
    :try_start_0
    new-instance v4, Lgnu/xquery/lang/XQParser;

    new-instance v6, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v6, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lgnu/kawa/xslt/XslTranslator;->interpreter:Lgnu/kawa/xslt/XSLT;

    invoke-direct {v4, v6, v2, v7}, Lgnu/xquery/lang/XQParser;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V

    .line 290
    .local v4, "parser":Lgnu/xquery/lang/XQParser;
    new-instance v1, Ljava/util/Vector;

    const/16 v6, 0x14

    invoke-direct {v1, v6}, Ljava/util/Vector;-><init>(I)V

    .line 294
    .local v1, "exps":Ljava/util/Vector;
    :goto_0
    iget-object v6, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, v6}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v5

    .line 295
    .local v5, "sexp":Lgnu/expr/Expression;
    if-nez v5, :cond_0

    .line 299
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 300
    .local v3, "nexps":I
    if-nez v3, :cond_1

    .line 301
    sget-object v6, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 303
    :goto_1
    return-object v6

    .line 297
    .end local v3    # "nexps":I
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v1    # "exps":Ljava/util/Vector;
    .end local v4    # "parser":Lgnu/xquery/lang/XQParser;
    .end local v5    # "sexp":Lgnu/expr/Expression;
    :catch_0
    move-exception v0

    .line 309
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 310
    new-instance v6, Ljava/lang/InternalError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caught "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 302
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "exps":Ljava/util/Vector;
    .restart local v3    # "nexps":I
    .restart local v4    # "parser":Lgnu/xquery/lang/XQParser;
    .restart local v5    # "sexp":Lgnu/expr/Expression;
    :cond_1
    const/4 v6, 0x1

    if-ne v3, v6, :cond_2

    .line 303
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Expression;

    goto :goto_1

    .line 305
    :cond_2
    new-instance v6, Ljava/lang/InternalError;

    const-string v7, "too many xpath expressions"

    invoke-direct {v6, v7}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "start"    # I

    .prologue
    const/4 v9, 0x0

    .line 80
    iget-object v10, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v10, v10, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->size()I

    move-result v6

    .line 81
    .local v6, "size":I
    move v5, p3

    .local v5, "i":I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 83
    iget-object v10, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v10, v10, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v10, p3}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 84
    .local v3, "el":Ljava/lang/Object;
    instance-of v10, v3, Lgnu/expr/ApplyExp;

    if-nez v10, :cond_1

    .line 106
    .end local v3    # "el":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v9

    .restart local v3    # "el":Ljava/lang/Object;
    :cond_1
    move-object v0, v3

    .line 86
    check-cast v0, Lgnu/expr/ApplyExp;

    .line 87
    .local v0, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v4

    .line 88
    .local v4, "function":Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v10

    sget-object v11, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    if-ne v10, v11, :cond_0

    .line 90
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 91
    .local v2, "args":[Lgnu/expr/Expression;
    array-length v10, v2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 93
    const/4 v10, 0x0

    aget-object v1, v2, v10

    .line 94
    .local v1, "arg0":Lgnu/expr/Expression;
    instance-of v10, v1, Lgnu/expr/QuoteExp;

    if-eqz v10, :cond_0

    .line 96
    check-cast v1, Lgnu/expr/QuoteExp;

    .end local v1    # "arg0":Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 97
    .local v8, "tag":Ljava/lang/Object;
    instance-of v10, v8, Lgnu/mapping/Symbol;

    if-eqz v10, :cond_0

    move-object v7, v8

    .line 99
    check-cast v7, Lgnu/mapping/Symbol;

    .line 100
    .local v7, "stag":Lgnu/mapping/Symbol;
    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    if-ne v10, p2, :cond_2

    invoke-virtual {v7}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    if-ne v10, p1, :cond_2

    .line 102
    iget-object v9, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v9, v9, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v9, v5}, Ljava/util/Stack;->removeElementAt(I)V

    .line 103
    const/4 v9, 0x1

    aget-object v9, v2, v9

    check-cast v9, Lgnu/expr/QuoteExp;

    invoke-virtual {v9}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_1

    .line 81
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method popTemplateBody(I)Lgnu/expr/Expression;
    .locals 4
    .param p1, "start"    # I

    .prologue
    .line 112
    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v2, v2, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    sub-int v1, v2, p1

    .line 114
    .local v1, "i":I
    new-array v0, v1, [Lgnu/expr/Expression;

    .line 115
    .local v0, "args":[Lgnu/expr/Expression;
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 116
    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v2, v2, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Expression;

    aput-object v2, v0, v1

    goto :goto_0

    .line 117
    :cond_0
    new-instance v2, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    invoke-direct {v2, v3, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v2
.end method

.method push(Lgnu/expr/Expression;)V
    .locals 1
    .param p1, "exp"    # Lgnu/expr/Expression;

    .prologue
    .line 375
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    return-void
.end method

.method push(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 380
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 381
    return-void
.end method

.method resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 499
    if-nez p1, :cond_0

    .line 500
    sget-object v0, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    .line 502
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgnu/expr/QuoteExp;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "attrType"    # Ljava/lang/Object;

    .prologue
    .line 165
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 166
    const/16 v0, 0x66

    const-string v1, "internal error - attribute inside attribute"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xslt/XslTranslator;->error(CLjava/lang/String;)V

    .line 167
    :cond_0
    iput-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->attributeType:Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 169
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    .line 171
    return-void
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public startDocument(Lgnu/expr/ModuleExp;)V
    .locals 0
    .param p1, "mexp"    # Lgnu/expr/ModuleExp;

    .prologue
    .line 430
    iput-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    .line 431
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->startDocument()V

    .line 432
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/Object;

    .prologue
    .line 139
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->maybeSkipWhitespace()V

    .line 140
    invoke-static {p1}, Lgnu/kawa/xslt/XslTranslator;->isXslTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "xslTag":Ljava/lang/String;
    const-string v2, "template"

    if-ne v1, v2, :cond_3

    .line 143
    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_0

    .line 144
    const-string v2, "nested xsl:template"

    invoke-virtual {p0, v2}, Lgnu/kawa/xslt/XslTranslator;->error(Ljava/lang/String;)V

    .line 145
    :cond_0
    new-instance v2, Lgnu/expr/LambdaExp;

    invoke-direct {v2}, Lgnu/expr/LambdaExp;-><init>()V

    iput-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    .line 151
    :cond_1
    :goto_0
    instance-of v2, p1, Lgnu/xml/XName;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 155
    check-cast v0, Lgnu/xml/XName;

    .line 156
    .local v0, "xn":Lgnu/xml/XName;
    invoke-virtual {v0}, Lgnu/xml/XName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/xml/XName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lgnu/xml/XName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 159
    .end local v0    # "xn":Lgnu/xml/XName;
    .end local p1    # "type":Ljava/lang/Object;
    :cond_2
    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v3, v3, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    .line 161
    return-void

    .line 149
    .restart local p1    # "type":Ljava/lang/Object;
    :cond_3
    const-string v2, "text"

    if-ne v1, v2, :cond_1

    .line 150
    const/4 v2, 0x0

    iput-boolean v2, p0, Lgnu/kawa/xslt/XslTranslator;->preserveSpace:Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 5
    .param p1, "v"    # I

    .prologue
    const/high16 v3, 0x10000

    .line 316
    iget-boolean v2, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v2, :cond_0

    .line 319
    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    .line 337
    :goto_0
    return-void

    .line 327
    :cond_0
    if-ge p1, v3, :cond_1

    .line 328
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "str":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 331
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [C

    const/4 v2, 0x0

    sub-int v3, p1, v3

    shr-int/lit8 v3, v3, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v2

    const/4 v2, 0x1

    and-int/lit16 v3, p1, 0x3ff

    const v4, 0xdc00

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 333
    .local v0, "c2":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 465
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->write(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 456
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public write([CII)V
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 448
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 452
    :goto_0
    return-void

    .line 451
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z

    .prologue
    .line 385
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 389
    :goto_0
    return-void

    .line 388
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    :goto_1
    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    goto :goto_1
.end method

.method public writeDouble(D)V
    .locals 1
    .param p1, "v"    # D

    .prologue
    .line 401
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 405
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-static {p1, p2}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeFloat(F)V
    .locals 2
    .param p1, "v"    # F

    .prologue
    .line 393
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_0
    float-to-double v0, p1

    invoke-static {v0, v1}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeInt(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 409
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 413
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeLong(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 417
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    invoke-static {p1, p2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 440
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_0
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method
