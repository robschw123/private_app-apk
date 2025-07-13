.class public Lcom/taobao/weex/utils/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/Trace$TraceDummy;,
        Lcom/taobao/weex/utils/Trace$TraceJBMR2;,
        Lcom/taobao/weex/utils/Trace$AbstractTrace;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Weex_Trace"

.field private static final sEnabled:Z = false

.field private static final sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 55
    invoke-static {}, Lcom/taobao/weex/utils/OsVersion;->isAtLeastJB_MR2()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Lcom/taobao/weex/utils/Trace$TraceJBMR2;

    invoke-direct {v1, v0}, Lcom/taobao/weex/utils/Trace$TraceJBMR2;-><init>(Lcom/taobao/weex/utils/Trace$1;)V

    sput-object v1, Lcom/taobao/weex/utils/Trace;->sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;

    goto :goto_0

    .line 58
    :cond_0
    new-instance v1, Lcom/taobao/weex/utils/Trace$TraceDummy;

    invoke-direct {v1, v0}, Lcom/taobao/weex/utils/Trace$TraceDummy;-><init>(Lcom/taobao/weex/utils/Trace$1;)V

    sput-object v1, Lcom/taobao/weex/utils/Trace;->sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sectionName"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginSection() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Weex_Trace"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/taobao/weex/utils/Trace;->sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;

    invoke-virtual {v0, p0}, Lcom/taobao/weex/utils/Trace$AbstractTrace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static endSection()V
    .locals 2

    .line 87
    sget-object v0, Lcom/taobao/weex/utils/Trace;->sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;

    invoke-virtual {v0}, Lcom/taobao/weex/utils/Trace$AbstractTrace;->endSection()V

    const-string v0, "Weex_Trace"

    const-string v1, "endSection()"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final getTraceEnabled()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/taobao/weex/utils/Trace;->sEnabled:Z

    return v0
.end method
