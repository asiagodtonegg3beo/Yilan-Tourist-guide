.class public Lorg/locationtech/jts/util/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;
    }
.end annotation


# static fields
.field private static final DEBUG_LINE_TAG:Ljava/lang/String; = "D! "

.field public static DEBUG_PROPERTY_NAME:Ljava/lang/String;

.field public static DEBUG_PROPERTY_VALUE_ON:Ljava/lang/String;

.field public static DEBUG_PROPERTY_VALUE_TRUE:Ljava/lang/String;

.field private static final debug:Lorg/locationtech/jts/util/Debug;

.field private static debugOn:Z

.field private static final fact:Lorg/locationtech/jts/geom/GeometryFactory;

.field private static lastTimePrinted:J

.field private static stopwatch:Lorg/locationtech/jts/util/Stopwatch;


# instance fields
.field private args:[Ljava/lang/Object;

.field private out:Ljava/io/PrintStream;

.field private printArgs:[Ljava/lang/Class;

.field private watchObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v1, "jts.debug"

    sput-object v1, Lorg/locationtech/jts/util/Debug;->DEBUG_PROPERTY_NAME:Ljava/lang/String;

    .line 49
    const-string v1, "on"

    sput-object v1, Lorg/locationtech/jts/util/Debug;->DEBUG_PROPERTY_VALUE_ON:Ljava/lang/String;

    .line 50
    const-string v1, "true"

    sput-object v1, Lorg/locationtech/jts/util/Debug;->DEBUG_PROPERTY_VALUE_TRUE:Ljava/lang/String;

    .line 52
    const/4 v1, 0x0

    sput-boolean v1, Lorg/locationtech/jts/util/Debug;->debugOn:Z

    .line 55
    sget-object v1, Lorg/locationtech/jts/util/Debug;->DEBUG_PROPERTY_NAME:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "debugValue":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 57
    sget-object v1, Lorg/locationtech/jts/util/Debug;->DEBUG_PROPERTY_VALUE_ON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/locationtech/jts/util/Debug;->DEBUG_PROPERTY_VALUE_TRUE:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lorg/locationtech/jts/util/Debug;->debugOn:Z

    .line 63
    :cond_1
    new-instance v1, Lorg/locationtech/jts/util/Stopwatch;

    invoke-direct {v1}, Lorg/locationtech/jts/util/Stopwatch;-><init>()V

    sput-object v1, Lorg/locationtech/jts/util/Debug;->stopwatch:Lorg/locationtech/jts/util/Stopwatch;

    .line 77
    new-instance v1, Lorg/locationtech/jts/util/Debug;

    invoke-direct {v1}, Lorg/locationtech/jts/util/Debug;-><init>()V

    sput-object v1, Lorg/locationtech/jts/util/Debug;->debug:Lorg/locationtech/jts/util/Debug;

    .line 78
    new-instance v1, Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>()V

    sput-object v1, Lorg/locationtech/jts/util/Debug;->fact:Lorg/locationtech/jts/geom/GeometryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/locationtech/jts/util/Debug;->watchObj:Ljava/lang/Object;

    .line 84
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/locationtech/jts/util/Debug;->args:[Ljava/lang/Object;

    .line 254
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/locationtech/jts/util/Debug;->out:Ljava/io/PrintStream;

    .line 255
    new-array v0, v1, [Ljava/lang/Class;

    iput-object v0, p0, Lorg/locationtech/jts/util/Debug;->printArgs:[Ljava/lang/Class;

    .line 257
    :try_start_0
    iget-object v0, p0, Lorg/locationtech/jts/util/Debug;->printArgs:[Ljava/lang/Class;

    const/4 v1, 0x0

    const-string v2, "java.io.PrintStream"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static addWatch(Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 182
    sget-object v0, Lorg/locationtech/jts/util/Debug;->debug:Lorg/locationtech/jts/util/Debug;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/util/Debug;->instanceAddWatch(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public static breakIf(Z)V
    .locals 0
    .param p0, "cond"    # Z

    .prologue
    .line 195
    if-eqz p0, :cond_0

    invoke-static {}, Lorg/locationtech/jts/util/Debug;->doBreak()V

    .line 196
    :cond_0
    return-void
.end method

.method public static breakIfEqual(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/locationtech/jts/util/Debug;->doBreak()V

    .line 201
    :cond_0
    return-void
.end method

.method public static breakIfEqual(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)V
    .locals 2
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "tolerance"    # D

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    cmpg-double v0, v0, p2

    if-gtz v0, :cond_0

    invoke-static {}, Lorg/locationtech/jts/util/Debug;->doBreak()V

    .line 206
    :cond_0
    return-void
.end method

.method private static doBreak()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public static equals(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;D)Z
    .locals 2
    .param p0, "c1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "c2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "tolerance"    # D

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Coordinate;->distance(Lorg/locationtech/jts/geom/Coordinate;)D

    move-result-wide v0

    cmpg-double v0, v0, p2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static formatField(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "fieldLen"    # I

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, p1, v2

    .line 156
    .local v0, "nPad":I
    if-gtz v0, :cond_0

    .line 158
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 157
    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lorg/locationtech/jts/util/Debug;->spaces(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "padStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static hasSegment(Lorg/locationtech/jts/geom/Geometry;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Z
    .locals 2
    .param p0, "geom"    # Lorg/locationtech/jts/geom/Geometry;
    .param p1, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 216
    new-instance v0, Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;

    invoke-direct {v0, p1, p2}, Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;-><init>(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)V

    .line 217
    .local v0, "filter":Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Geometry;->apply(Lorg/locationtech/jts/geom/CoordinateSequenceFilter;)V

    .line 218
    invoke-virtual {v0}, Lorg/locationtech/jts/util/Debug$SegmentFindingFilter;->hasSegment()Z

    move-result v1

    return v1
.end method

.method private instanceAddWatch(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 320
    iput-object p1, p0, Lorg/locationtech/jts/util/Debug;->watchObj:Ljava/lang/Object;

    .line 321
    return-void
.end method

.method private instancePrint(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/locationtech/jts/util/Debug;->out:Ljava/io/PrintStream;

    const-string v1, "D! "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lorg/locationtech/jts/util/Debug;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public static isDebugging()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lorg/locationtech/jts/util/Debug;->debugOn:Z

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 73
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JTS Debugging is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lorg/locationtech/jts/util/Debug;->debugOn:Z

    if-eqz v0, :cond_0

    const-string v0, "ON"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    return-void

    .line 73
    :cond_0
    const-string v0, "OFF"

    goto :goto_0
.end method

.method public static print(Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 114
    sget-boolean v0, Lorg/locationtech/jts/util/Debug;->debugOn:Z

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v0, Lorg/locationtech/jts/util/Debug;->debug:Lorg/locationtech/jts/util/Debug;

    invoke-virtual {v0, p0}, Lorg/locationtech/jts/util/Debug;->instancePrint(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 101
    sget-boolean v0, Lorg/locationtech/jts/util/Debug;->debugOn:Z

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    sget-object v0, Lorg/locationtech/jts/util/Debug;->debug:Lorg/locationtech/jts/util/Debug;

    invoke-direct {v0, p0}, Lorg/locationtech/jts/util/Debug;->instancePrint(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static print(ZLjava/lang/Object;)V
    .locals 1
    .param p0, "isTrue"    # Z
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 119
    sget-boolean v0, Lorg/locationtech/jts/util/Debug;->debugOn:Z

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    if-eqz p0, :cond_0

    .line 121
    sget-object v0, Lorg/locationtech/jts/util/Debug;->debug:Lorg/locationtech/jts/util/Debug;

    invoke-virtual {v0, p1}, Lorg/locationtech/jts/util/Debug;->instancePrint(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static printIfWatch(Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 190
    sget-object v0, Lorg/locationtech/jts/util/Debug;->debug:Lorg/locationtech/jts/util/Debug;

    invoke-virtual {v0, p0}, Lorg/locationtech/jts/util/Debug;->instancePrintIfWatch(Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public static printTime(Ljava/lang/String;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xa

    .line 140
    sget-boolean v4, Lorg/locationtech/jts/util/Debug;->debugOn:Z

    if-nez v4, :cond_0

    .line 151
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v4, Lorg/locationtech/jts/util/Debug;->stopwatch:Lorg/locationtech/jts/util/Stopwatch;

    invoke-virtual {v4}, Lorg/locationtech/jts/util/Stopwatch;->getTime()J

    move-result-wide v2

    .line 144
    .local v2, "time":J
    sget-wide v4, Lorg/locationtech/jts/util/Debug;->lastTimePrinted:J

    sub-long v0, v2, v4

    .line 145
    .local v0, "elapsedTime":J
    sget-object v4, Lorg/locationtech/jts/util/Debug;->debug:Lorg/locationtech/jts/util/Debug;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    invoke-static {v2, v3}, Lorg/locationtech/jts/util/Stopwatch;->getTimeString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lorg/locationtech/jts/util/Debug;->formatField(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 147
    invoke-static {v0, v1}, Lorg/locationtech/jts/util/Stopwatch;->getTimeString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lorg/locationtech/jts/util/Debug;->formatField(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-direct {v4, v5}, Lorg/locationtech/jts/util/Debug;->instancePrint(Ljava/lang/String;)V

    .line 149
    sget-object v4, Lorg/locationtech/jts/util/Debug;->debug:Lorg/locationtech/jts/util/Debug;

    invoke-virtual {v4}, Lorg/locationtech/jts/util/Debug;->println()V

    .line 150
    sput-wide v2, Lorg/locationtech/jts/util/Debug;->lastTimePrinted:J

    goto :goto_0
.end method

.method public static printWatch()V
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lorg/locationtech/jts/util/Debug;->debug:Lorg/locationtech/jts/util/Debug;

    invoke-virtual {v0}, Lorg/locationtech/jts/util/Debug;->instancePrintWatch()V

    .line 187
    return-void
.end method

.method public static println(Ljava/lang/Object;)V
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 125
    sget-boolean v0, Lorg/locationtech/jts/util/Debug;->debugOn:Z

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    sget-object v0, Lorg/locationtech/jts/util/Debug;->debug:Lorg/locationtech/jts/util/Debug;

    invoke-virtual {v0, p0}, Lorg/locationtech/jts/util/Debug;->instancePrint(Ljava/lang/Object;)V

    .line 129
    sget-object v0, Lorg/locationtech/jts/util/Debug;->debug:Lorg/locationtech/jts/util/Debug;

    invoke-virtual {v0}, Lorg/locationtech/jts/util/Debug;->println()V

    goto :goto_0
.end method

.method public static resetTime()V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lorg/locationtech/jts/util/Debug;->stopwatch:Lorg/locationtech/jts/util/Stopwatch;

    invoke-virtual {v0}, Lorg/locationtech/jts/util/Stopwatch;->reset()V

    .line 135
    sget-object v0, Lorg/locationtech/jts/util/Debug;->stopwatch:Lorg/locationtech/jts/util/Stopwatch;

    invoke-virtual {v0}, Lorg/locationtech/jts/util/Stopwatch;->getTime()J

    move-result-wide v0

    sput-wide v0, Lorg/locationtech/jts/util/Debug;->lastTimePrinted:J

    .line 136
    return-void
.end method

.method private static spaces(I)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # I

    .prologue
    .line 163
    new-array v0, p0, [C

    .line 164
    .local v0, "ch":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 165
    const/16 v2, 0x20

    aput-char v2, v0, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static toLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;
    .locals 3
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 89
    sget-object v0, Lorg/locationtech/jts/util/Debug;->fact:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method

.method public static toLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;
    .locals 3
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 93
    sget-object v0, Lorg/locationtech/jts/util/Debug;->fact:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method

.method public static toLine(Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;
    .locals 3
    .param p0, "p0"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p1, "p1"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p2, "p2"    # Lorg/locationtech/jts/geom/Coordinate;
    .param p3, "p3"    # Lorg/locationtech/jts/geom/Coordinate;

    .prologue
    .line 97
    sget-object v0, Lorg/locationtech/jts/util/Debug;->fact:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/locationtech/jts/geom/Coordinate;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public instancePrint(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 277
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 278
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/util/Debug;->instancePrint(Ljava/util/Iterator;)V

    .line 286
    :goto_0
    return-void

    .line 280
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_1

    .line 281
    check-cast p1, Ljava/util/Iterator;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/util/Debug;->instancePrint(Ljava/util/Iterator;)V

    goto :goto_0

    .line 284
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/locationtech/jts/util/Debug;->instancePrintObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public instancePrint(Ljava/util/Iterator;)V
    .locals 2
    .param p1, "it"    # Ljava/util/Iterator;

    .prologue
    .line 290
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 292
    .local v0, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/locationtech/jts/util/Debug;->instancePrintObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public instancePrintIfWatch(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 270
    iget-object v0, p0, Lorg/locationtech/jts/util/Debug;->watchObj:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lorg/locationtech/jts/util/Debug;->watchObj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lorg/locationtech/jts/util/Debug;->watchObj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/util/Debug;->instancePrint(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public instancePrintObject(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 297
    const/4 v2, 0x0

    .line 299
    .local v2, "printMethod":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 301
    .local v0, "cls":Ljava/lang/Class;
    :try_start_1
    const-string v3, "print"

    iget-object v4, p0, Lorg/locationtech/jts/util/Debug;->printArgs:[Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 302
    iget-object v3, p0, Lorg/locationtech/jts/util/Debug;->args:[Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/locationtech/jts/util/Debug;->out:Ljava/io/PrintStream;

    aput-object v5, v3, v4

    .line 303
    iget-object v3, p0, Lorg/locationtech/jts/util/Debug;->out:Ljava/io/PrintStream;

    const-string v4, "D! "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lorg/locationtech/jts/util/Debug;->args:[Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 313
    .end local v0    # "cls":Ljava/lang/Class;
    :goto_0
    return-void

    .line 306
    .restart local v0    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 307
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/locationtech/jts/util/Debug;->instancePrint(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 310
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 311
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/locationtech/jts/util/Debug;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public instancePrintWatch()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/locationtech/jts/util/Debug;->watchObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/locationtech/jts/util/Debug;->watchObj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/util/Debug;->instancePrint(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public println()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/locationtech/jts/util/Debug;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 317
    return-void
.end method
