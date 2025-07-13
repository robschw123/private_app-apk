.class Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;
.super Ljava/lang/Object;
.source "GlideImageAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "model",
            "target",
            "isFirstResource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/GlideException;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 75
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 76
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/GlideException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "errorMessage"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p3, p3, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$url:Ljava/lang/String;

    iget-object p4, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p4, p4, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-static {p1, p3, p4, v0, p2}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter;->access$000(Lcom/taobao/weex/common/WXImageStrategy;Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V

    return v0
.end method

.method public onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resource",
            "model",
            "target",
            "dataSource",
            "isFirstResource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/request/target/Target<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Z)Z"
        }
    .end annotation

    .line 83
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "width"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "height"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p1, p1, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$strategy:Lcom/taobao/weex/common/WXImageStrategy;

    iget-object p3, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p3, p3, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$url:Ljava/lang/String;

    iget-object p4, p0, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->this$0:Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;

    iget-object p4, p4, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1;->val$view:Landroid/widget/ImageView;

    const/4 p5, 0x1

    invoke-static {p1, p3, p4, p5, p2}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter;->access$000(Lcom/taobao/weex/common/WXImageStrategy;Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "resource",
            "model",
            "target",
            "dataSource",
            "isFirstResource"
        }
    .end annotation

    .line 72
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p5}, Lio/dcloud/feature/weex/adapter/GlideImageAdapter$1$2;->onResourceReady(Landroid/graphics/drawable/Drawable;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p1

    return p1
.end method
