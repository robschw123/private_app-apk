.class Lcom/dcloud/android/widget/DCProgressView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/DCProgressView;->updateProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/DCProgressView;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/DCProgressView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/DCProgressView$2;->this$0:Lcom/dcloud/android/widget/DCProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/DCProgressView$2;->this$0:Lcom/dcloud/android/widget/DCProgressView;

    iget v1, v0, Lcom/dcloud/android/widget/DCProgressView;->webviewProgress:I

    iget v2, v0, Lcom/dcloud/android/widget/DCProgressView;->curProgress:I

    sub-int v3, v1, v2

    const/16 v4, 0xa

    div-int/2addr v3, v4

    const/4 v5, 0x1

    if-le v3, v4, :cond_0

    goto :goto_0

    :cond_0
    if-ge v3, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    add-int/2addr v2, v4

    .line 7
    iput v2, v0, Lcom/dcloud/android/widget/DCProgressView;->curProgress:I

    if-le v1, v2, :cond_2

    const-wide/16 v1, 0x5

    .line 9
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 10
    :cond_2
    iget v2, v0, Lcom/dcloud/android/widget/DCProgressView;->w:I

    if-lt v1, v2, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/dcloud/android/widget/DCProgressView;->fadeDisappear()V

    .line 13
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/dcloud/android/widget/DCProgressView$2;->this$0:Lcom/dcloud/android/widget/DCProgressView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
