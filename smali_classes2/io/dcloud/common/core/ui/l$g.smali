.class Lio/dcloud/common/core/ui/l$g;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/common/DHInterface/ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/common/core/ui/b;

.field final synthetic b:I

.field final synthetic c:Lio/dcloud/common/core/ui/l;


# direct methods
.method constructor <init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    iput-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iput p3, p0, Lio/dcloud/common/core/ui/l$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-object p2, p1, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p2, p1}, Lio/dcloud/common/core/ui/a;->c(Lio/dcloud/common/core/ui/b;)I

    move-result p1

    .line 2
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->q()V

    .line 3
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-object v0, p2, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, p2}, Lio/dcloud/common/core/ui/a;->d(Lio/dcloud/common/core/ui/b;)Z

    move-result p2

    const/16 v0, 0x2a

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_4

    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-object v5, p2, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    iget-boolean v5, v5, Lio/dcloud/common/core/ui/a;->q:Z

    if-nez v5, :cond_0

    goto :goto_2

    .line 40
    :cond_0
    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->s()V

    .line 42
    iget p2, p0, Lio/dcloud/common/core/ui/l$g;->b:I

    if-ne p2, v2, :cond_2

    .line 43
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v2, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p2

    const-string v2, "zoom-fade-in"

    iput-object v2, p2, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    .line 45
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->t()V

    .line 46
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2, v4}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->j()V

    .line 50
    :goto_0
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result p2

    if-ne p2, v1, :cond_3

    .line 51
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2, v1, v0, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 54
    :cond_2
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p2}, Lio/dcloud/common/core/ui/b;->j()V

    .line 57
    :cond_3
    :goto_1
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0xd

    invoke-virtual {p2, v0, v1, p1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 59
    iget-object v1, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2, p1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_7

    .line 61
    :cond_4
    :goto_2
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v5, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    .line 70
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_5

    const/4 p2, 0x1

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    .line 71
    :goto_3
    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    invoke-interface {v5, v3}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v5

    .line 72
    iget-object v6, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    invoke-interface {v6, v4}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v6

    .line 73
    iget-object v7, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v7

    iget v7, v7, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    if-ne v5, v7, :cond_6

    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    iget v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    add-int/2addr v5, v4

    if-ge v5, v6, :cond_7

    :cond_6
    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    iget v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    iget v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne v5, v6, :cond_8

    :cond_7
    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    const-string v6, "none"

    if-ltz p1, :cond_9

    if-eqz v5, :cond_9

    .line 74
    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v5

    iget-object v5, v5, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    invoke-static {v5, v6}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 76
    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-static {v5, v4}, Lio/dcloud/common/core/ui/i;->a(Lio/dcloud/common/core/ui/b;I)V

    .line 80
    :cond_9
    iget-object v5, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->s()V

    .line 81
    iget v5, p0, Lio/dcloud/common/core/ui/l$g;->b:I

    if-ne v5, v2, :cond_b

    if-ltz p1, :cond_b

    .line 82
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iget-boolean v2, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    if-eqz v2, :cond_a

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object p1

    iget-object p1, p1, Lio/dcloud/common/adapter/util/AnimOptions;->mAnimType_close:Ljava/lang/String;

    invoke-static {p1, v6}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 83
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->t()V

    .line 84
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, v4}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto :goto_5

    .line 86
    :cond_a
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->j()V

    .line 88
    :goto_5
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result p1

    if-ne p1, v1, :cond_c

    .line 89
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->c:Lio/dcloud/common/core/ui/l;

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1, p2, v0, v1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 92
    :cond_b
    iget-object p1, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->j()V

    :cond_c
    :goto_6
    const-string p1, "true"

    .line 123
    :goto_7
    iget-object p2, p0, Lio/dcloud/common/core/ui/l$g;->a:Lio/dcloud/common/core/ui/b;

    iput-boolean v3, p2, Lio/dcloud/common/core/ui/b;->n:Z

    .line 124
    iput-boolean v3, p2, Lio/dcloud/common/core/ui/b;->m:Z

    .line 125
    iput-boolean v3, p2, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    return-object p1
.end method
