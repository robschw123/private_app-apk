.class Lio/dcloud/feature/ui/nativeui/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/ui/nativeui/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/dcloud/feature/ui/nativeui/c;


# direct methods
.method constructor <init>(Lio/dcloud/feature/ui/nativeui/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$a;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lio/dcloud/feature/ui/nativeui/c$a;->a:Lio/dcloud/feature/ui/nativeui/c;

    invoke-static {p1}, Lio/dcloud/feature/ui/nativeui/c;->a(Lio/dcloud/feature/ui/nativeui/c;)Z

    move-result p1

    return p1
.end method
