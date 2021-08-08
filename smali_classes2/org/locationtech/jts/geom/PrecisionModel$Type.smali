.class public Lorg/locationtech/jts/geom/PrecisionModel$Type;
.super Ljava/lang/Object;
.source "PrecisionModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/locationtech/jts/geom/PrecisionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field private static nameToTypeMap:Ljava/util/Map; = null

.field private static final serialVersionUID:J = -0x4cb98acd40a6b2beL


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/locationtech/jts/geom/PrecisionModel$Type;->nameToTypeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/locationtech/jts/geom/PrecisionModel$Type;->name:Ljava/lang/String;

    .line 99
    sget-object v0, Lorg/locationtech/jts/geom/PrecisionModel$Type;->nameToTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lorg/locationtech/jts/geom/PrecisionModel$Type;->nameToTypeMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/locationtech/jts/geom/PrecisionModel$Type;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/locationtech/jts/geom/PrecisionModel$Type;->name:Ljava/lang/String;

    return-object v0
.end method
