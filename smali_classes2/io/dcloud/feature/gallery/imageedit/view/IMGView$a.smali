.class Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/dcloud/feature/gallery/imageedit/c/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/gallery/imageedit/view/IMGView;->setMode(Lio/dcloud/feature/gallery/imageedit/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;


# direct methods
.method constructor <init>(Lio/dcloud/feature/gallery/imageedit/view/IMGView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-static {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->a(Lio/dcloud/feature/gallery/imageedit/view/IMGView;)V

    .line 2
    iget-object v0, p0, Lio/dcloud/feature/gallery/imageedit/view/IMGView$a;->a:Lio/dcloud/feature/gallery/imageedit/view/IMGView;

    invoke-static {v0}, Lio/dcloud/feature/gallery/imageedit/view/IMGView;->b(Lio/dcloud/feature/gallery/imageedit/view/IMGView;)Lio/dcloud/feature/gallery/imageedit/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/feature/gallery/imageedit/c/a;->b(Lio/dcloud/feature/gallery/imageedit/c/a$c;)V

    return-void
.end method
