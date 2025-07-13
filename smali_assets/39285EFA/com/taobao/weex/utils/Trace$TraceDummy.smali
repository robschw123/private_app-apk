.class final Lcom/taobao/weex/utils/Trace$TraceDummy;
.super Lcom/taobao/weex/utils/Trace$AbstractTrace;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TraceDummy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0}, Lcom/taobao/weex/utils/Trace$AbstractTrace;-><init>(Lcom/taobao/weex/utils/Trace$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/utils/Trace$1;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/taobao/weex/utils/Trace$TraceDummy;-><init>()V

    return-void
.end method


# virtual methods
.method beginSection(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sectionName"
        }
    .end annotation

    return-void
.end method

.method endSection()V
    .locals 0

    return-void
.end method
