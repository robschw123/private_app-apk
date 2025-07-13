.class Lio/dcloud/sdk/base/dcloud/j$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/sdk/base/dcloud/j;->a(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lio/dcloud/sdk/base/dcloud/j;


# direct methods
.method constructor <init>(Lio/dcloud/sdk/base/dcloud/j;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iput-object p2, p0, Lio/dcloud/sdk/base/dcloud/j$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "down_x"

    :try_start_1
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "down_y"

    :try_start_2
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "up_x"

    :try_start_3
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "up_y"

    :try_start_4
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "relative_down_x"

    :try_start_5
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "relative_down_y"

    :try_start_6
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "relative_up_x"

    :try_start_7
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "relative_up_y"

    :try_start_8
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iget-object v2, v2, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v1, "dw"

    :try_start_9
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/j$c;->a:Landroid/content/Context;

    invoke-static {v2}, Lio/dcloud/h/a/a;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v0, v0, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    invoke-virtual {v0}, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->c()Lorg/json/JSONObject;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v1, "dh"

    :try_start_a
    iget-object v2, p0, Lio/dcloud/sdk/base/dcloud/j$c;->a:Landroid/content/Context;

    invoke-static {v2}, Lio/dcloud/h/a/a;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :goto_0
    iget-object v0, p0, Lio/dcloud/sdk/base/dcloud/j$c;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v1, v1, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    const-string v2, "adid"

    invoke-static {v0, v2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/dcloud/sdk/base/dcloud/ADHandler;->a(Landroid/content/Context;Lio/dcloud/sdk/base/dcloud/ADHandler$g;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lio/dcloud/sdk/base/dcloud/j$c;->b:Lio/dcloud/sdk/base/dcloud/j;

    iget-object v1, p1, Lio/dcloud/sdk/base/dcloud/j;->b:Lio/dcloud/sdk/base/dcloud/ADHandler$g;

    iput-object v0, v1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->a:Landroid/view/MotionEvent;

    .line 17
    iput-object v0, v1, Lio/dcloud/sdk/base/dcloud/ADHandler$g;->b:Landroid/view/MotionEvent;

    .line 25
    iget-object p1, p1, Lio/dcloud/sdk/base/dcloud/j;->a:Lio/dcloud/sdk/base/dcloud/f;

    invoke-interface {p1}, Lio/dcloud/sdk/base/dcloud/f;->onClicked()V

    return-void
.end method
