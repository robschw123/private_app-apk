.class Lio/dcloud/common/adapter/ui/FrameSwitchView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/adapter/ui/FrameSwitchView;->runingAnimation(Lio/dcloud/common/DHInterface/IWebview;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/adapter/ui/FrameSwitchView;

.field final synthetic val$callbackId:Ljava/lang/String;

.field final synthetic val$leftView:Landroid/view/View;

.field final synthetic val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lio/dcloud/common/adapter/ui/FrameSwitchView;Landroid/view/View;ILio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/adapter/ui/FrameSwitchView$6;->this$0:Lio/dcloud/common/adapter/ui/FrameSwitchView;

    iput-object p2, p0, Lio/dcloud/common/adapter/ui/FrameSwitchView$6;->val$leftView:Landroid/view/View;

    iput p3, p0, Lio/dcloud/common/adapter/ui/FrameSwitchView$6;->val$width:I

    iput-object p4, p0, Lio/dcloud/common/adapter/ui/FrameSwitchView$6;->val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iput-object p5, p0, Lio/dcloud/common/adapter/ui/FrameSwitchView$6;->val$callbackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/FrameSwitchView$6;->this$0:Lio/dcloud/common/adapter/ui/FrameSwitchView;

    iget-object v0, p0, Lio/dcloud/common/adapter/ui/FrameSwitchView$6;->val$leftView:Landroid/view/View;

    iget v1, p0, Lio/dcloud/common/adapter/ui/FrameSwitchView$6;->val$width:I

    invoke-static {p1, v0, v1}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->access$100(Lio/dcloud/common/adapter/ui/FrameSwitchView;Landroid/view/View;I)V

    .line 2
    iget-object p1, p0, Lio/dcloud/common/adapter/ui/FrameSwitchView$6;->this$0:Lio/dcloud/common/adapter/ui/FrameSwitchView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/dcloud/common/adapter/ui/FrameSwitchView;->access$002(Lio/dcloud/common/adapter/ui/FrameSwitchView;Z)Z

    .line 3
    sput-boolean v0, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    .line 4
    iget-object v1, p0, Lio/dcloud/common/adapter/ui/FrameSwitchView$6;->val$pWebViewImpl:Lio/dcloud/common/DHInterface/IWebview;

    iget-object v2, p0, Lio/dcloud/common/adapter/ui/FrameSwitchView$6;->val$callbackId:Ljava/lang/String;

    sget v4, Lio/dcloud/common/util/JSUtil;->OK:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/dcloud/common/util/JSUtil;->execCallback(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    sput-boolean p1, Lio/dcloud/common/util/BaseInfo;->sDoingAnimation:Z

    return-void
.end method
