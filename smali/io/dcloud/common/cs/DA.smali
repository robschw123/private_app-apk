.class public Lio/dcloud/common/cs/DA;
.super Ljava/lang/Object;
.source "DA.java"

# interfaces
.implements Lio/dcloud/common/DHInterface/DAI;


# static fields
.field private static mInstance:Lio/dcloud/common/DHInterface/DAI;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native arn(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "d"
        }
    .end annotation
.end method

.method private native atcn(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "d"
        }
    .end annotation
.end method

.method public static getInstance()Lio/dcloud/common/DHInterface/DAI;
    .locals 1

    .line 37
    sget-object v0, Lio/dcloud/common/cs/DA;->mInstance:Lio/dcloud/common/DHInterface/DAI;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lio/dcloud/common/cs/DA;

    invoke-direct {v0}, Lio/dcloud/common/cs/DA;-><init>()V

    sput-object v0, Lio/dcloud/common/cs/DA;->mInstance:Lio/dcloud/common/DHInterface/DAI;

    .line 40
    :cond_0
    sget-object v0, Lio/dcloud/common/cs/DA;->mInstance:Lio/dcloud/common/DHInterface/DAI;

    return-object v0
.end method

.method private native scn()V
.end method


# virtual methods
.method public act(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "d"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/cs/DA;->atcn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public ar(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "d"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/cs/DA;->arn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public sc()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lio/dcloud/common/cs/DA;->scn()V

    return-void
.end method
