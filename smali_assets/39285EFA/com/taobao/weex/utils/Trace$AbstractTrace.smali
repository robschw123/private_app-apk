.class abstract Lcom/taobao/weex/utils/Trace$AbstractTrace;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractTrace"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/utils/Trace$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/taobao/weex/utils/Trace$AbstractTrace;-><init>()V

    return-void
.end method


# virtual methods
.method abstract beginSection(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sectionName"
        }
    .end annotation
.end method

.method abstract endSection()V
.end method
