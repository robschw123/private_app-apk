.class Lcom/taobao/weex/utils/BoxShadowUtil$1;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/utils/BoxShadowUtil;->setBoxShadow(Landroid/view/View;Ljava/lang/String;[FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$insetShadows:Ljava/util/List;

.field final synthetic val$normalShadows:Ljava/util/List;

.field final synthetic val$quality:F

.field final synthetic val$radii:[F

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/List;F[FLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$target",
            "val$normalShadows",
            "val$quality",
            "val$radii",
            "val$insetShadows"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$target:Landroid/view/View;

    iput-object p2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$normalShadows:Ljava/util/List;

    iput p3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$quality:F

    iput-object p4, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$radii:[F

    iput-object p5, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$insetShadows:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$target:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewOverlay;->clear()V

    .line 132
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$normalShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$target:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$normalShadows:Ljava/util/List;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$quality:F

    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$radii:[F

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/weex/utils/BoxShadowUtil;->access$000(Landroid/view/View;Ljava/util/List;F[F)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$insetShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$target:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$insetShadows:Ljava/util/List;

    iget v2, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$quality:F

    iget-object v3, p0, Lcom/taobao/weex/utils/BoxShadowUtil$1;->val$radii:[F

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/weex/utils/BoxShadowUtil;->access$100(Landroid/view/View;Ljava/util/List;F[F)V

    :cond_1
    return-void
.end method
