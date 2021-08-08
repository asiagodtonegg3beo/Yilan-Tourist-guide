.class public interface abstract Lorg/locationtech/jts/algorithm/BoundaryNodeRule;
.super Ljava/lang/Object;
.source "BoundaryNodeRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/locationtech/jts/algorithm/BoundaryNodeRule$MonoValentEndPointBoundaryNodeRule;,
        Lorg/locationtech/jts/algorithm/BoundaryNodeRule$MultiValentEndPointBoundaryNodeRule;,
        Lorg/locationtech/jts/algorithm/BoundaryNodeRule$EndPointBoundaryNodeRule;,
        Lorg/locationtech/jts/algorithm/BoundaryNodeRule$Mod2BoundaryNodeRule;
    }
.end annotation


# static fields
.field public static final ENDPOINT_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

.field public static final MOD2_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

.field public static final MONOVALENT_ENDPOINT_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

.field public static final MULTIVALENT_ENDPOINT_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

.field public static final OGC_SFS_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule$Mod2BoundaryNodeRule;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/BoundaryNodeRule$Mod2BoundaryNodeRule;-><init>()V

    sput-object v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->MOD2_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .line 81
    new-instance v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule$EndPointBoundaryNodeRule;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/BoundaryNodeRule$EndPointBoundaryNodeRule;-><init>()V

    sput-object v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->ENDPOINT_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .line 87
    new-instance v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule$MultiValentEndPointBoundaryNodeRule;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/BoundaryNodeRule$MultiValentEndPointBoundaryNodeRule;-><init>()V

    sput-object v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->MULTIVALENT_ENDPOINT_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .line 93
    new-instance v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule$MonoValentEndPointBoundaryNodeRule;

    invoke-direct {v0}, Lorg/locationtech/jts/algorithm/BoundaryNodeRule$MonoValentEndPointBoundaryNodeRule;-><init>()V

    sput-object v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->MONOVALENT_ENDPOINT_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    .line 100
    sget-object v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->MOD2_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    sput-object v0, Lorg/locationtech/jts/algorithm/BoundaryNodeRule;->OGC_SFS_BOUNDARY_RULE:Lorg/locationtech/jts/algorithm/BoundaryNodeRule;

    return-void
.end method


# virtual methods
.method public abstract isInBoundary(I)Z
.end method
